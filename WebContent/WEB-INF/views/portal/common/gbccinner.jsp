<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180%, Arial, Helvetica, sans-serif, "新宋体";}
/* gla */
#gla{margin:0 auto;position:relative;height:404px;overflow:hidden;top:250px;}
#gla_box{width:700px;margin:auto;position:relative;}
#gla_box .prev,#gla_box .next{display:block;z-index:100;overflow:hidden;cursor:pointer;position:absolute;width:52px;height:52px;top:171px;}
#gla_box .prev{background:url(images/btn.png) left bottom no-repeat;left:-155px}
#gla_box .next{background:url(images/btn.png) right bottom no-repeat;right:-140px} 
#gla_box .prev:hover{background-position:left top;}
#gla_box .next:hover{background-position:right top;}
.gla_inbox{overflow:hidden;position:relative;}
.gla_inbox p{text-indent:1em;font-size:14px;width:100%;color:#FFFFFF;line-height:30px;background:#000000;}
.gla_inbox a{padding:5px;display:block;position:absolute;top:220px;left:90px;background:#0066CC;color:#FFF;}
.gla_inbox img{width:100%;height:100%;}
.roundabout-holder{height:404px;width:700px;}
.roundabout-moveable-item{display:block;height:300px;width:500px;cursor:pointer;}
.roundabout-in-focus{cursor:auto;}
</style>
<script type="text/javascript" src="<c:url value='/static/js/gbcc/jquery.corner.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/gbcc/jquery.roundabout.js'/>"></script>
<script type="text/javascript" src="<c:url value='/static/js/gbcc/jquery.roundabout-shapes.js'/>"></script>
		<script type="text/javascript">
			$(function(){
				var explorer = window.navigator.userAgent ;
				if(explorer.indexOf("MSIE 8.0")< 0){
					$('.gla_inbox').corner('5px');
				}
				$('#gla_box>ul').roundabout({
					minOpacity:1,
					btnNext: ".next",
					duration: 1000,
					reflect: true,
					btnPrev: '.prev',
					autoplay:true,
					autoplayDuration:5000,
					tilt:0,
					shape: 'figure8'
				});
				
				viewWidth=document.body.clientWidth;
				if(viewWidth<1000){
					 $(window).bind('resize load', function(){
						   $(".textArea > div").css("width" , "");
						   $(".textArea > div").css("height" , "");
					});
				}
			});
		</script>
			
    <!--p2 名医圣药 -->
    <section class="section section-11" data-index="11">
       <div class="inner">
          <div id="mysybg" style="position:absolute;top:0px;;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/mysy/mysybg.jpg'/>" width="100%" height="100%"></div>
            <div class="textArea">
	   			<div id="mysym1" style="position:absolute;top:409px;left:121px;"><img src="<c:url value='/static/img/mysy/mysym1.png'/>" width="100%"></div>
	   			<div id="mysym2" style="position:absolute;top:350px;left:560px;"><img src="<c:url value='/static/img/mysy/mysym2.png'/>" width="100%"></div>
	   			<div id="mysym3" style="position:absolute;top:122px;left:883px;width:130px;height:83px;"><img src="<c:url value='/static/img/mysy/mysym3.png'/>" width="100%" height="100%"></div>
	   			<div id="mysym4" style="position:absolute;top:293px;left:21px;width:168px;height:109px;"><img src="<c:url value='/static/img/mysy/mysym4.png'/>" width="100%"></div>
	   			<div id="mysywenzi" style="position:absolute;top:120px;left:100px;"><img src="<c:url value='/static/img/mysy/mysywenzi.png'/>" width="100%"></div>
       		</div>
        </div>
    </section>
    <!--p3 滋补三大宝-->
    <section class="section section-2" data-index="2">
        <div class="inner">
          <div id="zbdbbg" style="position:absolute;top:0px;;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/zbdb/zbdbbg.png'/>" width="100%" height="100%"></div>
            <div class="textArea">
	   			<div id="zbdbm1" style="position:absolute;top:318px;left:16px;"><img src="<c:url value='/static/img/zbdb/zbdbm1.png'/>" width="100%"></div>
	   			<div id="zbdbm2" style="position:absolute;top:309px;left:288px;"><img src="<c:url value='/static/img/zbdb/zbdbm2.png'/>" width="100%"></div>
	   			<div id="zbdbm3" style="position:absolute;top:472px;left:257px;"><img src="<c:url value='/static/img/zbdb/zbdbm3.png'/>" width="100%"></div>
	   			<div id="zbdbm4" style="position:absolute;top:254px;left:787px;height:469px;width:236px;"><img src="<c:url value='/static/img/zbdb/zbdbm4.png'/>" width="100%" ></div>
	   			<div id="zbdbw1" style="position:absolute;top:130px;left:111px;"><img src="<c:url value='/static/img/zbdb/zbdbw1.png'/>" width="100%"></div>
	   			<div id="zbdbw2" style="position:absolute;top:331px;left:508px;"><img src="<c:url value='/static/img/zbdb/zbdbw2.png'/>" width="100%"></div>
       		</div>
        </div>
    </section>
    <!-- p4阿胶水源-->
    <section class="section section-3" data-index="3">
        <div class="inner">
        	<div id="ejsybg" style="position:absolute;top:0px;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/ejsy/ejsybg.jpg'/>" width="100%" height="100%"></div>
            <div class="textArea">
				<div id="ejsym1" style="position:absolute;top:250px;left:500px;"><img src="<c:url value='/static/img/ejsy/ejsym1.png'/>" ></div>
	   			<div id="ejsym2" style="position:absolute;top:303px;left:81px;"><img src="<c:url value='/static/img/ejsy/ejsym2.png'/>" ></div>
	   			<div id="ejsym4" style="position:absolute;top:500px;left:778px;"><img src="<c:url value='/static/img/ejsy/ejsym4.png'/>" ></div>
	   			<div id="ejsym5" style="position:absolute;top:460px;left:415px;"><img src="<c:url value='/static/img/ejsy/ejsym5.png'/>" ></div>
	   			<div id="ejsym6" style="position:absolute;top:311px;left:500px;"><img src="<c:url value='/static/img/ejsy/ejsym6.png'/>" ></div>
	   			<div id="ejsym1" style="position:absolute;top:382px;left:51px;"><img src="<c:url value='/static/img/ejsy/ejsym7.png'/>" ></div>
	   			
	   			<div id="ejsyw1" style="position:absolute;top:120px;left:60px;"><img src="<c:url value='/static/img/ejsy/ejsyw1.png'/>" ></div>
	   			<div id="ejsyw2" style="position:absolute;top:255px;left:82px;"><img src="<c:url value='/static/img/ejsy/ejsyw2.png'/>" ></div>
	   			<div id="ejsyw3" style="position:absolute;top:315px;left:115px;"><img src="<c:url value='/static/img/ejsy/ejsyw3.png'/>" ></div>
	   			<div id="ejsyw4" style="position:absolute;top:355px;left:115px;"><img src="<c:url value='/static/img/ejsy/ejsyw4.png'/>" ></div>
	   			<div id="ejsyw5" style="position:absolute;top:395px;left:115px;"><img src="<c:url value='/static/img/ejsy/ejsyw5.png'/>" ></div>
	   			<div id="ejsyw6" style="position:absolute;top:435px;left:115px;"><img src="<c:url value='/static/img/ejsy/ejsyw6.png'/>" ></div>
	   			<div id="ejsyw7" style="position:absolute;top:475px;left:115px;"><img src="<c:url value='/static/img/ejsy/ejsyw7.png'/>" ></div>
            </div>
        </div>
    </section>
    <!--p5国家级保密工艺 -->
    <section class="section section-4" data-index="4">
        <div class="inner">
            <div id="bmgybg" style="position:absolute;top:0px;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/bmgy/bmgybg.png'/>" width="100%" height="100%"></div>
            <div class="textArea">
	   			
	   			<div id="bmgyw1" style="position:absolute;top:123px;left:50px;"><img src="<c:url value='/static/img/bmgy/bmgyw1.png'/>" width="100%"></div>
	   			<div id="bmgyw2" style="position:absolute;top:239px;left:86px;"><img src="<c:url value='/static/img/bmgy/bmgyw2.png'/>" width="100%"></div>
	   			<div id="bmgy1" style="position:absolute;top:348px;left:100px;"><img src="<c:url value='/static/img/bmgy/bmgy1.png'/>" width="100%"></div>
       			<div id="bmgy2" style="position:absolute;top:329px;left:272px;"><img src="<c:url value='/static/img/bmgy/bmgy2.png'/>" width="100%"></div>
       			<div id="bmgy3" style="position:absolute;top:328px;left:480px;width:167px;height:158px;"><img src="<c:url value='/static/img/bmgy/bmgy3.png'/>" width="100%"></div>
       			<div id="bmgy4" style="position:absolute;top:287px;left:649px;width:319px;height:207px;"><img src="<c:url value='/static/img/bmgy/bmgy4.png'/>" width="100%"></div>
       			<div id="bmgy5" style="position:absolute;top:470px;left:73px;"><img src="<c:url value='/static/img/bmgy/bmgy5.png'/>" width="100%"></div>
       			<div id="bmgy6" style="position:absolute;top:465px;left:366px;"><img src="<c:url value='/static/img/bmgy/bmgy6.png'/>" width="100%"></div>
       			<div id="bmgy7" style="position:absolute;top:455px;left:537px;"><img src="<c:url value='/static/img/bmgy/bmgy7.png'/>" width="100%"></div>
       			<div id="bmgy8" style="position:absolute;top:463px;left:800px;"><img src="<c:url value='/static/img/bmgy/bmgy8.png'/>" width="100%"></div>
       			
       		</div>
        </div>
    </section>
    <!--p6 国宝传承后记有人-->
    <section class="section section-5" data-index="5">
     <div class="inner">
             <div id="gbccbg" style="position:absolute;top:0px;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/gbcc/gbccbg.png'/>" width="100%" height="100%"></div>
            <div class="textArea">
            	<div id="gbccw1" style="position:absolute;top:120px;left:60px;"><img src="<c:url value='/static/img/gbcc/gbccw1.png'/>" width="100%"></div>
            	<div id="gla">
							<div id="gla_box">
								<ul>
									<li>
										<div class="gla_inbox" style="border-radius: 0px;">
											<img src="<c:url value='/static/img/gbcc/gbccm1.png'/>" />
										</div>
									</li>
									<li>
										<div class="gla_inbox" style="border-radius: 0px;">
											<img src="<c:url value='/static/img/gbcc/gbccm2.png'/>" />
										</div>
									</li>
									<li>
										<div class="gla_inbox" style="border-radius: 0px;">
											<img src="<c:url value='/static/img/gbcc/gbccm3.png'/>" />
										</div>
									</li>
									<li>
										<div class="gla_inbox">
											<img src="<c:url value='/static/img/gbcc/gbccm4.png'/>" />
										</div>
									</li>
									<li>
										<div class="gla_inbox">
											<img src="<c:url value='/static/img/gbcc/gbccm5.png'/>" />
										</div>
									</li>
								</ul>
							</div>
				</div>
            	
       		</div>
        </div>
    </section>
    <!-- p7生物科技-->
    <section class="section section-6" data-index="6" style="padding:0px;margin:0px;border:0px;">
        <div class="inner">
             <div id="swkjbg" style="position:absolute;top:0px;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/swkj/swkjbg.png'/>" width="100%" height="100%"></div>
            <div class="textArea">
           		<div id="swkjm2" style="position:absolute;top:145px;left:530px;"><img src="<c:url value='/static/img/swkj/swkjm2.png'/>" width="100%"></div>
           		<div id="swkjbg2" style="position:absolute;top:0px;left:0px;"><img src="<c:url value='/static/img/swkj/swkjbg2.png'/>" width="100%"></div>
           		<div id="swkjw1" style="position:absolute;top:130px;left:79px;"><img src="<c:url value='/static/img/swkj/swkjw1.png'/>" width="100%"></div>
           		<div id="swkjw2" style="position:absolute;top:492px;left:595px;"><img src="<c:url value='/static/img/swkj/swkjw2.png'/>" width="100%"></div>
           		
           		<div id="swkjm3" style="position:absolute;top:325px;left:20px;"><img src="<c:url value='/static/img/swkj/swkjm3.png'/>" width="100%"></div>
       		</div>
        </div>
    </section>
    <!--p8引领创新 -->
    <section class="section section-7" data-index="7">
        <div class="inner">
           <div id="ylcxbg" style="position:absolute;top:0px;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/ylcx/ylcxbg.png'/>" width="100%" height="100%"></div>
            <div class="textArea">
	   			<div id="ylcxm1" style="position:absolute;top:197px;left:300px;width:727px;height:551px;"><img src="<c:url value='/static/img/ylcx/ylcxm1.png'/>" width="100%"></div>
	   			<div id="ylcxm2" style="position:absolute;top:240px;left:76px;"><img src="<c:url value='/static/img/ylcx/ylcxm2.png'/>" width="100%"></div>
	   			<div id="ylcxw1" style="position:absolute;top:120px;left:83px;"><img src="<c:url value='/static/img/ylcx/ylcxw1.png'/>" width="100%"></div>
	   			<div id="ylcxw2" style="position:absolute;top:550px;left:63px;"><img src="<c:url value='/static/img/ylcx/ylcxw2.png'/>" width="100%"></div>
       		</div>
        </div>
    </section>
    <!--p9全产业链 -->
    <section class="section section-8" data-index="8">
        <div class="inner">
            <div id="qcylbg" style="position:absolute;top:0px;;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/qcyl/qcylbg.png'/>" width="100%" height="100%"></div>
            <div class="textArea">
	   			<div id="qcylm1" style="position:absolute;top:280px;left:545px;width:459px;height:309px;"><img src="<c:url value='/static/img/qcyl/qcylm1.png'/>" width="100%"></div>
	   			<div id="qcylm2" style="position:absolute;top:293px;left:54px;"><img src="<c:url value='/static/img/qcyl/qcylm2.png'/>" width="100%"></div>
	   			<div id="qcylm3" style="position:absolute;top:427px;left:256px;"><img src="<c:url value='/static/img/qcyl/qcylm3.png'/>" width="100%"></div>
	   			<div id="qcylw1" style="position:absolute;top:120px;left:100px;"><img src="<c:url value='/static/img/qcyl/qcylw1.png'/>" width="100%"></div>
	   			<div id="qcylw2" style="position:absolute;top:313px;left:290px;"><img src="<c:url value='/static/img/qcyl/qcylw2.png'/>" width="100%"></div>
       		</div>
        </div>
    </section>
    <!-- p10滋养生命 -->
    <section class="section section-9" data-index="9">
        <div class="inner">
             <div id="zysmbg" style="position:absolute;top:0px;;left:0px;width:100%;height:100%;"><img src="<c:url value='/static/img/zysm/zysmbg.png'/>" width="100%" height="100%"></div>
            <div class="textArea">
            	<div id="zysmw1" style="position:absolute;top:206px;left:198px;"><img src="<c:url value='/static/img/zysm/zysmw1.png'/>" width="100%"></div>
	   			<div id="zysmm1" style="position:absolute;top:130px;left:214px;"><img src="<c:url value='/static/img/zysm/zysmm1.png'/>" width="100%"></div>
	   			<div id="zysmm2" style="position:absolute;top:257px;left:77px;"><img src="<c:url value='/static/img/zysm/zysmm2.png'/>" width="100%"></div>
	   			<div id="zysmm3" style="position:absolute;top:570px;left:380px;"><a href="http://www.edongeejiao.com" target="_blank"><img src="<c:url value='/static/img/zysm/zysmm3.png'/>" width="100%"></a></div>
       		</div>
        </div>
    </section>