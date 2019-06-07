import { LightningElement, api, track } from 'lwc';

export default class GanttChartModal extends LightningElement {
    @track title;
    @track body;
    @track success = {
        variant: 'brand'
    };

    @api
    show() {
        this.template.querySelector('.lwc-modal').classList.remove('slds-hide');
    }
    @api
    hide() {
        this.template.querySelector('.lwc-modal').classList.add('slds-hide');
    }
}