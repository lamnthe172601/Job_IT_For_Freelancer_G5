(function($) {
   if($('#chart').length > 0) {
        var options = {
            series: [{
                name: 'Freelance Developers',
                color: '#ff5b37',
                data: chartData.map(item => item.freelancers)
            }, {
                name: 'Projects',
                color: '#ffb8a8',
                data: chartData.map(item => item.projects)
            },{
                name: 'Job applications',
                color: '#feb019',
                data: chartData.map(item => item.applications)
            }],
            chart: {
                height: 335,
                type: 'area'
            },
            dataLabels: {
                enabled: false
            },
            stroke: {
                curve: 'smooth'
            },
            xaxis: {
                type: 'category',
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
            },
            tooltip: {
                x: {
                    format: 'MMM'
                },
            },
        };
        var chart = new ApexCharts(document.querySelector("#chart"), options);
        chart.render();
    }
})(jQuery);