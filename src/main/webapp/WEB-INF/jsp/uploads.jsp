<%-- 
    Document   : uploads
    Created on : 13 Sep, 2017, 8:15:34 PM
    Author     : Dhaval
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<ui:templete>

    <jsp:attribute name="head_area">

    </jsp:attribute>

    <jsp:attribute name="body_area">
	    <c:choose>
	    <c:when test='${empty(user)}'>
        <section class="dashboard-counts no-padding-bottom center">
            <div class="container-fluid">
                <div class="row bg-white has-shadow">
                	<div class="col-xl-12" style="text-align:center">
	                <p style="font-size: 20px; color: #ed3424">你需要先登录</p>
			<img src="https://cdn.jsdelivr.net/gh/wimdaw/Img/61631672412c42fe4d323733eccff47b.png" title="使用Google登录" onclick="location.href = '${pageContext.request.contextPath}/api/oauth/google/redirect'"><br><br><br>
			<iframe src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-5435553179213419&output=html&h=250&slotname=1921571160&w=300&fwr_io=true&fwrn=4&fwrnh=100&format=300x250&url=https%3A%2F%2Fwww.tricksbystg.org" height="310" width="100%" frameborder="0"></iframe>
                    </div>
                </div>
            </div>
        </section>
		</c:when>
        <c:otherwise>
        <!-- Page Header-->
        <header class="page-header">
            <div class="container-fluid">
                <h2 class="no-margin-bottom">仪表盘</h2>
            </div>
        </header>

        <ul class="breadcrumb">
            <div class="container-fluid">
                <li class="breadcrumb-item"><a href="/">主页</a></li>
                <li class="breadcrumb-item active">上传中/已上传</li>
            </div>
        </ul>
<br>
<center><iframe src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-5435553179213419&output=html&h=250&slotname=1921571160&w=300&fwr_io=true&fwrn=4&fwrnh=100&format=300x250&url=https%3A%2F%2Fwww.tricksbystg.org" height="310" width="100%" frameborder="0"></iframe></center>
	</c:otherwise>
	</c:choose>
    </jsp:attribute>
    <jsp:attribute name="javascript">
        <script src="https://cdn.jsdelivr.net/gh/ParveenBhadooOfficial/Bhadoo-Cloud-Drive/src/main/resources/static/js/uploads.js"></script>
    </jsp:attribute>
</ui:templete>
