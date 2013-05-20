$(document).ready(function() {
    Highcharts.setOptions({
        global: {
            useUTC: false
        }
    });

    var chart =new Highcharts.Chart({
        chart: {
            renderTo:"virusUpdateRate",
            defaultSeriesType:'areaspline',
            animation: Highcharts.svg, // don't animate in old IE
            marginRight: 5,
            events: {
                load: function() {
                    var series = this.series[0],indexNum = 0;
                    setInterval(function() {
                        var elTime = (new Date()).getTime()+indexNum*5*60*1000
                        indexNum++;
                        series.addPoint([
                            elTime,
                            getRandomDate()
                        ], true, true);
                    }, 1000);
                }
            }
        },
        title: {
            text: '海外病毒库更新成功率'
        },
        tooltip: {
            formatter: function() {
                return Highcharts.dateFormat('%Y-%m-%d %H:%M', this.x)+"<br/>"+'<strong>'+ this.series.name +'</strong>: '+ this.y +'%';
            }
        },
        plotOptions: {
            areaspline: {
                fillColor: {
                    linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1},
                    stops: [
                        [0, Highcharts.getOptions().colors[0]],
                        [1, Highcharts.Color(Highcharts.getOptions().colors[0]).setOpacity(0).get('rgba')]
                    ]
                },
                lineWidth: 1,
                marker: {
                    enabled: false
                },
                shadow: false,
                states: {
                    hover: {
                        lineWidth: 1
                    }
                },
                threshold: null
            }
        },
        xAxis: {
            title:"时间",
            type: 'datetime',
            labels: {
                formatter: function() {
                    return Highcharts.dateFormat('%H', this.value);
                }
            },
            tickPixelInterval: 30
        },
        yAxis: {
            lineWidth: 1,
            title: {
                text: '成功率'
            },
            type: 'linear',
            min:0,
            labels: {
                formatter: function() {
                    return this.value +'%';
                },
                style: {
                }
            }
        },
        legend: {
            enabled: false
        },
        exporting: {
            enabled: false
        },
        series: [{
            name:'成功率',
            data: (function() {
                var data = [],dateTime=(new Date()),i,elTime;
                dateTime.setMinutes(parseInt(new Date().getMinutes()/5)*5,0,0)
                for (i = 24*12; i >= 0; i--) {
                    elTime =(new Date(dateTime-i*5*60*1000));
                    data.push({
                        x: elTime,
                        y: getRandomDate(),
                        name:elTime.Format('yyyy-MM-dd HH:mm')
                    });
                }
                return data;
            })()
        }]
    });
    loadData(chart);
//    alert(chart.series[0].name)
});

function getRandomDate(){
    return parseInt(Math.random()*(10000-8000+1)+8000)/100
}

Date.prototype.Format = function (fmt) { //author: meizz
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "H+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

function loadData(chart){

}
function temp(){
    $.getJSON("",
        function(data){
            $.each(data.items, function(i,item){
                $("<img/>").attr("src",
                    item.media.m).appendTo("#images");
                if ( i == 3 ) return false;
            });
        });
}


