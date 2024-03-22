fetch('./data/data.json')
    .then(res => res.json())
    .then(data => {
        let years = [];
        let democrat_values = [];
        let republican_values = [];
        for (let year in data){
            years.push(year);
        }
        years.sort();
        for (let year of years){
            democrat_values.push(data[year]['DEMOCRAT']);
            republican_values.push(-data[year]['REPUBLICAN']);
        }
        let options = {
            series: [
                {
                    name: 'Republican',
                    data: republican_values,
                    style: {
                        color: '#97b6cd' // Text color for x-axis labels
                    }
                },
                {
                    name: 'Democrat',
                    data: democrat_values,
                    style: {
                        color: '#97b6cd' // Text color for x-axis labels
                    }
                }
            ],
            chart: {
                type: 'bar',
                height: 440,
                stacked: true
            },
            colors: ['#FF4560', '#008FFB'],
            plotOptions: {
                bar: {
                    horizontal: true,
                    barHeight: '80%',
                },
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                width: 1,
                colors: ["#fff"]
            },

            grid: {
                xaxis: {
                    lines: {
                        show: false
                    }
                }
            },
            yaxis: {
                min: -Math.max(-Math.min(...republican_values), Math.max(...democrat_values)) * 1.1,
                max: Math.max(-Math.min(...republican_values), Math.max(...democrat_values)) * 1.1,
                labels: {
                    style: {
                        colors: '#97b6cd' // Text color for y-axis labels
                    }
                }
            },
            tooltip: {
                shared: false,
                x: {
                    formatter: function (val) {
                        return val
                    }
                },
                y: {
                    formatter: function (val) {
                        return Math.abs(val)
                    }
                }
            },
            title: {
                text: 'Votes in all elections',
                style: {
                    color: '#97b6cd'
                },
                align: 'center'
            },
            xaxis: {
                categories: years,
                title: {
                    text: 'Votes',
                    style: {
                        color: '#97b6cd' // Text color for x-axis labels
                    }
                },
                labels: {
                    formatter: function (val) {
                        return Math.abs(Math.round(val))
                    },
                    style: {
                        colors: '#97b6cd' // Text color for x-axis labels
                    }
                }
            },
            legend: {
                labels: {
                    colors: '#97b6cd' // Text color for legend names
                }
            }
        };
        let chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();
    })