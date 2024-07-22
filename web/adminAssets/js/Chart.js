(function ($) {
    if ($('#chart').length > 0) {
        var chart;
        var chartOptions = {
            series: [{
                    name: 'Freelance Developers',
                    color: '#ff5b37',
                    data: []
                }, {
                    name: 'Projects',
                    color: '#ffb8a8',
                    data: []
                }, {
                    name: 'Job applications',
                    color: '#feb019',
                    data: []
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

        function initChart() {
            chart = new ApexCharts(document.querySelector("#chart"), chartOptions);
            chart.render();
        }

        function updateChart(data) {
            console.log("Updating chart with data:", data);
            chartOptions.series[0].data = data.map(item => item.freelancers);
            chartOptions.series[1].data = data.map(item => item.projects);
            chartOptions.series[2].data = data.map(item => item.applications);

            if (chart) {
                chart.updateOptions(chartOptions);
            } else {
                initChart();
            }
        }

        function initYearSelection() {
            var currentYear = new Date().getFullYear();
            var yearList = $('#yearList');
            var yearDropdown = $('#yearDropdown');

            // Add options for the last 5 years
            for (var i = 0; i < 5; i++) {
                var year = currentYear - i;
                yearList.append(`<li><a class="dropdown-item" href="#" data-year="${year}">${year}</a></li>`);
            }

            yearList.on('click', 'a', function (e) {
                e.preventDefault();
                var selectedYear = $(this).data('year');
                yearDropdown.text(selectedYear);
                // Make AJAX call to update chart data
                updateChartData(selectedYear);
            });

            // Set default year and initialize chart
            yearDropdown.text(currentYear);
            updateChartData(currentYear);
        }

        function updateChartData(year) {
            $.ajax({
                url: 'GetChartData',
                method: 'GET',
                data: {year: year},
                dataType: 'json',
                success: function (response) {
                    updateChart(response);
                },
                error: function (xhr, status, error) {
                    console.error("Error fetching chart data:", error);
                }
            });
        }

        $(document).ready(function () {
            initYearSelection();
        });
    }
})(jQuery);