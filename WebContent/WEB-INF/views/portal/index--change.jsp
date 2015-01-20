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

    
    <!-- banner样式 -->
	<link href="<c:url value='/static/assets/plugins/revolution-slider/css/settings.css' />" rel="stylesheet" type="text/css" />
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<link href="<c:url value='/static/assets/plugins/revolution-slider/css/settings-ie8.css' />" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/donge_ie8.css' />">
  <script src="<c:url value='/static/js/html5shiv.min.js'/>"></script>
  <script src="<c:url value='/static/js/respond.min.js'/>"></script>
<![endif]-->
<script src="<c:url value='/static/assets/plugins/jquery-1.11.1.min.js'/>"></script>
    <script src="<c:url value='/static/js/bootstrap.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/js/home.js' />"></script>
	<script type="text/javascript">
		$().ready(function(){
			//请求招标公告
			$.getJSON("<c:url value='/tender/zhaobiao.json'/>",function(data){
				var tenderList=data.tenderNoticeList;
				var innerHTML="";
				for(var i=0;i<7;i++){
					if(i<tenderList.length){
						innerHTML+="<li><a href='<c:url value='/tender/"+tenderList[i].id+".htm'/>'>"+tenderList[i].tenderTitle+"</a></li>";
					}
				}
				$("#dongexinwen_div2").html(innerHTML);
			});
			//请求中标公示
			$.getJSON("<c:url value='/tender/publicity.json'/>",function(data){
				var tenderList=data.tenderPublicityList;
				var innerHTML="";
				for(var i=0;i<7;i++){
					if(i<tenderList.length){
						innerHTML+="<li><a href='<c:url value='/tender/publicity/"+tenderList[i].tenderId+".htm'/>'>"+tenderList[i].publicityTitle+"</a></li>";
					}
				}
				$("#dongexinwen_div3").html(innerHTML);
			});
			
		});
		function LiChange(obj){
			obj.style.cursor="pointer";
		}
	</script>
</head>
<body>
	
<!--导航栏-->	
		<%@include file="common/head.jsp" %>
	<!--  
	<div id="msgshow" style="width:200px;height:50px;position:fixed;background-color:yellow ;top:0px;left:0px;z-index: 9999;">1</div>
	-->
	<div class="content">
		<!-- 顶部空白-->
		<div id="emptyContent" ></div>
		<!--首页大banner-->
		<div  class="container-fluid banner">
			<div class="fullwidthbanner-container roundedcorners"  style="margin-bottom: 0px!important;" >
				<div class="fullwidthbanner">
					<ul>
					<c:forEach items="${bannerList }" var="banner">
						<c:if test="${!empty banner.linkUrl }">
							<li data-transition="${banner.transition }" data-slotamount="${banner.slotamount }" data-masterspeed="${banner.masterspeed }" data-delay="${banner.delay }" onclick="window.open('${banner.linkUrl}')"  onmouseover="LiChange(this)">
								<img src="<c:url value='/showpic.htm?f=${banner.imgUrl }'/>"  alt="" data-bgrepeat="no-repeat" />
							</li>
						</c:if>
						<c:if test="${empty banner.linkUrl }">
							<li data-transition="${banner.transition }" data-slotamount="${banner.slotamount }" data-masterspeed="${banner.masterspeed }" data-delay="${banner.delay }" >
								<img src="<c:url value='/showpic.htm?f=${banner.imgUrl }'/>"  alt="" data-bgrepeat="no-repeat" />
							</li>
						</c:if>
					</c:forEach>
					</ul>
				</div>
			</div>
		</div>

			<!-- 中间图片1-->
			<div class="midrow1 fontsong" >
				<div class="container">
					<div class="row" >
						<div class="col-xs-12 col-sm-4 col-md-4 ">
							<br>
							<span class="h4 fonthei" ><strong><c:out value="${module_1.moduleTitle }" escapeXml="false"/></strong></span>
							<hr>
							<div>
								<video src="<c:url value='/upload/logo/${module_1.moduleFileUrl }' />" controls="controls" width="98%"> 
										<embed src="<c:url value='/upload/logo/${module_1.moduleFileUrl }' />" width="99.8%" autostart="false"/>
								</video>
							</div>
							<br>
							<span style="color:#e60012"><strong><c:out value="${module_1.moduleFileName}" escapeXml="false"/></strong></span>
							<br>&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${module_1.moduleFileDesc }" escapeXml="false"/><br><br>
							<div class="buttonDiv">
							<a href="<c:url value="/gbcc.htm" />">
								<button class="readmoreButton" onclick="JavaScript:window.location.href='<c:url value="/gbcc.htm" />'">
										<div class="readmoreButtonfirst"><B>阅读更多</B></div>
										<div class="readmorebiaoqian"><i class="fa fa-caret-right"></i></div>
								</button>
							</a>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 ">
							<br>
							<span class="h4 fonthei" ><strong><c:out value="${module_2.moduleTitle }" escapeXml="false"/></strong></span>
							<hr>
							<div>
								<div class="qiyejianjieshadow">
								<a href="<c:url value="/approachDEEJ.htm" />">
									<img src="<c:url value='/upload/logo/${module_2.moduleFileUrl }'/>" alt="<c:out value="${module_2.moduleFileName}" escapeXml="false"/>" width="100%"/>
								</a>
								</div>
								<br><br>
								<span style="font-size: 16px;">
								&#12288;&#12288;<c:out value="${module_2.moduleFileDesc }" escapeXml="false"/> 
								</span>
								<div class="buttonDiv">
								<a href="<c:url value="/approachDEEJ.htm" />">
									<button class="readmoreButton" onclick="JavaScript:window.location.href='<c:url value="/approachDEEJ.htm" />'">
										<div class="readmoreButtonfirst"><B>阅读更多</B></div>
										<div class="readmorebiaoqian"><i class="fa fa-caret-right"></i></div>
									</button>						
								</a>
								</div>
							</div>
							
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 ">
							<br>
							<span class="h4 fonthei" ><strong><c:out value="${module_3.moduleTitle }" escapeXml="false"/></strong></span>
							<hr>
							<div id="dongexinwen">
								<ul class="dongexinwen_t_div">
									<a href="javascript:void(0)"><div id="dongexinwen_t1" class="dongexinwen_t_active">阿胶新闻</div></a>
									<a href="javascript:void(0)"><div id="dongexinwen_t2" class="dongexinwen_t">招标公告</div></a>
									<a href="javascript:void(0)"><div id="dongexinwen_t3" class="dongexinwen_t">中标公示</div></a>
									<div style="clear:both;"></div>
								</ul>
								<ul id="dongexinwen_div1" class="dongexinwen_div">
									<c:forEach  begin="1" end="7" varStatus="s">
											<li><a href="<c:url value="/news/detail/${newsList[s.index].id}.htm"/>"><c:out value="${newsList[s.index].title}" /></a></li>
									</c:forEach>
								</ul>
								<ul id="dongexinwen_div2" class="dongexinwen_div" style="display: none;">
								</ul>
								<ul id="dongexinwen_div3" class="dongexinwen_div" style="display: none;">
								</ul>
								<div class="buttonDiv">
									<a href="<c:url value="/news.htm" />">
										<button class="readmoreButton" onclick="JavaScript:window.location.href='<c:url value="/news.htm" />'">
											<div class="readmoreButtonfirst"><B>阅读更多</B></div>
											<div class="readmorebiaoqian"><i class="fa fa-caret-right"></i></div>
										</button>								
									</a>
								</div>
							</div>
							<div style="clear:both;"></div>
							<br>
						</div>
					</div>
						<div class="row totalButtonDiv"  >
							<div class="col-xs-12 col-sm-4 col-md-4 ">
								<a href="<c:url value="/news/detail/197.htm" />">
								<button class="readmoreButton" onclick="JavaScript:window.location.href='<c:url value="/news/detail/197.htm" />'">
										<div class="readmoreButtonfirst"><B>阅读更多</B></div>
										<div class="readmorebiaoqian"><i class="fa fa-caret-right"></i></div>
								</button>
								</a>
								<br>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-4 ">
								<a href="<c:url value="/approachDEEJ.htm" />">
									<button class="readmoreButton" onclick="JavaScript:window.location.href='<c:url value="/approachDEEJ.htm" />'">
										<div class="readmoreButtonfirst"><B>阅读更多</B></div>
										<div class="readmorebiaoqian"><i class="fa fa-caret-right"></i></div>
									</button>						
								</a>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-4 ">
								<a href="<c:url value="/news.htm" />">
										<button class="readmoreButton" onclick="JavaScript:window.location.href='<c:url value="/news.htm" />'">
											<div class="readmoreButtonfirst"><B>阅读更多</B></div>
											<div class="readmorebiaoqian"><i class="fa fa-caret-right"></i></div>
										</button>								
									</a>
							</div>
						</div>
				</div>
			</div>
			<!-- 中间图片2-->
			<div class="midrow2">
				<div class="container" style="background-color:#e6e6e6;">
					<div class="row" >
						<div class="col-xs-12 col-sm-8 col-md-8 ">
							<br>
							<span class="h4"><strong><c:out value="${module_4.moduleTitle }" escapeXml="false"/></strong></span>
							<hr>
							<div class="gongsichanpinout">
								<div style="width:100%;">
									
										<a href="javascript:void(0)"><div name="gongsichanpindaohang1" class="gongsichanpindaohang1 floatl">传统中药</div></a>
										<a href="javascript:void(0)"><div name="gongsichanpindaohang2"  class="gongsichanpindaohang2 floatl">保健品</div></a>
										<a href="javascript:void(0)"><div  name="gongsichanpindaohang3" class="gongsichanpindaohang2 floatr">食品</div></a>
									
									<div style="clear:both"></div>
								</div>
								<br>
								<div style="position:relative;" >
									<div class="gongsichanpinleftbutton" style="disabled:false"><!--左侧按钮-->
										<a href="javascript:void(0)"><img src="<c:url value='/static/img/buttonleft.jpg' />" width="70%"></a>
									</div>
									
									<div class="gongsichanpinshow1" name="gongsichanpinshow" id="gongsichanpindaohang1_show"><!--中间图片显示框1-->
										
										<div class="gongsichanpinitem" style="position:relative ;left:0%;"><a href="http://www.edongeejiao.cn/Item/201554.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/zy1.png' />" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:33.3%;"><a href="http://www.edongeejiao.cn/Item/186512.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/zy2.png' />" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:66.6%;"><a href="http://www.edongeejiao.cn/Item/9198.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/zy3.png' />" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:100%;"><a href="http://www.edongeejiao.cn/Item/186496.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/zy5.png' />" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:133.3%;"><a href="http://www.edongeejiao.cn/Item/185736.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/zy6.png' />" width="100%"></a></div>
									</div>
								
									
									<div class="gongsichanpinshow2" name="gongsichanpinshow" id="gongsichanpindaohang2_show"><!--中间图片显示框2-->
										<div class="gongsichanpinitem" style="position:relative;left:0%;"><a href="http://www.edongeejiao.cn/Item/186027.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/bj1.png'/>" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:33.3%;"><a href="http://www.edongeejiao.cn/Item/9189.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/bj2.png'/>" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:66.6%;"><a href="http://www.edongeejiao.cn/Item/9191.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/bj3.png' />" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:100%;"><a href="http://www.edongeejiao.cn/Item/186431.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/bj4.png' />" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:133.3%;"><a href="http://www.edongeejiao.cn/Item/185167.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/bj5.png' />" width="100%"></a></div>
									</div>
									
									<div class="gongsichanpinshow2" name="gongsichanpinshow" id="gongsichanpindaohang3_show"><!--中间图片显示框3-->
										<div class="gongsichanpinitem" style="position:relative;left:0%;"><a href="http://www.edongeejiao.cn/Shop_shipin_ajiaogao/Index.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/sp1.png' />" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:33.3%;"><a href="http://www.edongeejiao.cn/Shop_bjsp_ejz/Index.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/sp2.png' />" width="100%"></a></div>
										<div class="gongsichanpinitem" style="left:66.6%;"><a href="http://www.edongeejiao.cn/ejyf/Index.aspx" target="_blank"><img src="<c:url value='/static/img/gongsichanpin/sp3.png' />" width="100%"></a></div>
									</div>
									
									<div class="gongsichanpinrightbutton"><!--右侧按钮-->
										<a href="javascript:void(0)"><img src="<c:url value='/static/img/buttonright.jpg' />" width="70%"></a>
									</div>
									<div style="clear:both"></div>
									<br/>
								</div> 
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4 ">
									<br>
									<span class="h4" ><strong><c:out value="${module_5.moduleTitle }" escapeXml="false"/></strong></span>
									<hr>
									<div style="text-align:center;">
									
								 	<img src="http://stockimg.sina.com.cn/newchart/min/sz000423.gif" width="100%"> 
										<br><br>
										<span><strong>东阿阿胶（深圳，000423）</strong></span>
									</div>
								</div>
								
						<br>
					</div>
					<div style="clear:both"></div>
				</div>
				<br/>
			</div>
			
			
			<!-- 底部图片-->
			<div style="background-color:#f5f5f5;width:100%;">
				<div class="container" >
					<br>
					<span  class="h4" style="color:#da2222"><strong>东阿阿胶旗下网站</strong></span>
					<hr>
					<div class="row">
						<div class="column-xs-12 col-sm-12 col-md-12"  >
							<div style="width:80%;position: relative;left:10%;">
								<c:forEach items="${childSiteList}" var="childSite">
									<div  style="float:left; width:16.6%">
										<a href="<c:url value="${childSite.siteLinkUrl}" />" target="_blank">
											<img alt="${childSite.siteName}" src="<c:url value='/upload/logo/${childSite.siteLogoUrl}'/>" width="92%"/>
										</a>
									</div>								
								</c:forEach>
							</div>
						</div>
					</div>
					<br/> <br/>
				</div>
			</div>
					
	</div>
</body>

   


<!--banner滚动引入文件-->
	 <!--[if lt IE 9]>
	    <script type="text/javascript" src="<c:url value='/static/assets/plugins/jquery-1.11.1.min.js'/> "></script>
    <![endif]-->
	<script type="text/javascript" src="<c:url value='/static/assets/plugins/revolution-slider/js/jquery.themepunch.plugins.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/assets/plugins/revolution-slider/js/jquery.themepunch.revolution.min.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/assets/js/slider_revolution.js' />"></script>
	<script type="text/javascript" src="<c:url value='/static/assets/js/scripts.js' />"></script>
<!--banner滚动引入文件-->
	
</html>
