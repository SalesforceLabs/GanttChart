import { LightningElement, api, track } from "lwc";
import { ShowToastEvent } from "lightning/platformShowToastEvent";

import getProjects from "@salesforce/apex/ganttChart.getProjects";
import saveAllocation from "@salesforce/apex/ganttChart.saveAllocation";
import deleteAllocation from "@salesforce/apex/ganttChart.deleteAllocation";

export default class GanttChartResource extends LightningElement {
  @api isResourceView; // resource page has different layout
  @api projectId; // used on project page for quick adding of allocations
  @api
  get resource() {
    return this._resource;
  }
  set resource(_resource) {
    this._resource = _resource;
    this.setProjects();
  }

  // dates
  @api startDate;
  @api endDate;
  @api dateIncrement;

  @api
  refreshDates(startDate, endDate, dateIncrement) {
    if (startDate && endDate && dateIncrement) {
      let times = [];
      let today = new Date();
      today.setHours(0, 0, 0, 0);
      today = today.getTime();

      for (
        let date = new Date(startDate);
        date <= endDate;
        date.setDate(date.getDate() + dateIncrement)
      ) {
        let time = {
          class: "slds-col lwc-timeslot",
          start: date.getTime()
        };

        if (dateIncrement > 1) {
          let end = new Date(date);
          end.setDate(end.getDate() + dateIncrement - 1);
          time.end = end.getTime();
        } else {
          time.end = date.getTime();

          if (times.length % 7 === 6) {
            time.class += " lwc-is-week-end";
          }
        }

        if (today >= time.start && today <= time.end) {
          time.class += " lwc-is-today";
        }

        times.push(time);
      }

      this.times = times;
      this.startDate = startDate;
      this.endDate = endDate;
      this.dateIncrement = dateIncrement;
      this.setProjects();
    }
  }

  // used by parent level window
  @api
  closeAllocationMenu() {
    if (this.menuData.open) {
      this.menuData.show = true;
      this.menuData.open = false;
    } else {
      this.menuData = {
        show: false,
        open: false
      };
    }
  }

  // modal data
  @track addAllocationData = {};
  @track editAllocationData = {};

  @track menuData = {
    open: false,
    show: false,
    style: ""
  };

  @track projects = [];

  effortOptions = [
    {
      label: "Low",
      value: "Low"
    },
    {
      label: "Medium",
      value: "Medium"
    },
    {
      label: "High",
      value: "High"
    }
  ];
  statusOptions = [
    {
      label: "Active",
      value: "Active"
    },
    {
      label: "Hold",
      value: "Hold"
    }
  ];

  connectedCallback() {
    this.refreshDates(this.startDate, this.endDate, this.dateIncrement);
  }

  // calculate allocation classes
  calcClass(allocation) {
    let classes = ["slds-is-absolute", "lwc-allocation"];

    switch (allocation.Status__c) {
      case "Unavailable":
        classes.push("unavailable");
        break;
      case "Hold":
        classes.push("hold");
        break;
      default:
        break;
    }

    if ("Unavailable" !== allocation.Status__c) {
      switch (allocation.Effort__c) {
        case "Low":
          classes.push("low-effort");
          break;
        case "Medium":
          classes.push("medium-effort");
          break;
        case "High":
          classes.push("high-effort");
          break;
        default:
          break;
      }
    }

    return classes.join(" ");
  }

  // calculate allocation positions/styles
  calcStyle(allocation) {
    if (!this.times) {
      return;
    }

    const totalSlots = this.times.length;
    let styles = [
      "left: " + (allocation.left / totalSlots) * 100 + "%",
      "right: " +
        ((totalSlots - (allocation.right + 1)) / totalSlots) * 100 +
        "%"
    ];

    if ("Unavailable" !== allocation.Status__c) {
      const backgroundColor = allocation.color;
      const colorMap = {
        Blue: "#1589EE",
        Green: "#4AAD59",
        Red: "#E52D34",
        Turqoise: "#0DBCB9",
        Navy: "#052F5F",
        Orange: "#E56532",
        Purple: "#62548E",
        Pink: "#CA7CCE",
        Brown: "#823E17",
        Lime: "#7CCC47",
        Gold: "#FCAF32"
      };
      styles.push("background-color: " + colorMap[backgroundColor]);
    }

    if (!isNaN(this.dragInfo.startIndex)) {
      styles.push("pointer-events: none");
      styles.push("transition: left ease 250ms, right ease 250ms");
    } else {
      styles.push("pointer-events: auto");
      styles.push("transition: none");
    }

    return styles.join("; ");
  }

  // calculate allocation label position
  calcLabelStyle(allocation) {
    if (!this.times) {
      return;
    }

    const totalSlots = this.times.length;
    let left =
      allocation.left / totalSlots < 0 ? 0 : allocation.left / totalSlots;
    let right =
      (totalSlots - (allocation.right + 1)) / totalSlots < 0
        ? 0
        : (totalSlots - (allocation.right + 1)) / totalSlots;
    let styles = [
      "left: calc(" + left * 100 + "% + 15px)",
      "right: calc(" + right * 100 + "% + 30px)"
    ];

    if (!isNaN(this.dragInfo.startIndex)) {
      styles.push("transition: left ease 250ms, right ease 250ms");
    } else {
      styles.push("transition: none");
    }

    return styles.join("; ");
  }

  setProjects() {
    let self = this;
    self.projects = [];

    Object.keys(self._resource.allocationsByProject).forEach(projectId => {
      let project = {
        id: projectId,
        allocations: []
      };

      self.resource.allocationsByProject[projectId].forEach(allocation => {
        allocation.class = self.calcClass(allocation);
        allocation.style = self.calcStyle(allocation);
        allocation.labelStyle = self.calcLabelStyle(allocation);

        project.allocations.push(allocation);
      });

      self.projects.push(project);
    });
  }

  handleTimeslotClick(event) {
    const start = new Date(parseInt(event.currentTarget.dataset.start, 10));
    const end = new Date(parseInt(event.currentTarget.dataset.end, 10));
    const startUTC = start.getTime() + start.getTimezoneOffset() * 60 * 1000;
    const endUTC = end.getTime() + end.getTimezoneOffset() * 60 * 1000;

    if (this.projectId) {
      this._saveAllocation({
        startDate: startUTC + "",
        endDate: endUTC + ""
      });
    } else {
      let self = this;
      getProjects()
        .then(projects => {
          projects = projects.map(project => {
            return {
              value: project.Id,
              label: project.Name
            };
          });

          projects.unshift({
            value: "Unavailable",
            label: "Unavailable"
          });

          self.addAllocationData = {
            projects: projects,
            startDate: startUTC + "",
            endDate: endUTC + "",
            disabled: true
          };

          self.template.querySelector(".add-allocation-modal").show();
        })
        .catch(error => {
          this.dispatchEvent(
            new ShowToastEvent({
              message: error.body.message,
              variant: "error"
            })
          );
        });
    }
  }

  handleAddAllocationDataChange(event) {
    this.addAllocationData[event.target.dataset.field] = event.target.value;

    if (!this.addAllocationData.projectId) {
      this.addAllocationData.disabled = true;
    } else {
      this.addAllocationData.disabled = false;
    }
  }

  addAllocationModalSuccess() {
    if ("Unavailable" === this.addAllocationData.projectId) {
      this.addAllocationData.projectId = null;
      this.addAllocationData.status = "Unavailable";
    }

    this._saveAllocation({
      projectId: this.addAllocationData.projectId,
      status: this.addAllocationData.status,
      startDate: this.addAllocationData.startDate,
      endDate: this.addAllocationData.endDate
    })
      .then(() => {
        this.addAllocationData = {};
        this.template.querySelector(".add-allocation-modal").hide();
      })
      .catch(error => {
        this.dispatchEvent(
          new ShowToastEvent({
            message: error.body.message,
            variant: "error"
          })
        );
      });
  }

  _saveAllocation(allocation) {
    if (
      null == allocation.projectId &&
      null != this.projectId &&
      !allocation.status
    ) {
      allocation.projectId = this.projectId;
    }

    if (null == allocation.resourceId) {
      allocation.resourceId = this.resource.Id;
    }

    return saveAllocation(allocation)
      .then(() => {
        // send refresh to top
        this.dispatchEvent(
          new CustomEvent("refresh", {
            bubbles: true,
            composed: true
          })
        );
      })
      .catch(error => {
        this.dispatchEvent(
          new ShowToastEvent({
            message: error.body.message,
            variant: "error"
          })
        );
      });
  }

  /*** Drag/Drop ***/
  dragInfo = {};
  handleDragStart(event) {
    let container = this.template.querySelector(
      "." + event.currentTarget.dataset.id + " .lwc-allocation"
    );
    this.dragInfo.projectIndex = container.dataset.project;
    this.dragInfo.allocationIndex = container.dataset.allocation;
    this.dragInfo.newAllocation = this.projects[
      container.dataset.project
    ].allocations[container.dataset.allocation];

    // hide drag image
    container.style.opacity = 0;
    setTimeout(function() {
      container.style.pointerEvents = "none";
    }, 0);
  }

  handleLeftDragStart(event) {
    this.dragInfo.direction = "left";
    this.handleDragStart(event);
  }

  handleRightDragStart(event) {
    this.dragInfo.direction = "right";
    this.handleDragStart(event);
  }

  handleDragEnd(event) {
    event.preventDefault();

    const projectIndex = this.dragInfo.projectIndex;
    const allocationIndex = this.dragInfo.allocationIndex;
    const allocation = this.dragInfo.newAllocation;

    this.projects = JSON.parse(JSON.stringify(this.projects));
    this.projects[projectIndex].allocations[allocationIndex] = allocation;

    let startDate = new Date(allocation.Start_Date__c + "T00:00:00");
    let endDate = new Date(allocation.End_Date__c + "T00:00:00");

    this._saveAllocation({
      allocationId: allocation.Id,
      startDate:
        startDate.getTime() + startDate.getTimezoneOffset() * 60 * 1000 + "",
      endDate: endDate.getTime() + endDate.getTimezoneOffset() * 60 * 1000 + ""
    });

    this.dragInfo = {};
    this.template.querySelector(
      "." + allocation.Id + " .lwc-allocation"
    ).style.pointerEvents = "auto";
  }

  handleDragEnter(event) {
    const projectIndex = this.dragInfo.projectIndex;
    const allocationIndex = this.dragInfo.allocationIndex;
    const direction = this.dragInfo.direction;
    const start = new Date(parseInt(event.currentTarget.dataset.start, 10));
    const end = new Date(parseInt(event.currentTarget.dataset.end, 10));
    const index = parseInt(event.currentTarget.dataset.index, 10);

    if (isNaN(this.dragInfo.startIndex)) {
      this.dragInfo.startIndex = index;
    }

    let allocation = JSON.parse(
      JSON.stringify(this.projects[projectIndex].allocations[allocationIndex])
    );

    switch (direction) {
      case "left":
        if (index <= allocation.right) {
          allocation.Start_Date__c = start.toJSON().substr(0, 10);
          allocation.left = index;
        } else {
          allocation = this.dragInfo.newAllocation;
        }
        break;
      case "right":
        if (index >= allocation.left) {
          allocation.End_Date__c = end.toJSON().substr(0, 10);
          allocation.right = index;
        } else {
          allocation = this.dragInfo.newAllocation;
        }
        break;
      default:
        let deltaIndex = index - this.dragInfo.startIndex;
        let firstSlot = this.times[0];
        let startDate = new Date(firstSlot.start);
        let endDate = new Date(firstSlot.end);

        allocation.left = allocation.left + deltaIndex;
        allocation.right = allocation.right + deltaIndex;

        startDate.setDate(
          startDate.getDate() + allocation.left * this.dateIncrement
        );
        endDate.setDate(
          endDate.getDate() + allocation.right * this.dateIncrement
        );

        allocation.Start_Date__c = startDate.toJSON().substr(0, 10);
        allocation.End_Date__c = endDate.toJSON().substr(0, 10);
    }

    this.dragInfo.newAllocation = allocation;
    this.template.querySelector(
      "." + allocation.Id + " .lwc-allocation"
    ).style = this.calcStyle(allocation);
    this.template.querySelector(
      "." + allocation.Id + " .lwc-allocation-label"
    ).style = this.calcLabelStyle(allocation);
  }
  /*** /Drag/Drop ***/

  openAllocationMenu(event) {
    let container = this.template.querySelector(
      "." + event.currentTarget.dataset.id + " .lwc-allocation"
    );
    let allocation = this.projects[container.dataset.project].allocations[
      container.dataset.allocation
    ];

    if (
      this.menuData.allocation &&
      this.menuData.allocation.Id === allocation.Id
    ) {
      this.closeAllocationMenu();
    } else {
      this.menuData.open = true;

      let projectHeight = this.template
        .querySelector(".project-container")
        .getBoundingClientRect().height;
      let allocationHeight = this.template
        .querySelector(".lwc-allocation")
        .getBoundingClientRect().height;
      let totalSlots = this.times.length;
      let rightEdge =
        ((totalSlots - (allocation.right + 1)) / totalSlots) * 100 + "%";

      let topEdge =
        projectHeight * container.dataset.project + allocationHeight;

      this.menuData.allocation = Object.assign({}, allocation);
      this.menuData.style =
        "top: " + topEdge + "px; right: " + rightEdge + "; left: unset";
    }
  }

  handleModalEditClick(event) {
    this.editAllocationData = {
      resourceName: this.resource.Name,
      projectName: this.menuData.allocation.projectName,
      id: this.menuData.allocation.Id,
      startDate: this.menuData.allocation.Start_Date__c,
      endDate: this.menuData.allocation.End_Date__c,
      effort: this.menuData.allocation.Effort__c,
      status: this.menuData.allocation.Status__c,
      isFullEdit: this.menuData.allocation.Status__c !== "Unavailable",
      disabled: false
    };
    this.template.querySelector(".edit-allocation-modal").show();

    this.closeAllocationMenu();
  }

  handleEditAllocationDataChange(event) {
    this.editAllocationData[event.target.dataset.field] = event.target.value;

    if (
      !this.editAllocationData.startDate ||
      !this.editAllocationData.endDate
    ) {
      this.editAllocationData.disabled = true;
    } else {
      this.editAllocationData.disabled = false;
    }

    this.editAllocationData.isFullEdit =
      this.editAllocationData.Status__c !== "Unavailable";
  }

  editAllocationModalSuccess() {
    const startDate = new Date(this.editAllocationData.startDate + "T00:00:00");
    const endDate = new Date(this.editAllocationData.endDate + "T00:00:00");

    this._saveAllocation({
      allocationId: this.editAllocationData.id,
      projectId: this.editAllocationData.projectId,
      startDate:
        startDate.getTime() + startDate.getTimezoneOffset() * 60 * 1000 + "",
      endDate:
        endDate.getTime() + startDate.getTimezoneOffset() * 60 * 1000 + "",
      effort: this.editAllocationData.effort,
      status: this.editAllocationData.status
    })
      .then(() => {
        this.editAllocationData = {};
        this.template.querySelector(".edit-allocation-modal").hide();
      })
      .catch(error => {
        this.dispatchEvent(
          new ShowToastEvent({
            message: error.body.message,
            variant: "error"
          })
        );
      });
  }

  handleMenuDeleteClick(event) {
    this.editAllocationData = {
      id: this.menuData.allocation.Id
    };
    this.template.querySelector(".delete-modal").show();
    this.closeAllocationMenu();
  }

  handleMenuDeleteSuccess() {
    deleteAllocation({
      allocationId: this.editAllocationData.id
    })
      .then(() => {
        this.template.querySelector(".delete-modal").hide();
        this.dispatchEvent(
          new CustomEvent("refresh", {
            bubbles: true,
            composed: true
          })
        );
      })
      .catch(error => {
        this.dispatchEvent(
          new ShowToastEvent({
            message: error.body.message,
            variant: "error"
          })
        );
      });
  }
}
