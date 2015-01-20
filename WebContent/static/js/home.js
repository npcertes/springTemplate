/**
 * 首页东阿新闻栏目
 */
//栏目切换
$().ready(function(){
	$("#dongexinwen_t1").click(function(){
		$(".dongexinwen_div").css("display","none");
		$("#dongexinwen_div1").css("display","block");
		$(".dongexinwen_t_active").addClass("dongexinwen_t").removeClass("dongexinwen_t_active");
		$(this).removeClass("dongexinwen_t").addClass("dongexinwen_t_active");
	});
	$("#dongexinwen_t2").click(function(){
		$(".dongexinwen_div").css("display","none");
		$("#dongexinwen_div2").css("display","block");
		$(".dongexinwen_t_active").addClass("dongexinwen_t").removeClass("dongexinwen_t_active");
		$(this).removeClass("dongexinwen_t").addClass("dongexinwen_t_active");
	});
	$("#dongexinwen_t3").click(function(){
		$(".dongexinwen_div").css("display","none");
		$("#dongexinwen_div3").css("display","block");
		$(".dongexinwen_t_active").addClass("dongexinwen_t").removeClass("dongexinwen_t_active");
		$(this).removeClass("dongexinwen_t").addClass("dongexinwen_t_active");
	});
	
});




var isScroll=false;	//默认公司产品未在滚动
$().ready(function(){
	   var viewWidth=document.body.clientWidth;
		$("#msgshow").html(viewWidth);
	
		$("div[name^=gongsichanpindaohang]").click(this,function(index){//用来控制产品种类直接栏目的切换
			$(".gongsichanpindaohang1").addClass("gongsichanpindaohang2");
			$(".gongsichanpindaohang1").removeClass("gongsichanpindaohang1");
			$(this).removeClass("gongsichanpindaohang2");
			$(this).addClass("gongsichanpindaohang1");
		
			$("div[name='gongsichanpinshow']").removeClass().addClass("gongsichanpinshow2");
			$("#"+$(this).attr("name")+"_show").removeClass().addClass("gongsichanpinshow1");
			isScroll=false;
			gongsichanpinautosrollcontrol();
		})
		$(".gongsichanpinrightbutton").click(this,function(){//公司产品 右移按钮事件
			if(isScroll){
				return;
			}else{
				isScroll=true;
			}
			gongsichanpinchange("gongsichanpin","right");
		})
		$(".gongsichanpinleftbutton").click(this,function(){//公司产品 左移按钮事件
			if(isScroll){
				return;
			}else{
				isScroll=true;
			}
			
			gongsichanpinchange("gongsichanpin","left");//参数分别为事件来源，方向，移动距离，图片个数
		})
		$(".qixiawangzhanrightbutton").click(this,function(){//旗下网站 右移按钮事件
			var itemsize=$(".qixiawangzhanshow1 > div[class='qixiawangzhanitem']").size();
			var width=$(".qixiawangzhanshow1 > div[class='qixiawangzhanitem']").eq(2).css("width");
			width=parseInt(width);
			qixiawangzhanchange("qixiawangzhan","right",width,itemsize);
		})
		$(".qixiawangzhanleftbutton").click(this,function(){//旗下网站 左移按钮事件
			var itemsize=$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").size();
			var width=$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(2).css("width");
			width=parseInt(width);
			qixiawangzhanchange("qixiawangzhan","left",width,itemsize);//参数分别为事件来源，方向，移动距离，图片个数
		})
	});
	
	var pppp=setInterval("gongsichanpinautosrollcontrol()", 3000);
	function gongsichanpinautosrollcontrol(){
		$("#msgshow").html(isScroll);
		if(isScroll){
			
		}else{
			isScroll=true;
			gongsichanpinchange("gongsichanpin","right");
		}
	}

	function gongsichanpinchange(source,direct){//公司产品，图片移动
		clearInterval(pppp);
		var itemsize=$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").size();
		var width=$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(2).css("width");
		
		if(itemsize>3){
			
			var allLeft=$("."+source+"show1 > div[class='"+source+"item']").eq(0).css("left");//第一张的左端位置
			//var allRight=$("."+source+"show1 > div[class='"+source+"item']").eq(itemsize-1).css("right");
			var lastLeft=$("."+source+"show1 > div[class='"+source+"item']").eq(itemsize-1).css("left");
			var lastWidth=$("."+source+"show1 > div[class='"+source+"item']").eq(itemsize-1).css("width");
			var parentWidth=$("."+source+"show1").css("width");
			
			lastLeft=parseInt(lastLeft);
			lastWidth=parseInt(lastWidth);
			parentWidth=parseInt(parentWidth);
			
			var allRight=parentWidth-(lastLeft+lastWidth);
			allLeft=parseInt(allLeft);
			allRight=parseInt(allRight);
	
		
			if(direct=="left"&&allLeft>=0){//判断是是否移动到左端
				$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(0).css("position","absolute");
				$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(itemsize-1).css("left",allLeft-lastWidth);		
				$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(itemsize-1).css("position","relative");
				$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(itemsize-1).remove().prependTo(".gongsichanpinshow1");	
				
			}
			if(direct=="right"&&allRight>=0){//判断是否移动到右端
						$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(0).css("position","absolute");
						$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(0).css("left",lastLeft+lastWidth);		
						$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(1).css("position","relative");
						$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(0).remove().appendTo(".gongsichanpinshow1");		
			}
			
			var flag=true;//默认继续移动
			var flag10=true;//默认左侧距离都大于10
			for(var i=0;i<itemsize;i++){//遍历确定是否有图片左侧小于10px
				var lef=$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left");
				lef=parseInt(lef);
				if(lef<15&&lef>0&&direct=="right"){
					flag10=false;
				}
				if(lef>-15&&lef<0&&direct=="left"){
					flag10=false;
				}
			}
			for(var i=0;i<itemsize;i++){//遍历图片，移动
				var lef=$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left");
				lef=parseInt(lef);
				
				if(flag10){ //判断是否有图片的左端，到显示框的左端的距离是否小于15，当大于15的时候，10像素移动
					if(direct=="right"){
						$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left",lef-10);
					}else{
						$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left",lef+10);
					}
				}else{
					if(direct=="right"){
						$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left",lef-1);
						if((lef-1)==0){
							flag=false;//恰好一个移动到位
							isScroll=false;
							pppp=setInterval("gongsichanpinautosrollcontrol()", 3000);
						}
					}else{
						$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left",lef+1);
						if(lef+1==0){
							flag=false;//恰好一个移动到位
							isScroll=false;
							pppp=setInterval("gongsichanpinautosrollcontrol()", 3000);
						}
					}
				}		}
			if(flag){
				setTimeout(function(){
					gongsichanpinchange(source,direct);
				},10);
			}
		}
	}
function qixiawangzhanchange(source,direct,width,itemsize){//旗下网站
		
		var allLeft=$("."+source+"show1 > div[class='"+source+"item']").eq(0).css("left");//第一张的左端位置
		//var allRight=$("."+source+"show1 > div[class='"+source+"item']").eq(itemsize-1).css("right");
		var lastLeft=$("."+source+"show1 > div[class='"+source+"item']").eq(itemsize-1).css("left");
		var lastWidth=$("."+source+"show1 > div[class='"+source+"item']").eq(itemsize-1).css("width");
		var parentWidth=$("."+source+"show1").css("width");
		
		lastLeft=parseInt(lastLeft);
		lastWidth=parseInt(lastWidth);
		parentWidth=parseInt(parentWidth);
		
		var allRight=parentWidth-(lastLeft+lastWidth);
		allLeft=parseInt(allLeft);
		allRight=parseInt(allRight);

		$("#msgshow").html("lastleft:"+lastLeft+"<br>lastWidth:"+lastWidth+"<br>allRight:"+allRight);
		if(direct=="left"&&allLeft>=0){//判断是是否移动到左端
			
			return;
		}
		if(direct=="right"&&allRight>=0){//判断是否移动到右端
			if(source=="gongsichanpin"){//如果是需要个自动滚动的公司产品则对HTML进行改变
					$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(0).css("position","absolute");
					$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(0).css("left",lastLeft+lastWidth);		
					$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(1).css("position","relative");
					$(".gongsichanpinshow1 > div[class='gongsichanpinitem']").eq(0).remove().appendTo(".gongsichanpinshow1");		
			}else{
				return;
			}
		//alert($(".gongsichanpinshow1").html());
		}
		
		var flag=true;//默认继续移动
		var flag10=true;//默认左侧距离都大于10
		for(var i=0;i<itemsize;i++){//遍历确定是否有图片左侧小于10px
			var lef=$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left");
			lef=parseInt(lef);
			if(lef<15&&lef>0&&direct=="right"){
				flag10=false;
			}
			if(lef>-15&&lef<0&&direct=="left"){
				flag10=false;
			}
		}
		for(var i=0;i<itemsize;i++){//遍历图片，移动
			var lef=$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left");
			lef=parseInt(lef);
			
			if(flag10){ //判断是否有图片的左端，到显示框的左端的距离是否小于15，当大于15的时候，10像素移动
				if(direct=="right"){
					$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left",lef-10);
				}else{
					$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left",lef+10);
				}
			}else{
				if(direct=="right"){
					$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left",lef-1);
					if((lef-1)==0){
						flag=false;//恰好一个移动到位
					}
				}else{
					$("."+source+"show1 > div[class='"+source+"item']").eq(i).css("left",lef+1);
					if(lef+1==0){
						flag=false;//恰好一个移动到位
					}
				}
			}		}
		if(flag){
			setTimeout(function(){
				qixiawangzhanchange(source,direct,width,itemsize);
			},10);
		}
	}