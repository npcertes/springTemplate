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
		<title>网站地图|东阿阿胶官网</title>
		<meta name="keywords" content="<%=Config.siteConfig.getSiteKeyWord() %>" />
		<meta name="description" content="<%=Config.siteConfig.getSiteDesc() %>" />
		<meta name="Author" content="DEEJ" />
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
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/jquery-1.11.1.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/static/assets/plugins/modernizr.min.js" />"></script>
		
			<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
 <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/donge_ie8.css' />">
  <script src="<c:url value='/static/js/html5shiv.min.js'/>"></script>
  <script src="<c:url value='/static/js/respond.min.js'/>"></script>
<![endif]-->
		
	</head>
	<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="/static/assets/images/boxed_background/1.jpg"  -->
	
	<%@include file="../common/head.jsp" %>
	
		<div id="wrapper" style="padding:0px;">
			<div id="blog">
			<!-- PAGE TITLE -->
			<header id="page-title"> 
				<div class="container">
					<h1>网站地图</h1>
					<ul class="breadcrumb">
						<li><a href="<c:url value="index.htm"/>"> 首页</a></li>
						<li class="active">网站地图</li>
					</ul>
				</div>
			</header>
				<section class="container">
					<!-- SITEMAP -->
					<div class="row">
						<div class="col-md-4">
							<h4><i class="fa fa-star-o"></i><a href="<c:url value="/index.htm"/>"> 首页</a></h4>
							<h4><i class="fa fa-star-o"></i><a href="<c:url value='/gbcc.htm'/>"> 国宝传承</a></h4>
							<h4><i class="fa fa-star-o"></i><a href="<c:url value='/scientificInnovation.htm'/>"> 科技创新</a></h4>
							<h4><i class="fa fa-star-o"></i><a href="http://www.edongeejiao.cn/"> 官方商城</a></h4>
						</div>					
						<div class="col-md-4">
							<h4><i class="fa fa-star-o"></i> 投资者关系</h4>
							<ul class="list-unstyled">
								<c:forEach items="${newsCategoryListOne}" var="newsCategory">
									<c:if test="${newsCategory.linkType == 0 }">
										<li><a href="<c:url value="/news/0/${newsCategory.id}.htm" />"><i class="fa fa-circle-o"></i> <c:out value="${newsCategory.categoryName}" /></a></li>
									</c:if>
									<c:if test="${newsCategory.linkType == 1 }">
										<li><a target="_blank" href="<c:url value="${newsCategory.linkUrl}" />"><i class="fa fa-circle-o"></i> <c:out value="${newsCategory.categoryName}" /></a></li>
									</c:if>
								</c:forEach>							
							</ul>
						</div>
	
						<div class="col-md-4">
							<h4><i class="fa fa-star-o"></i> 走进东阿阿胶</h4>
							<ul class="list-unstyled">
								<c:forEach items="${newsCategoryListTwo}" var="newsCategory">
									<c:if test="${newsCategory.linkType == 0 }">
										<li><a href="<c:url value="/news/1/${newsCategory.id}.htm" />"><i class="fa fa-circle-o"></i> <c:out value="${newsCategory.categoryName}" /></a></li>
									</c:if>
									<c:if test="${newsCategory.linkType == 1 }">
										<li><a target="_blank" href="<c:url value="${newsCategory.linkUrl}" />"><i class="fa fa-circle-o"></i> <c:out value="${newsCategory.categoryName}" /></a></li>
									</c:if>										
								</c:forEach>
							</ul>
						</div>
	
						<div class="col-md-4">
							<h4><i class="fa fa-star-o"></i> 其它</h4>
							<ul class="list-unstyled">
								<li><a href="<c:url value = "/job/listJob.htm" />"><i class="fa fa-circle-o"></i> 人才招聘</a></li>
								<li><a href="<c:url value = "/news/9/32.htm" />"><i class="fa fa-circle-o"></i> 法律公告</a></li>
								<li><a href="<c:url value = "/news/9/33.htm" />"><i class="fa fa-circle-o"></i> 隐私保护</a></li>
								<li><a href="javascript:void(0)"><i class="fa fa-circle-o"></i> 友情链接</a></li>
							</ul>
						</div>
					</div>
					<div class="divider"><!-- divider --></div>
					<!-- /SITEMAP -->
				</section>					
			</div>
		</div>
		<!-- /WRAPPER -->
		
		<!-- FOOTER -->
		<!-- 底部链接-->
		<%@include file="../common/foot.jsp" %>
		<!-- /FOOTER -->
		<script type="text/javascript" src="<c:url value="/static/js/less-1.7.0.min.js"/>" ></script>
		<!-- JAVASCRIPT FILES -->
		
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
