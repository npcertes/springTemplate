<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
	<meta name="Author" content="DEEJ" />    
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>首页|文化产业研究院</title>
	<link rel="shortcut icon" href="<c:url value='/static/img/titlelogo.ico'/> "/>
	<link rel="bookmark" href="<c:url value='/static/img/titlelogo.ico'/>"/> 
    <link href="<c:url value="/static/assets/css/layout.css" /> " rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<c:url value='/static/css/font-awesome.min.css' />">
    
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/static/css/bootstrap-theme.min.css' />">

   
</head>
<body>
	
<!--导航栏-->	
	<%@include file="../common/head.jsp" %>
	<h1><a href="<c:url value="/CulturalDev/WEB-INF/views/portal/test/listLibInfo.jsp" />">测试页面</a></h1>
	<%--
	<c:forEach item="${list}" var="libTest">
	${libTest}
	</c:forEach> --%>
</body>

	
</html>