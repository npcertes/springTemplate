<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="uft-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="Author" content="Author" />
		<meta http-equiv="X-UA-Compatible" content="IE-edge">
		<title>测试页面|文化产业研究院</title>
		<%--
		<link rel="shortcut icon" href="<c:url value='/static/img/titlelogo.ico'/>"/>
		<link rel="bookmark" href="<c:url value='/static/img/titlelogo.ico'/>"/>
		--%>
		<link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/css/layout.css'/>">
		<link rel="stylesheet" href="<c:url value='/static/css/font-awesome.min.css'/>">
		<link rel="stylesheet" href="<c:url value='/static/css/bootstrap.min.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/bootstrap-theme.min.css'/>">

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9] -->
		<link rel="stylesheet" type="text/css" href="<c:url value='/static/assets/plugins/revolution-slider/css/settings-ie8.css'/>">
		<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/donge_ie8.css'/>">
		<script src="<c:url value='/static/js/html5shiv.min.js'/>"></script>
		<script src="<c:url value='/static/js/respond.min.js'/>"></script>
		<!-- [endif] -->
		<script src="<c:url value='/static/assets/plugins/jquery-1.11.1.min.js'/>"></script>
		<script src="<c:url value='/static/js/bootstrap.min.js' />"></script>
		<script type="text/javascript" src="<c:url value='/static/js/home.js'/>"></script>
		<%--
		<script type="text/javascript">
			$().ready(function(){
				//新闻列表
				$.getJSON("<c:url value='/tender/zhaobiao.json'/>",function(data){
					var tenderList=data.tenderNoticeList;
					var innerHTML="";
					for(var i=0;i<7;i++){
						if(i<tenderList.length){
							innerHTML+="<li><a href='<c:url value='/tender/"+tenderList[i].id+".htm'/>'>"+tenderList[i].tenderTitle+"</a></li>";
						}
					}
					$("#xinwen_div2").html(innerHTML)
				})
			})
		</script>
		--%>
		<style>
			/* http://css-tricks.com/perfect-full-page-background-image/ */
			html {
				background: url(/static/img/headerbg1.jpg) no-repeat center center fixed;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				-o-background-size: cover;
				background-size: cover;
			}

			body {
				padding-top: 20px;
				font-size: 16px;
				font-family: "Open Sans",serif;
				background: transparent;
			}

			h1 {
				font-family: "Abel", Arial, sans-serif;
				font-weight: 400;
				font-size: 40px;
			}

			/* Override B3 .panel adding a subtly transparent background */
			.panel {
				background-color: rgba(255, 255, 255, 0.9);
			}

			.margin-base-vertical {
				margin: 40px 0;
			}

		</style>
	</head>

	<body>
		<!--导航栏-->
		<%@include file="../common/head.jsp"%>

		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<form class="margin-base-vertical">
						<p class="input-group">
							<span class="input-group-addon">用户名</span>
							<input type="text" class="form-control input-lg" name="email" placeholder="zhouzhi@cuc.edu.cn" />
						</p>
						<p class="input-group">
							<span class="input-group-addon">密&nbsp&nbsp&nbsp&nbsp码</span>
							<input type="text" class="form-control input-lg" name="password" />
						</p>
						<p class="input-group">
							<span class="input-group-addon">验证码</span>
							<input type="text" class="form-control input-lg" name="password" />
						</p>
						<p class="help-block text-center"><small>We won't send you spam. Unsubscribe at any time.</small></p>
						<p class="text-center">
							<button type="submit" class="btn btn-success btn-lg">用户登陆</button>
						</p>
						</span>
					</form>
				</div>
			</div>
		</div>
	</body>