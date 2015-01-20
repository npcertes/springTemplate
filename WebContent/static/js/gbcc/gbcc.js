/**
 * 国宝传承页面js
 */
	var viewWidth;
//	var viewHeight;
var birdFlag=false;
var totalFlag=false;//默认未运行
var isF5=true;//默认为刷新进入
$().ready(function(){
	viewWidth=document.body.clientWidth;
//	viewHeight=document.body.clientHeight;
	if(viewWidth<1000){
		 $(window).bind('resize load', function(){
			   $("#content").css("zoom", viewWidth/1024);
			   $(".section").css("display" , "block");
		});
		$("#js-nav").css("display","none");
	}
	  
	tolalPortal(0);
})
function tolalPortal(ind){
	//alert(ind);
	totalFlag=true;
	birdFlag=false;
	
	if(ind==0){
		zbgbPortal();
	}
	if(ind==1){
		birdFlag=true;
		mysyPortal();
	}
	if(ind==2){
		zbdbPortal();
	}
	if(ind==3){
		ejsyPortal();
	}
	if(ind==4){
		bmgyPortal();
	}
	if(ind==5){
		gbccPortal();
	}
	if(ind==6){
		swkjPortal();
	}
	if(ind==7){
		ylcxPortal();
	}
	if(ind==8){
		qcylPortal();
	}
	if(ind==9){
		zysmPortal();
	}
}		    	
/*滋补国宝 start*/
function zbgbPortal(){
	$("#zbgbw1").css({top:-1800,left:127});
	$("#zbgbm1").css({top:333,left:-1800});
	$("#zbgbw2").css({top:316,left:2000});

	$("#zbgbm1").animate({top:333,left:82},1500);
	$("#zbgbw1").animate({top:127,left:127},1500);
	$("#zbgbw2").animate({top:316,left:800},1500,function(){totalFlag=false;ajaxGbcc()});
	
}
/*滋补国宝end*/
/*名医圣药start*/
function mysyPortal(){
	$("#mysywenzi").css({top:-1800,left:100});
	$("#mysym1").css({top:409,left:-1800});
	$("#mysym2").css({top:1800,left:560});
	$("#mysym3").css({top:122,left:1800});
	$("#mysym4").css({top:293,left:1800});
	
	$("#mysywenzi").animate({top:120,left:100},1500);
	$("#mysym1").animate({top:409,left:121},1500);
	$("#mysym2").animate({top:350,left:560},1500);
	$("#mysym3").animate({top:122,left:883},1500,function(){birdMove()});
	$("#mysym4").animate({top:293,left:21},1500,function(){totalFlag=false;});
	

}
function birdMove(){
	if(birdFlag){
		$("#mysym3").animate({top:132,height:66,width:130},800,"linear",function(){
			$("#mysym3").animate({top:122,height:86,width:130},800,"linear",function(){
				if(birdFlag){
					setTimeout(birdMove, 10);
				}else{
					return;
				}
				
			})
		});
	}else{
		return;
	}
}
/*名医圣药end*/
/*滋补三大宝start*/
function zbdbPortal(){
	$("#zbdbw1").css({top:-1800,left:111});
	$("#zbdbw2").css({top:1800,left:508});
	$("#zbdbm1").css({top:318,left:-1800});
	$("#zbdbm2").css({top:1800,left:288});
	$("#zbdbm3").css({top:1800,left:257});
	$("#zbdbm4").css({top:254,left:1800});
	
	$("#zbdbw1").animate({top:130,left:111},1500);
	$("#zbdbw2").animate({top:331,left:508},1500);
	$("#zbdbm1").animate({top:318,left:16},1500);
	$("#zbdbm2").animate({top:309,left:288},1500);
	$("#zbdbm3").animate({top:472,left:257},1500);
	$("#zbdbm4").animate({top:254,left:787},1500,function(){totalFlag=false;});
}
/*滋补三大宝end*/
/*阿胶水源start*/
function ejsyPortal(){
	$("#ejsym1").css({top:1800,left:500});
	$("#ejsym2").css({top:303,left:-1800});
	
	$("#ejsyw1").css({top:-1800,left:60});
	$("#ejsyw2").css({top:255,left:-1800});
	$("#ejsyw3").css({top:1800,left:115});
	$("#ejsyw4").css({top:1800,left:115});
	$("#ejsyw5").css({top:1800,left:115});
	$("#ejsyw6").css({top:1800,left:115});
	$("#ejsyw7").css({top:1800,left:115});
	
	
	$("#ejsym1").animate({top:250,left:500},1500,"swing");
	$("#ejsym2").animate({top:303,left:81},1500,"swing");
	
	$("#ejsyw1").animate({top:120,left:60},1500,"swing");
	$("#ejsyw2").animate({top:255,left:82},1500,"swing");
	$("#ejsyw3").animate({top:315,left:115},1900,"swing");
	$("#ejsyw4").animate({top:355,left:115},2300,"swing");
	$("#ejsyw5").animate({top:395,left:115},2700,"swing");
	$("#ejsyw6").animate({top:435,left:115},3100,"swing");
	$("#ejsyw7").animate({top:475,left:115},3500,"swing",function(){totalFlag=false;});
	
}
/*阿胶水源end*/
/*保密工艺start*/
function bmgyPortal(){
	
	$("#bmgyw1").css({top:-1800,left:50});
	$("#bmgyw2").css({top:-1800,left:86});
	$("#bmgy1").css({top:348,left:-1000});
	$("#bmgy2").css({top:329,left:-1000});
	$("#bmgy3").css({top:328,left:1800});
	$("#bmgy4").css({top:287,left:1800});
	$("#bmgy5").css({top:1800,left:73});
	$("#bmgy6").css({top:1800,left:366});
	$("#bmgy7").css({top:1800,left:537});
	$("#bmgy8").css({top:1800,left:800});
	
	$("#bmgy1").animate({top:348,left:100},1500,"swing");
	$("#bmgy2").animate({top:329,left:272},1500,"swing");
	$("#bmgy3").animate({top:328,left:480},1500,"swing");
	$("#bmgy4").animate({top:287,left:649},1500,"swing");
	$("#bmgy5").animate({top:470,left:73},1500,"swing");
	$("#bmgy6").animate({top:465,left:366},1500,"swing");
	$("#bmgy7").animate({top:455,left:537},1500,"swing");
	$("#bmgy8").animate({top:463,left:800},1500,"swing");
	
	
	$("#bmgyw1").animate({top:123,left:50},1500,"swing");
	$("#bmgyw2").animate({top:239,left:86},1500,"swing",function(){totalFlag=false;});

}
/*保密工艺end*/
/*国宝传承后继有人start*/
 function gbccPortal(){
	 $("#gbccw1").css({top:-1800,left:60});
	 $("#gbccw1").animate({top:120,left:60},1500,"swing",function(){totalFlag=false;});
}
/*国宝传承后继有人end*/
/*生物科技start*/
function swkjPortal(){


	$("#swkjm2").css({top:-1800,left:-1800});
	$("#swkjm3").css({top:0,left:-1800});
	$("#swkjw1").css({top:-1800,left:79});
	$("#swkjw2").css({top:530,left:1800});
	
	
	
	$("#swkjm2").animate({top:145,left:530},1500,"swing");
	$("#swkjm3").animate({top:325,left:20},1500,"swing");
	$("#swkjw1").animate({top:130,left:79},1500,"swing");
	$("#swkjw2").animate({top:452,left:595},1500,"swing",function(){totalFlag=false;});
	
}
/*生物科技end*/
/*引领创新start*/
	function ylcxPortal(){
	$("#ylcxm1").css({top:197,left:1800});
	$("#ylcxm2").css({top:240,left:-1800});
	$("#ylcxw1").css({top:-1800,left:83});
	$("#ylcxw2").css({top:1800,left:63});
	
	$("#ylcxm1").animate({top:197,left:300},1500,"swing");
	$("#ylcxm2").animate({top:240,left:76},1500,"swing");
	$("#ylcxw1").animate({top:120,left:83},1500,"swing");
	$("#ylcxw2").animate({top:550,left:63},1500,"swing",function(){totalFlag=false;});
}
/*引领创新end*/
/*全产业链start*/
function qcylPortal(){
	$("#qcylm1").css({top:280,left:1800});
	$("#qcylm2").css({top:293,left:-1800});
	$("#qcylm3").css({top:1800,left:256});
	$("#qcylw1").css({top:-1800,left:100});
	$("#qcylw2").css({top:313,left:290});
	
	
	$("#qcylm1").animate({top:280,left:545},1500,"swing");
	$("#qcylm2").animate({top:293,left:54},1500,"swing");
	$("#qcylm3").animate({top:427,left:256},1500,"swing");
	$("#qcylw1").animate({top:120,left:100},1500,"swing");
	$("#qcylw2").animate({top:313,left:290},1500,"swing",function(){totalFlag=false;});
}
/*全产业链end*/
/*滋养生命start*/
function zysmPortal(){
	$("#zysmm1").css({top:-1800,left:214});
	$("#zysmm2").css({top:1800,left:77});
	$("#zysmm3").css({top:1800,left:380});
	$("#zysmw1").css({top:-1800,left:198});
	
	$("#zysmm1").animate({top:130,left:214},1500,"swing");
	$("#zysmm2").animate({top:257,left:77},1500,"swing");
	$("#zysmm3").animate({top:570,left:380},1500,"swing");
	$("#zysmw1").animate({top:206,left:198},1500,"swing",function(){totalFlag=false;});
	
}
/*滋养生命end*/