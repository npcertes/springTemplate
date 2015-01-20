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
	<%@include file="common/head.jsp" %>
<%--
	<jsp:forward page="/WEB-INF/views/portal/test/test.jsp"></jsp:forward>
--%>
    <jsp:forward page="/WEB-INF/views/portal/test/bootstraptest.jsp"></jsp:forward>
</body>

	
</html>
