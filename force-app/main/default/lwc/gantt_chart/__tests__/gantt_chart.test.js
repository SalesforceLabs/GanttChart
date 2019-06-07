// import { createElement } from 'lwc';
import LwcGanttChart from 'c/gantt_chart';

jest.mock('@salesforce/apex', () => {
    return {
        refreshApex: jest.fn()
    }
}, { virtual: true });

jest.mock('lightning/platformResourceLoader', () => {
    return {
        loadScript: function () {
            return new Promise((resolve) => {
                global.moment = function() {
                    return {
                        "day": function() {
                            return this;
                        },
                        "toDate": function() {
                            return this;
                        },
                        "utc": function() {
                            return this;
                        },
                        "valueOf": function() {
                            return 0;
                        },
                        "utfOffset": function() {
                            return 0;
                        },
                        "toLocaleDateString": function() {
                            return '1';
                        }
                    };
                };

                resolve();
            });
        }
    }
}, { virtual: true });

afterEach(() => {
    while (document.body.firstChild) {
        document.body.removeChild(document.body.firstChild);
    }
});

describe('ganttChart init', () => {
    it('displays expected header text', () => {
        let startDate = new Date();
        startDate.setHours(0, 0, 0, 0);
        startDate.setDate(startDate.getDate() - startDate.getDay());
        const expectedStartDate = startDate;
        
        let endDate = new Date(startDate);
        endDate.setDate(endDate.getDate() + 7*10-1);
        const expectedEndDate = endDate;
        
        const expectedHeader = expectedStartDate.toLocaleDateString() + '-' + expectedEndDate.toLocaleDateString();

        const element = createElement('c-gantt-chart', { is: LwcGanttChart });
        document.body.appendChild(element);

        return Promise.resolve().then(() => {
            const header = element.shadowRoot.querySelector('h1');
            expect(header.textContent).toBe(expectedHeader);
        });
    });
});

// describe('click timeslot', () => {
//     const element = createElement('c-gantt-chart', { is: LwcGanttChart });

//     document.body.appendChild(element);

//     it('click', () => {
//         let timeslot = element.querySelector('.lwc-timeslots-container');
//     });      
// });