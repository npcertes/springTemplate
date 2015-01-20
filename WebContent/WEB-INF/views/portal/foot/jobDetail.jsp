<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@taglib prefix="page" uri="/WEB-INF/pager.tld"%>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->	<html> <!--<![endif]-->
	<head>
		<meta charset="utf-8" />
		<title>人才招聘|东阿阿胶官网</title>
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
					<h1>人才招聘</h1>
					<ul class="breadcrumb">
						<li><a href="<c:url value="index.htm"/>">首页</a></li>
						<li class="active">人才招聘</li>
						<li>职位详细</li>
					</ul>
				</div>
			</header>
				<section class="container masonry-sidebar">
					<div class="white-row">
							<!-- INVOICE HEADER -->
								<div class="row">
									<div class="col-sm-6">
										<h3><strong><c:out value="${jobInfo.jobName}" escapeXml="false"/></strong></h3>
									</div>
									<div class="col-sm-6 text-right">
										<p>
											发布于 &bull; <strong><fmt:formatDate value="${jobInfo.createTime}" pattern="yyyy/MM/dd"/></strong>
										</p>
										<c:choose>
											<c:when test="${jobInfo.endDate == null }">
												<a href="<c:url value="/job/goApplyJob.htm?id=${jobInfo.id}" />" class="btn_update btn btn-primary btn-sm"><strong>申请职位</strong></a>
											</c:when>
											<c:otherwise>
												<jsp:useBean id="now" class="java.util.Date" />
												<c:if test="${now.time < jobInfo.endDate.time }">
													<a href="<c:url value="/job/goApplyJob.htm?id=${jobInfo.id}" />" class="btn_update btn btn-primary btn-sm"><strong>申请职位</strong></a>
												</c:if>													
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							<!-- /INVOICE HEADER -->
							<hr class="margin-top10 margin-bottom10" /><!-- separator -->
							<!-- DETAILS -->
							<div class="row">
								<div class="col-sm-6">
									<h4><strong>职位</strong></h4>
									<ul class="list-unstyled">
										<li><strong>所属部门:</strong> <c:out value="${jobInfo.department}" escapeXml="false" /></li>
										<li><strong>招聘人数:</strong> <c:out value="${jobInfo.jobCount}" escapeXml="false" /></li>
										<li><strong>招聘类型:</strong> 												
										<c:if test="${jobInfo.srcType == 0 }">
													社会招聘
										</c:if>
										<c:if test="${jobInfo.srcType == 1 }">
													校园招聘
										</c:if></li>
										<li><strong>职位描述:</strong></li>
									</ul>
								</div>
								<div class="col-sm-6">
									<h4><strong>详细</strong></h4>
									<ul class="list-unstyled">
										<li><strong>招聘单位:</strong> <c:out value="${jobInfo.company}" escapeXml="false"/> </li>
										<li><strong>工作地点:</strong> <c:out value="${jobInfo.workArea}" escapeXml="false" /></li>
										<c:choose>
											<c:when test="${!empty jobInfo.endDate }">
												<li><strong>截止日期:</strong> <fmt:formatDate value="${jobInfo.endDate}" pattern="yyyy/MM/dd"/></li>
											</c:when>
											<c:otherwise>
												<li><strong>截止日期:</strong> 长期有效</li>
											</c:otherwise>
										</c:choose>
									</ul>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<c:out value ="${jobInfo.jobDetail}" escapeXml="false" />
								</div>
							</div>							
							<!-- /DETAILS -->
						</div>			
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
