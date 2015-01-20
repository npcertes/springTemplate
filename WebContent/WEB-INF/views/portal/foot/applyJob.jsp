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
		<script type="text/javascript" src="<c:url value='/static/assets/plugins/jquery-1.11.1.min.js'/>"></script>
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
						<li>职位申请</li>
					</ul>
				</div>
			</header>
				<section id="contact" class="container">
					<div class="row">
							<!-- FORM -->
							<div class="col-md-8">
								<h3>个人信息</h3>
								<form id="resume" class="white-row" action="<c:url value="/job/applyJob.htm" />" method="post">
									<input type="hidden" name="jobId" value="${jobInfo.id}" />
									<c:if test="${success == 1}">
										<div class="alert alert-success">
											<i class="fa fa-check-circle"></i> 
											<strong>简历提交成功！</strong> 
										</div>										
									</c:if>
									<c:if test="${success == 0}">
										<div class="alert alert-danger">
											<i class="fa fa-frown-o"></i> 
											<strong>请勿重复提交简历！</strong>
										</div>									
									</c:if>	
									<div id="idTypeInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请选择证件类型</strong>
									</div>
									<div id="marryStateInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请选择婚姻状态</strong>
									</div>
									<div id="educationLevelInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请选择学历</strong>
									</div>
									<div id="politicalInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请选择政治面貌</strong>
									</div>
									<div id="graduateYearInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请选择毕业年份</strong>
									</div>
									<div id="graduateMonthInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请选择毕业月份</strong>
									</div>
									<div id="realNameInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请填写姓名</strong>
									</div>
									<div id="birthdayInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请填写出生日期</strong>
									</div>
									<div id="idNoInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请填写证件号</strong>
									</div>
									<div id="mobileInfo" style="display:none;" class="alert alert-danger">
										<i class="fa fa-frown-o"></i> 
										<strong>请填写手机号</strong>
									</div>																																																							
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label> 姓 名 *</label>
												<input type="text" id="realName" name="realName" value="" required="required" data-msg-required="请输入姓名" maxlength="100" class="form-control">
											</div>
											<div class="col-md-6">
												<label> 性 别 *</label>
												<div class="shop-cart-checkout-alert apply-sex">
													<label class="pointer">
														<input type="radio" name="gender" value="0" checked="checked"> <strong>男</strong>
													</label>
													<label class="pointer">
														<input type="radio" name="gender" value="1"> <strong>女</strong>
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label> 出生日期 *</label>
												<input type="text" id="birthday" name="birthday" value="" placeholder="形如:1999/09/09" required="required" data-msg-required="请输入出生日期" maxlength="100" class="form-control">
											</div>
											<div class="col-md-6">
												<div class="col-md-4"><!-- Year -->
													<label> 婚姻状态*</label>
													<select id="marryState" name="marryState" data-msg-required="请选择婚姻状态" class="form-control pointer">
														<option selected="selected" value="-1">请选择</option>
														<option value="0">未婚</option>
														<option value="1">已婚</option>
													</select>
												</div>												
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<div class="col-md-4"><!-- Year -->
													<label> 证件类型*</label>
													<select id="idType" name="idType" data-msg-required="请选择证件类型" class="form-control pointer">
														<option selected="selected" value="-1">请选择</option>
														<option value="0">身份证</option>
														<option value="1">护照</option>
														<option value="2">军官证</option>
													</select>
												</div>												
											</div>										
											<div class="form-group">
												<div class="col-md-6">
													<label> 证件号 *</label>
													<input type="text" id="idNo" name="idNo" value="" required="required" data-msg-required="请输入证件号" maxlength="100" class="form-control">
												</div>											
											</div>
										</div>	
									</div>	
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<div class="col-md-4"><!-- Year -->
													<label> 学历*</label>
													<select id="educationLevel" name="educationLevel" data-msg-required="请选择学历" class="form-control pointer">
														<option selected="selected" value="-1">请选择</option>
														<option value="0">博士</option>
														<option value="1">硕士</option>
														<option value="2">本科</option>
														<option value="3">大专</option>
														<option value="4">高中</option>
														<option value="5">初中</option>														
													</select>
												</div>												
											</div>										
											<div class="col-md-6">
												<div class="col-md-4"><!-- Year -->
													<label> 政治面貌*</label>
													<select id="political" name="political" data-msg-required="请选择政治面貌" class="form-control pointer">
														<option selected="selected" value="-1">请选择</option>
														<option value="0">群众</option>
														<option value="1">团员</option>
														<option value="2">党员</option>
													</select>
												</div>												
											</div>	
										</div>	
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<div class="col-md-4"><!-- Year -->
													<label> 毕业年份*</label>
													<select id="graduateYear" name="graduateYear" data-msg-required="请选择毕业年份" class="form-control pointer">
														<option selected="selected" value="-1">请选择</option>
														<option value="1970">1970年</option>
														<option value="1971">1971年</option>
														<option value="1972">1972年</option>		
														<option value="1973">1973年</option>
														<option value="1974">1974年</option>
														<option value="1975">1975年</option>	
														<option value="1976">1976年</option>
														<option value="1977">1977年</option>
														<option value="1978">1978年</option>	
														<option value="1979">1979年</option>																
														<option value="1980">1980年</option>
														<option value="1981">1981年</option>
														<option value="1982">1982年</option>		
														<option value="1983">1983年</option>
														<option value="1984">1984年</option>
														<option value="1985">1985年</option>	
														<option value="1986">1986年</option>
														<option value="1987">1987年</option>
														<option value="1988">1988年</option>	
														<option value="1989">1989年</option>														
														<option value="1990">1990年</option>
														<option value="1991">1991年</option>
														<option value="1992">1992年</option>		
														<option value="1993">1993年</option>
														<option value="1994">1994年</option>
														<option value="1995">1995年</option>	
														<option value="1996">1996年</option>
														<option value="1997">1997年</option>
														<option value="1998">1998年</option>	
														<option value="1999">1999年</option>
														<option value="2000">2000年</option>
														<option value="2001">2001年</option>	
														<option value="2002">2002年</option>	
														<option value="2003">2003年</option>
														<option value="2004">2004年</option>	
														<option value="2005">2005年</option>
														<option value="2006">2006年</option>
														<option value="2007">2007年</option>	
														<option value="2008">2008年</option>	
														<option value="2009">2009年</option>
														<option value="2010">2010年</option>	
														<option value="2011">2011年</option>	
														<option value="2012">2012年</option>
														<option value="2013">2013年</option>	
														<option value="2014">2014年</option>
														<option value="2015">2015年</option>
														<option value="2016">2016年</option>	
														<option value="2017">2017年</option>	
														<option value="2018">2018年</option>
														<option value="2019">2019年</option>	
														<option value="2020">2020年</option>	
													</select>
												</div>												
											</div>										
											<div class="col-md-6">
												<div class="col-md-4">
													<label> 毕业月份*</label>
													<select id="graduateMonth" name="graduateMonth" data-msg-required="请选择毕业月份" class="form-control pointer">
														<option selected="selected" value="-1">请选择</option>
														<option value="1">1月</option>
														<option value="2">2月</option>
														<option value="3">3月</option>
														<option value="4">4月</option>
														<option value="5">5月</option>
														<option value="6">6月</option>
														<option value="7">7月</option>
														<option value="8">8月</option>
														<option value="9">9月</option>
														<option value="10">10月</option>
														<option value="11">11月</option>
														<option value="12">12月</option>
													</select>
												</div>												
											</div>	
										</div>	
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label> 手 机 *</label>
												<input type="text" id="mobile"  name="mobile"  value="" required="required" data-msg-required="请输入手机号." maxlength="100" class="form-control">
											</div>
											<div class="col-md-6">
												<label> 邮 箱 </label>
												<input type="email" name="email" value="" maxlength="100" class="form-control">
											</div>											
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label> 固 话</label>
												<input type="text"  name="phone" value="" maxlength="100" class="form-control">
											</div>
										</div>
									</div>									
									<div class="row">
										<div class="form-group">
											<div class="col-md-6">
												<label> 籍 贯 </label>
												<input type="text" name="province" value="" maxlength="100" class="form-control">
											</div>
											<div class="col-md-6">
												<label> 城 市</label>
												<input type="text"  name="city" value="" maxlength="100" class="form-control">
											</div>											
										</div>
									</div>																																																						
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label>通讯地址</label>
												<input type="text" name="address" value="" maxlength="100" class="form-control" >
											</div>
										</div>
									</div>
									<div class="row">
										<div class="form-group">
											<div class="col-md-12">
												<label>个人履历 </label>
												<textarea name="selfAssessment" maxlength="2000" placeholder="工作经历、教育情况、能力特产、自我评价（限2000字符内）"  rows="12" class="form-control"></textarea>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<input type="button" id="submitBtn" class="btn btn-primary btn-lg" value="提交">
										</div>
									</div>
								</form>
							
							</div>
							<!-- /FORM -->
							<!-- INFO -->
							<div class="col-md-4">
								<h3>联系我们</h3>
								<p>
									 山东东阿阿胶股份有限公司前身为山东东阿阿胶厂， 1952年建厂，1993年由国有企业改组为股份制企业。1996年成 为上市公司，同年7月29日“东阿阿胶”A股股票在深交所挂 牌上市，系国内最大的阿胶及系列产品生产企业。隶属央企 华润集团。 
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
			$("#submitBtn").click(function(){
				var realName = $("#realName").val();
				var birthday = $("#birthday").val();
				var idType = $("#idType option:selected").val();
				var idNo = $("#idNo").val();
				var marryState = $("#marryState option:selected").val();
				var educationLevel = $("#educationLevel option:selected").val();
				var graduateYear = $("#graduateYear option:selected").val();
				var graduateMonth = $("#graduateMonth option:selected").val();
				var political = $("#political option:selected").val();
				var mobile = $("#mobile").val();
				if(realName == null || realName == ""){
					$("#realNameInfo").show();
				}else if(birthday == null || birthday == ""){
					$("#realNameInfo").hide();
					$("#birthdayInfo").show();
				}else if(marryState == -1){
					$("#realNameInfo").hide();
					$("#birthdayInfo").hide();
					$("#marryStateInfo").show();
				}else if(idType == -1){
					$("#realNameInfo").hide();
					$("#birthdayInfo").hide();					
					$("#marryStateInfo").hide();
					$("#idTypeInfo").show();
				}else if(idNo == null || idNo == ""){
					$("#realNameInfo").hide();
					$("#birthdayInfo").hide();					
					$("#marryStateInfo").hide();					
					$("#idTypeInfo").hide();
					$("#idNoInfo").show();
				}else if(educationLevel == -1){
					$("#realNameInfo").hide();
					$("#birthdayInfo").hide();					
					$("#marryStateInfo").hide();					
					$("#idTypeInfo").hide();					
					$("#idNoInfo").hide();
					$("#educationLevelInfo").show();
				}else if(political == -1){
					$("#realNameInfo").hide();
					$("#birthdayInfo").hide();					
					$("#marryStateInfo").hide();					
					$("#idTypeInfo").hide();					
					$("#idNoInfo").hide();					
					$("#educationLevelInfo").hide();
					$("#politicalInfo").show();
				}else if(graduateYear == -1){
					$("#realNameInfo").hide();
					$("#birthdayInfo").hide();					
					$("#marryStateInfo").hide();					
					$("#idTypeInfo").hide();					
					$("#idNoInfo").hide();					
					$("#educationLevelInfo").hide();					
					$("#politicalInfo").hide();
					$("#graduateYearInfo").show();
				}else if(graduateMonth == -1){
					$("#realNameInfo").hide();
					$("#birthdayInfo").hide();					
					$("#marryStateInfo").hide();					
					$("#idTypeInfo").hide();					
					$("#idNoInfo").hide();					
					$("#educationLevelInfo").hide();					
					$("#politicalInfo").hide();					
					$("#graduateYearInfo").hide();
					$("#graduateMonthInfo").show();
				}else if(mobile == null || mobile == ""){
					$("#realNameInfo").hide();
					$("#birthdayInfo").hide();					
					$("#marryStateInfo").hide();					
					$("#idTypeInfo").hide();					
					$("#idNoInfo").hide();					
					$("#educationLevelInfo").hide();					
					$("#politicalInfo").hide();					
					$("#graduateYearInfo").hide();					
					$("#graduateMonthInfo").hide();
					$("#mobileInfo").show();
				}else{
					$("#resume").submit();
				}
			});
		</script>		

	</body>
