<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 
    <%@ page trimDirectiveWhitespaces="true" %>
    --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/donge.css' />">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
	 <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/donge_ie8.css' />">
	 <script src="<c:url value='/static/js/html5media.min.js'/>"></script>
<![endif]-->

<script type="text/javascript">
	function baidu(){
		var inputText=document.getElementById("wdtemp").value;
		document.getElementById("wd").value="site:www.dongeejiao.com "+inputText;
		return true;
	}
</script>
<link href="<c:url value='/static/css/style.css'/> " rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<c:url value='/static/js/backtop.js'/> "></script>
	<header >
      <nav  class="navbar navbar-default heardernav1"  role="navigation">
        <div class="container">
          <a class="navbar-brand navbar-left" href="<c:url value='index.htm'/>" style="padding:0px;"><img src="<c:url value='/static/img/logo_gold.png' />" alt="logo" height="190%"></a>
          <!-- XS 状态下的收缩 button-->
          <div class="col-sm-10 navbar-right">
           
            <!--展开列表-->
            <div class="collapse navbar-collapse" >
            <div class="navbar-right homesearch">
				 <form class="search navbar-left" role="search" action="http://www.baidu.com/s" target="_blank" method="get" onsubmit="return baidu();">	
					 <input type="text" class="form-control" maxlength="20" placeholder="搜索" id="wdtemp"> 
					 <i class="fa fa-search"> </i>
					 <input type="hidden" id="wd" name="wd">
					 <input type="submit" style="display: none">
				  </form>
				  <ul class="nav navbar-nav navbar-left">
					<li><a href="http://www.edongeejiao.com/zwcx/Index.aspx"  target="_blank"><font color="white">防伪查询</font></a></li>
				  </ul>
             
              </div>
            </div>
          </div>
        </div>
      </nav>
	   <nav  class="navbar navbar-default heardernav2"  role="navigation">
        <div class="container">
         <a class="navbar-brand navbar-left" href="<c:url value='index.htm'/> " style="padding:0px;" id="logo_copy"><img src="<c:url value='/static/img/logo_gold.png' />" alt="logo" height="106%"></a>
          <!-- XS 状态下的收缩 button-->
          <div class="col-sm-12 col-mid-12 navbar-right">
			   <button type="button" class="navbar-btn navbar-toggle" data-toggle="collapse" data-target="#navbar-linklist">
				    <span class="sr-only"></span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
				    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
				</button>
            <!--展开列表-->
            
          </div>
          
        </div>
        
        <div class="container">
     	<div class="collapse navbar-collapse" id="navbar-linklist">
            <div class="navbar-right">
				<ul class="nav navbar-nav navbar-left">
				 	<li><a href="<c:url value='/index.htm'/> ">首页</a></li>
					<li><a href="<c:url value='/gbcc.htm'/>">数据统计</a></li>
					<li><a href="<c:url value='/scientificInnovation.htm'/>">数据查看</a></li>
					<li><a href="<c:url value='/news.htm'/>">最新动态</a></li>
					<li><a href="<c:url value='/test/listLibInfo.htm'/>">数据测试</a></li>
					<li><a href="<c:url value='/test/goAddLibInfo.htm'/>">添加数据</a></li>
				  </ul>
              </div>
            </div>
        </div>
      </nav>
    </header>