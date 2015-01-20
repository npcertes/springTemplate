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
	<title>测试数据显示的页面</title>
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
	<div id="wrapper" style="padding:0px;">
			<div id="blog">
			<!-- PAGE TITLE -->
			<header id="page-title"> 
				<div class="container">
					<h1>添加数据到数据库里面</h1>
					<ul class="breadcrumb">
						<li><a href="<c:url value="index.htm"/>">首页</a></li>
						<li class="active">联系我们</li>
					</ul>
				</div>
			</header>
				<section id="contact" class="container">
					<div class="row">
							<!-- FORM -->
							<div class="col-md-8">
		
								<h3>图书信息 </h3>
		
								<form class="white-row" action="<c:url value="/test/addLibInfo.htm" />" method="post">
									<c:if test="${success}">
										<div id="success" class="alert alert-success">
											<i class="fa fa-check-circle"></i> 
											发送成功
									    </div>
									</c:if>
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label>图书名称</label>
												<input type="text" value="" maxlength="100" class="form-control" name="bookName" id="bookName">
											</div>
											<div class="col-md-6">
												<label>图书作者</label>
												<input type="text" value="" maxlength="100" class="form-control" name="bookAuthor" id="bookAuthor">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label>图书出版社</label>
												<input type="text" value="" maxlength="100" class="form-control" name="bookPress" id="bookPress">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label>图书关键字</label>
												<input type="text" value="" maxlength="100" class="form-control" name="bookKeyword" id="bookKeyword">
											</div>
											<div class="col-md-6">
												<label>购入数量</label>
												<input type="text" value="" maxlength="100" class="form-control" name="bookNumber" id="bookNumber">
											</div>
										</div>
									</div>		
								</div>
								<div class="row">
									<div class="col-md-12">
										<input id="send" type="submit" value="提交图书信息" class="btn btn-primary btn-lg">
									</div>
								</div>
								</form>							
							</div>
							<!-- /FORM -->
						</div>			
				</section>					
			</div>
		</div>	
</body>
	
</html>