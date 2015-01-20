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
		<title>联系我们|东阿阿胶官网</title>
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
					<h1>联系我们</h1>
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
		
								<h3>留言 </h3>
		
								<form class="white-row" action="<c:url value="/contact.htm" />" method="post">
									<c:if test="${success}">
										<div id="success" class="alert alert-success">
											<i class="fa fa-check-circle"></i> 
											发送成功
									    </div>
									</c:if>
									<c:if test="${codeError }">
									  	<div id="errorExt" class="alert alert-danger">
											<i class="fa fa-frown-o"></i> 
											验证码错误
									    </div>									
									</c:if>	
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label>姓 名</label>
												<input type="text" value="" maxlength="100" class="form-control" name="leaveName" id="name">
											</div>
											<div class="col-md-6">
												<label>E-mail</label>
												<input type="email" value="" maxlength="100" class="form-control" name="leaveMail" id="email">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label>公 司</label>
												<input type="text" value="" maxlength="100" class="form-control" name="leaveCompany" id="subject">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label>内 容 *</label>
												<textarea maxlength="500" required="required" data-msg-required="您的支持是我们前进的不竭动力！" rows="10" class="form-control" name="content" id="message"></textarea>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-3">
												<label>验证码</label>
												<input type="text" value="" required="required" maxlength="10" class="form-control" name="code" id="subject">
											</div>
											<div class="col-md-3">
												<img id="codeImg" alt="点击刷新" src="<c:url value="/randcode.htm"/>" style="margin-left:10px;margin-top:22px;width: 120px;height: 60px;cursor: pointer;" title="点击刷新" />
											</div>											
										</div>
									</div>									
									<div class="row">
										<div class="col-md-12">
											<input id="send" type="submit" value="发 送" class="btn btn-primary btn-lg">
										</div>
									</div>
								</form>
							
							</div>
							<!-- /FORM -->
							<!-- INFO -->
							<div class="col-md-4">
								<h3>联系我们</h3>
								<p>
									 山东东阿阿胶股份有限公司前身为山东东阿阿胶厂， 1952年建厂，1993年由国有企业改组为股份制企业。1996年成 为上市公司，同年7月29日“东阿阿胶”A股股票在深交所挂 牌上市，系国内最大的阿胶及系列产品生产企业。隶属央企华润集团。 
								</p>
								<div class="divider half-margins"><!-- divider -->
									<i class="fa fa-star"></i>
								</div>
								<p>
									<span class="block"><strong><i class="fa fa-map-marker"></i> Address:</strong> 山东省东阿县阿胶街78号</span>
									<span class="block"><strong><i class="fa fa-phone"></i> Phone:</strong> 0635—3262315 </span>
									<span class="block"><strong><i class="fa fa-envelope"></i> Email:</strong> webmaster@dongeejiao.com</span>
								</p>
							</div>
							<!-- /INFO -->
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
		<script type="text/javascript">
	  	    $("#codeImg").click(function(){
	  	    	reloadCodeImg();
	  	    });
		  	function reloadCodeImg(){
		  		$("#codeImg").attr('src','<c:url value="/randcode.htm"/>');
		  	}

		</script>		

	</body>
