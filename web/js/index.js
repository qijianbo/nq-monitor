$(document).ready(function() {
    $(document).ready(function() {
        Highcharts.setOptions({
            global: {
                useUTC: false
            }
        });

        var chart =new Highcharts.Chart({
            chart: {
                renderTo:"virusUpdateRate",
                defaultSeriesType:'spline',
                animation: Highcharts.svg, // don't animate in old IE
                marginRight: 5
            },
            title: {
                text: '海外病毒库更新成功率'
            },
            tooltip: {
                formatter: function() {
                    return Highcharts.dateFormat('%Y-%m-%d %H:00', this.x) +'<br/>'+
                        '<b>'+ this.series.name +'</b>:'+
                        Highcharts.numberFormat(this.y, 2)+"%";
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
                title: {
                    text: '成功率'
                },
                min:0
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
                    var data = [],
                        dateTime = (new Date()).getTime(),
                        i,el,elTime;
                    for (i = 24; i > 0; i--) {
                        elTime =(new Date(dateTime-i*3600*1000));
                        el = {
                            x: elTime,
                            y: getRandomDate(),
                            name:elTime.Format('yyyy-MM-dd HH:00')
                        };
                        data.push(el);
//                        alert(el.x+","+el.y)
                    }
                    return data;
                })()
            }]
        });
    });
});

function getRandomDate(){
    return 100;
//    return parseInt(Math.random()*(100-80+1)+80)
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


