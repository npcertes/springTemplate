<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="page" uri="/WEB-INF/pager.tld"%>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<title>404|东阿阿胶官网</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="Author" content="" />
		<link rel="shortcut icon" href="<c:url value='/static/img/titlelogo.ico'/> "/>
		<link rel="bookmark" href="<c:url value='/static/img/titlelogo.ico'/>"/> 
		<!-- mobile settings -->
		<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
		<!-- WEB FONTS -->
		<!-- link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet" type="text/css" / -->
		<!-- CORE CSS -->
		<link href="<c:url value="/static/assets/plugins/bootstrap/css/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
		 <link rel="stylesheet" href="<c:url value='/static/css/bootstrap-theme.min.css' />">
		<link href="<c:url value="/static/assets/css/font-awesome.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/plugins/owl-carousel/owl.carousel.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/plugins/owl-carousel/owl.theme.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/plugins/owl-carousel/owl.transitions.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/plugins/magnific-popup/magnific-popup.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/css/animate.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/css/superslides.css" />" rel="stylesheet" type="text/css" />


		<!-- BLOG CSS -->
		<link href="<c:url value="/static/assets/css/blog.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/css/custom.css" />" rel="stylesheet" type="text/css" />
		<!-- THEME CSS -->
		<link href="<c:url value="/static/assets/css/essentials.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/css/layout.css" />" rel="stylesheet" type="text/css" />
		<link href="<c:url value="/static/assets/css/color_scheme/orange.css" />" rel="stylesheet" type="text/css" /><!-- orange: default style -->
		<!--<link id="css_dark_skin" href="<c:url value="/static/assets/css/layout-dark.css" />" rel="stylesheet" type="text/css" />--><!-- DARK SKIN -->

		<!-- styleswitcher - demo only -->
		<link href="<c:url value="/static/assets/css/color_scheme/orange.css" />" rel="alternate stylesheet" type="text/css" title="orange" />
		<!-- /styleswitcher - demo only -->
		
		<!-- STYLESWITCHER - REMOVE ON PRODUCTION/DEVELOPMENT -->
		<link href="<c:url value="/static/assets/plugins/styleswitcher/styleswitcher.css" />" rel="stylesheet" type="text/css" />		

		<!-- Morenizr -->
		<!--bootstrap css-->
		<!--bootstrapcss end-->
		<!-- custom -->
		<link href="<c:url value="/static/assets/css/custom.css" />" rel="stylesheet" type="text/css" />		
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/modernizr.min.js" />"></script>
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		 <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/donge_ie8.css' />">
		  <script src="<c:url value='/static/js/html5shiv.min.js'/>"></script>
		  <script src="<c:url value='/static/js/respond.min.js'/>"></script>
		<![endif]-->
		<style type="text/css">
			html,body{
				min-height: 100%;
				height:100%;
			}
		</style>
	</head>
	<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="/static/assets/images/boxed_background/1.jpg"  -->
	
	
	
		<div class="error-bg">
		<%@include file="portal/common/head.jsp" %>
			<div class="notFound error-title">
				<img class="notFound-img" alt="" src="<c:url value="/static/assets/images/demo/error/title-404.png" />">
			</div>
			<div class="notFound">
				<img class="notFound-img" alt="" src="<c:url value="/static/assets/images/demo/error/404.png" />">
			</div>
			<div style="position: absolute;bottom: 0px;width:100%;">
			</div>
		</div>
		<!-- /WRAPPER -->
		
		<!-- FOOTER -->
		<!-- 底部链接-->
		
		<!-- /FOOTER -->
		<script type="text/javascript" src="<c:url value="/static/js/less-1.7.0.min.js"/>" ></script>
    	<script type="text/javascript" src="<c:url value="/static/assets/plugins/jquery-1.11.1.min.js"/>"></script>
		<!-- JAVASCRIPT FILES -->
		
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/jquery-2.0.3.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/jquery.easing.1.3.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/jquery.cookie.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/jquery.appear.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/jquery.isotope.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/masonry.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/bootstrap/js/bootstrap.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/magnific-popup/jquery.magnific-popup.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/owl-carousel/owl.carousel.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/stellar/jquery.stellar.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/knob/js/jquery.knob.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/jquery.backstretch.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/superslides/dist/jquery.superslides.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/styleswitcher/styleswitcher.js" />"></script><!-- STYLESWITCHER - REMOVE ON PRODUCTION/DEVELOPMENT -->
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/holder.js" />"></script>
	</body>
