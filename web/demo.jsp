<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <jsp:include page="layout/head.jsp"/>
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
        <ul class="tabs">
        <li><a href="#tab1">Posts</a></li>
        <li><a href="#tab2">Comments</a></li>
        </ul>
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

        <div id="tab2" class="tab_content">
            <table class="tablesorter" cellspacing="0">
                <thead>
                <tr>
                    <th></th>
                    <th>Comment</th>
                    <th>Posted by</th>
                    <th>Posted On</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Lorem Ipsum Dolor Sit Amet</td>
                    <td>Mark Corrigan</td>
                    <td>5th April 2011</td>
                    <td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Ipsum Lorem Dolor Sit Amet</td>
                    <td>Jeremy Usbourne</td>
                    <td>6th April 2011</td>
                    <td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Sit Amet Dolor Ipsum</td>
                    <td>Super Hans</td>
                    <td>10th April 2011</td>
                    <td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Dolor Lorem Amet</td>
                    <td>Alan Johnson</td>
                    <td>16th April 2011</td>
                    <td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Dolor Lorem Amet</td>
                    <td>Dobby</td>
                    <td>16th April 2011</td>
                    <td><input type="image" src="images/icn_edit.png" title="Edit"><input type="image" src="images/icn_trash.png" title="Trash"></td>
                </tr>
                </tbody>
            </table>

        </div><!-- end of #tab2 -->

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

<article class="module width_full">
    <header><h3>Post New Article</h3></header>
    <div class="module_content">
        <fieldset>
            <label>Post Title</label>
            <input type="text">
        </fieldset>
        <fieldset>
            <label>Content</label>
            <textarea rows="12"></textarea>
        </fieldset>
        <fieldset style="width:48%; float:left; margin-right: 3%;"> <!-- to make two field float next to one another, adjust values accordingly -->
            <label>Category</label>
            <select style="width:92%;">
                <option>Articles</option>
                <option>Tutorials</option>
                <option>Freebies</option>
            </select>
        </fieldset>
        <fieldset style="width:48%; float:left;"> <!-- to make two field float next to one another, adjust values accordingly -->
            <label>Tags</label>
            <input type="text" style="width:92%;">
        </fieldset><div class="clear"></div>
    </div>
    <footer>
        <div class="submit_link">
            <select>
                <option>Draft</option>
                <option>Published</option>
            </select>
            <input type="submit" value="Publish" class="alt_btn">
            <input type="submit" value="Reset">
        </div>
    </footer>
</article><!-- end of post new article -->

<h4 class="alert_warning">A Warning Alert</h4>

<h4 class="alert_error">An Error Message</h4>

<h4 class="alert_success">A Success Message</h4>

<article class="module width_full">
    <header><h3>Basic Styles</h3></header>
    <div class="module_content">
        <h1>Header 1</h1>
        <h2>Header 2</h2>
        <h3>Header 3</h3>
        <h4>Header 4</h4>
        <p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras mattis consectetur purus sit amet fermentum. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>

        <p>Donec id elit non mi porta <a href="#">link text</a> gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>

        <ul>
            <li>Donec ullamcorper nulla non metus auctor fringilla. </li>
            <li>Cras mattis consectetur purus sit amet fermentum.</li>
            <li>Donec ullamcorper nulla non metus auctor fringilla. </li>
            <li>Cras mattis consectetur purus sit amet fermentum.</li>
        </ul>
    </div>
</article><!-- end of styles article -->
<div class="spacer"></div>
</section>


</body>

</html>