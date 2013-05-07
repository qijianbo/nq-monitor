<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>杀毒监控</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" type="text/javascript"></script>
    <script src="js/highcharts/highcharts.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('#container').highcharts({
                chart: {
                    type: 'line'
                },
                title: {
                    text: 'Fruit Consumption'
                },
                xAxis: {
                    categories: ['Apples', 'Bananas', 'Oranges']
                },
                yAxis: {
                    title: {
                        text: 'Fruit eaten'
                    }
                },
                series: [{
                    name: 'Jane',
                    data: [1, 0, 4]
                }, {
                    name: 'John',
                    data: [5, 7, 3]
                }]
            });
        });
    </script>
</head>
<body>
<div id="container" style="width:100%; height:400px;"></div>
</body>
</html>