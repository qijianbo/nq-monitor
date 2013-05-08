<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <jsp:include page="layout/head.jsp"/>
    <script type="text/javascript" src="js/highcharts/highcharts.js"></script>
    <script type="text/javascript" src="js/index.js"></script>

</head>
<body>
<jsp:include page="layout/banner.jsp"/>
 <!-- end of header bar -->
<jsp:include page="layout/nav.jsp"/>
<!-- end of sidebar -->

<section id="main" class="column">

<h4 class="alert_info">Welcome to the free MediaLoot admin panel template, this could be an informative message.</h4>

<article class="module width_full">
    <header><h3>[2013年5月8日 00点]病毒库更新成功率</h3></header>
    <div class="module_content">
        <article class="stats_graph">
            <div id="virusUpdateRate" width="520" height="140"></div>
            <%--<img src="http://chart.apis.google.com/chart?chxr=0,0,3000&chxt=y&chs=520x140&cht=lc&chco=76A4FB,80C65A&chd=s:Tdjpsvyvttmiihgmnrst,OTbdcfhhggcTUTTUadfk&chls=2|2&chma=40,20,20,30" width="520" height="140" alt="" />--%>
        </article>

        <article class="stats_overview">
            <div class="overview_today">
                <p class="overview_day">Last Hour</p>
                <p class="overview_count">1,876</p>
                <p class="overview_type">次</p>
                <p class="overview_count">100%</p>
                <p class="overview_type">成功率</p>
            </div>
            <div class="overview_previous">
                <p class="overview_day">Current</p>
                <p class="overview_count">1,646</p>
                <p class="overview_type">次</p>
                <p class="overview_count">99.4%</p>
                <p class="overview_type">成功率</p>
            </div>
        </article>
        <div class="clear"></div>
    </div>
</article><!-- end of stats article -->

<article class="module width_3_quarter">
    <header><h3 class="tabs_involved">各时段病毒库更新成功率统计</h3>
        <%--<ul class="tabs">--%>
            <%--<li><a href="#tab1">Posts</a></li>--%>
            <%--<li><a href="#tab2">Comments</a></li>--%>
        <%--</ul>--%>
    </header>

    <div class="tab_container">
        <div id="tab1" class="tab_content">
            <table class="tablesorter" cellspacing="0">
                <thead>
                <tr>
                    <th>时间</th>
                    <th>需要更新</th>
                    <th>更新成功</th>
                    <th>成功率</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>2013-05-08 14</td>
                    <td>981</td>
                    <td>900</td>
                    <td>91.74%</td>
                </tr>
                <tr>
                    <td>2013-05-08 13</td>
                    <td>981</td>
                    <td>900</td>
                    <td>91.74%</td>
                </tr>
                <tr>
                    <td>2013-05-08 12</td>
                    <td>981</td>
                    <td>900</td>
                    <td>91.74%</td>
                </tr>
                <tr>
                    <td>2013-05-08 11</td>
                    <td>981</td>
                    <td>900</td>
                    <td>91.74%</td>
                </tr>
                <tr>
                    <td>2013-05-08 10</td>
                    <td>981</td>
                    <td>900</td>
                    <td>91.74%</td>
                </tr>
                <tr>
                    <td>2013-05-08 09</td>
                    <td>981</td>
                    <td>900</td>
                    <td>91.74%</td>
                </tr>
                <tr>
                    <td>2013-05-08 08</td>
                    <td>981</td>
                    <td>900</td>
                    <td>91.74%</td>
                </tr>
                </tbody>
            </table>
        </div><!-- end of #tab1 -->
    </div><!-- end of .tab_container -->

</article><!-- end of content manager article -->

<article class="module width_quarter">
    <header><h3 class="tabs_involved">实时成功统计</h3>
    </header>
    <div class="message_list">
        <div class="module_content">
            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                <p><strong>John Doe</strong></p></div>
            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                <p><strong>John Doe</strong></p></div>
            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                <p><strong>John Doe</strong></p></div>
            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                <p><strong>John Doe</strong></p></div>
            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                <p><strong>John Doe</strong></p></div>
        </div>
    </div>
    <footer style="text-align: center">
        <input type="submit" value="滚动" class="alt_btn" style="width: 90%;margin:5px">
    </footer>
</article><!-- end of messages article -->

<div class="clear"></div>
<div class="spacer"></div>
</section>


</body>

</html>