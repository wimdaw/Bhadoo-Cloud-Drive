<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="ui" tagdir="/WEB-INF/tags" %>

<ui:templete>
    <jsp:attribute name="head_area"/>
    <jsp:attribute name="body_area">
        <section class="dashboard-counts no-padding-bottom center">
            <div class="container-fluid">
                <div class="row bg-white has-shadow">
                	<div class="col-xl-12" style="text-align:center">
	                    <c:choose>
	                        <c:when test='${empty(user)}'>
	                        <p style="font-size: 18px; color: black">欢迎使用小W云驱动上传程序</p>
				<p style="font-size: 15px; color: black">此网站没有注册服务和用户限制.</p> 
				<p style="font-size: 15px; color: black">一旦你使用Google登录，你可以上传任何文件从它的网址到你的Google云端硬盘.</p>
				<p style="font-size: 15px; color: black">请注意：本网站只支持直链上传.</p>
				<p style="font-size: 15px; color: black">我们不会保存您的任何数据，一旦服务器重新启动，身份验证代码也会从我们的数据库中清除.</p><br>
				<link rel='stylesheet' href='https://d33wubrfki0l68.cloudfront.net/css/ba9da532d588c7d5b6cc3fbc52d26da7538064c8/style.css'/>
				<canvas></canvas>
				<script type='text/javascript' src='https://d33wubrfki0l68.cloudfront.net/js/0332cdafb1bac19d815d6030f67ca9bdb56fe27a/script.js'></script>
	                        </c:when>
                        	<c:otherwise>	                         
                        		<p style="font-size: 20px; color: green">你好, <c:out value="${user.name}" default="Guest" />. </p>   
	                            <p style="font-size: 15px; color: green; word-wrap:break-word">祝贺你！您已成功登录您的Google账号: <c:out value="${user.email}"/>. </p>
                                 <button id="auth-btn" class="btn btn-link btn-responsive" style="font-size: larger;" onclick="location.href = '${pageContext.request.contextPath}/new_upload'">
                                     点击此处开始上传文件.
                                 </button><br>
					<iframe src="https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-5435553179213419&output=html&h=250&slotname=1921571160&w=300&fwr_io=true&fwrn=4&fwrnh=100&format=300x250&url=https%3A%2F%2Fwww.tricksbystg.org" height="310" width="100%" frameborder="0"></iframe>
	                        </c:otherwise>
	                    </c:choose>
                    </div>
                </div>
            </div>
        </section>
    </jsp:attribute>
</ui:templete>
