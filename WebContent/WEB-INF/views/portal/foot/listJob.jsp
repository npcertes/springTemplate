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
		<style type="text/css">
			.input-group{
				width: 100%;
			}
		</style>
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
						<li>职位展示</li>
					</ul>
				</div>
			</header>
				<section class="container masonry-sidebar">
					<div class="row">
						<div class="col-md-12">
							<div class="job-img">
								<img alt="" class="img-responsive" src="<c:url value="/static/img/job/jobInfo.jpg" />" />
							</div>
						</div>					
						<div class="col-md-12">
								<form method="post" action="<c:url value="/job/searchJob.htm" />" class="input-group">
									<div class="form-group">
										<div class="col-md-2 search-type">
											<select name="srcType" class="form-control search-job">
											  <option value="">全部</option>
											  <option value="0">社会招聘</option>
											  <option value="1">校园招聘</option>
											</select>										
										</div>
										<div class="col-md-4">
											<input type="text" class="form-control search-job" name="likeJobName" id="k" value="" placeholder="职位关键字..." />
										</div>
										<div class="col-md-2 btn-sm">
											<span class="input-group-btn">
												<button type="submit" class="btn btn-primary search-job"><i class="fa fa-search"></i></button>
											</span>											
										</div>										
									</div>									
								</form>
						</div>					
						<div class="col-md-12">
								<div class="panel-body">
									<table class="table table-striped">
										<!-- table head -->
										<thead>
											<tr>
												<th>招聘单位</th>
												<th>所属部门</th>
												<th>职位名称</th>
												<th>工作地点</th>
												<th>招聘类型</th>
												<th>截止日期</th>
												<th>发布日期</th>
												<th></th>
											</tr>
										</thead>
										<!-- table items -->
										<tbody>
										<c:forEach items="${jobInfoList}" var="job">
											<tr><!-- item -->
												<td class="td-mid"><c:out value="${job.company}" escapeXml="false"/></td>
												<td class="td-mid"><c:out value="${job.department}" escapeXml="false" /></td>
												<td class="td-mid"><c:out value="${job.jobName}" escapeXml="false" /></td>
												<td class="td-mid"><c:out value="${job.workArea}" escapeXml="false" /></td>
												<c:if test="${job.srcType == 0 }">
													<td class="td-mid">社会招聘</td>
												</c:if>
												<c:if test="${job.srcType == 1 }">
													<td class="td-mid">校园招聘</td>
												</c:if>
												<td class="td-mid">
													<c:choose>
														<c:when test="${job.endDate == null }">长期有效</c:when>
														<c:otherwise><fmt:formatDate value="${job.endDate}" pattern="yyyy/MM/dd"/></c:otherwise>
													</c:choose>												
												</td>
												<td class="td-mid">
													<fmt:formatDate value="${job.createTime}" pattern="yyyy/MM/dd"/>
												</td>
												<td><a href="<c:url value="/job/jobDetail.htm?id=${job.id}" />" class="btn_update btn btn-primary btn-sm">详细</a></td>
											</tr>
										</c:forEach>											
										</tbody>
									</table>
								</div>
								<!-- PAGINATION -->
								<div class="row">
									<div class="col-md-6 text-left">
										<p class="hidden-xs pull-left nomargin padding30">共  <strong>${pm.pageCount}</strong> 页 <strong>${pm.count}</strong> 条</p>
									</div>
									<div class="col-md-6 responsive-text-center text-right">
										<page:Pager pageSize="${pm.pageSize}" totalPage="${pm.pageCount}" totalCount="${pm.count}" curPage="${pm.pageNo}" formId="listForm" />
									</div>
								</div>	
								<!-- /PAGINATION -->
							<div class="clearfix"></div>
						</div>
					</div>
				</section>					
			</div>
		</div>
		<!-- /WRAPPER -->
		
		<!-- FOOTER -->
		<!-- 底部链接-->
		<%@include file="../common/foot.jsp" %>
		<!-- /FOOTER -->
			
		<script type="text/javascript">
			function search2(i){
				window.location.href="<c:url value="/news/1/${newsCategory.id}.htm"/>?pageno="+i;
			}
		</script>			
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
		<script type="text/javascript">
		$(document).ready(function(){
			var type = navigator.userAgent.match(/.*Mobile.*/)?"mobile":"pc";
			if(type=='pc'){
				var divh=$("#footerDiv").height();
				var h=$("#footerDiv").position().top;
				var wh=$(window).height();
				if((h+divh)<wh){
					$("#footerDiv").css("bottom",0);
				}else{
					$("#footerDiv").css("bottom","");
				}
			}
		});
		</script>
	</body>
