<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib prefix="page" uri="/WEB-INF/pager.tld"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta name="Author" content="DEEJ" />    
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>测试数据显示的页面</title>
	<link rel="shortcut icon" href="<c:url value='/static/img/titlelogo.ico'/> "/>
	<link rel="bookmark" href="<c:url value='/static/img/titlelogo.ico'/>"/> 
    <link href="<c:url value="/static/assets/css/layout.css" /> " rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<c:url value='/static/css/font-awesome.min.css' />">
    
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap-theme.min.css' />">
    <!-- 表格排序插件 -->
    <link href="<c:url value='/static/css/bootstrap-sortable.css' />" rel="stylesheet" media="screen">
	<script type="text/javascript" src="<c:url value='/static/js/moment.min.js'/> "></script>
	<script type="text/javascript" src="<c:url value='/static/js/bootstrap-sortable.js'/> "></script>
   
</head>
<body>
	
<!--导航栏-->	
	<%@include file="../common/head.jsp" %>
	<header id="page-title">
		<div class="container">
			<h2>显示数据库里面的内容</h2>
			<ul class="breadcrumb">
				<li><a href="<c:url value="index.htm"/>">首页</a></li>
				<li class="active">联系我们</li>
			</ul>
		</div>
	</header>

	<table id="listForm" class="table table-striped table-hover sortable">
		<thead>  
	        <tr>  
	          <th data-field="bookName" data-align="center" data-sortable="true">书名</th>  
	          <th data-field="bookPress" data-align="center" data-sortable="true">图书出版社</th>
	          <th data-field="bookPress" data-align="center" data-sortable="true">作者</th>
	          <th data-field="bookPress" data-align="center" data-sortable="true">关键字</th>
	        </tr>  
      	</thead>
      	<tbody> 
			<c:forEach items="${list}" var="libTest">
			<tr>
				<td>${libTest.bookName}</td>
			    <td>${libTest.bookPress}</td>
			    <td>${libTest.bookAuthor}</td>
			    <td>${libTest.bookKeyword}</td>
			</tr>
			</c:forEach> 
	  	</tbody>	
	</table>
	
	<!-- PAGINATION -->
		<div class="row">

			<div class="col-md-6 text-left responsive-text-center">
				<p class="hidden-xs pull-left nomargin padding30">共  <strong>${pm.pageCount}</strong> 页 <strong>${pm.count}</strong> 条</p>
			</div>

			<div class="col-md-6 text-right" background="green">
				<page:Pager pageSize="${pm.pageSize}" baseUrl="/test/listLibInfo" totalPage="${pm.pageCount}" totalCount="${pm.count}" curPage="${pm.pageNo}" formId="listForm" />
			</div>

		</div>
	<!-- /PAGINATION -->

</body>
	
</html>