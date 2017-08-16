<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c_rt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html class="no-js">

	<head>
		<meta charset="utf-8"/>
		<title>FOLDER TEMPLATE</title>
		 
		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link rel="stylesheet" media="all" href="css/style.css"/>
		<link href="css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<!-- Adding "maximum-scale=1" fixes the Mobile Safari auto-zoom bug: http://filamentgroup.com/examples/iosScaleBug/ -->		
				
		<!-- JS -->
		<script src="js/jquery-1.7.1.min.js"></script>
		<script src="js/custom.js"></script>
		<script src="js/tabs.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
		<script src="js/jquery.columnizer.min.js"></script>
		
		<!-- Isotope -->
		<script src="js/jquery.isotope.min.js"></script>
		
		<!-- Lof slider -->
		<script src="js/jquery.easing.js"></script>
		<script src="js/lof-slider.js"></script>
		<link rel="stylesheet" href="css/lof-slider.css" media="all"  /> 
		<!-- ENDS slider -->
		
		<!-- Tweet -->
		<link rel="stylesheet" href="css/jquery.tweet.css" media="all"  /> 
		<script src="js/tweet/jquery.tweet.js" ></script> 
		<!-- ENDS Tweet -->
		
		<!-- superfish -->
		<link rel="stylesheet" media="screen" href="css/superfish.css" /> 
		<script  src="js/superfish-1.4.8/js/hoverIntent.js"></script>
		<script  src="js/superfish-1.4.8/js/superfish.js"></script>
		<script  src="js/superfish-1.4.8/js/supersubs.js"></script>
		<!-- ENDS superfish -->
		
		<!-- prettyPhoto -->
		<script  src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
		<link rel="stylesheet" href="js/prettyPhoto/css/prettyPhoto.css"  media="screen" />
		<!-- ENDS prettyPhoto -->
		
		<!-- poshytip -->
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-twitter/tip-twitter.css"  />
		<link rel="stylesheet" href="js/poshytip-1.1/src/tip-yellowsimple/tip-yellowsimple.css"  />
		<script  src="js/poshytip-1.1/src/jquery.poshytip.min.js"></script>
		<!-- ENDS poshytip -->
		
		<!-- JCarousel -->
		<script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
		<link rel="stylesheet" media="screen" href="css/carousel.css" /> 
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="js/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="css/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="css/lessframework.css"/>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="css/flexslider.css" >
		<script src="js/jquery.flexslider.js"></script>

		<style type="text/css">
			.cell{
				border:5 #000 solid;

			}
		</style>
		<script type="text/javascript">
			;(function($){
   var 
   //参数
   setting={
      column_width:300,//列宽
	  column_className:'waterfall_column',//列的类名
	  column_space:10,//列间距
	  cell_selector:'.cell',//要排列的砖块的选择器，context为整个外部容器
	  img_selector:'img',//要加载的图片的选择器
	  auto_imgHeight:true,//是否需要自动计算图片的高度
	  fadein:true,//是否渐显载入
	  fadein_speed:600,//渐显速率，单位毫秒
	  insert_type:1, //单元格插入方式，1为插入最短那列，2为按序轮流插入
	  getResource:function(index){ }  //获取动态资源函数,必须返回一个砖块元素集合,传入参数为加载的次数
   },
   //
   waterfall=$.waterfall={},//对外信息对象
   $waterfall=null;//容器
   waterfall.load_index=0, //加载次数
   $.fn.extend({
       waterfall:function(opt){
		  opt=opt||{};  
	      setting=$.extend(setting,opt);
		  $waterfall=waterfall.$waterfall=$(this);
		  waterfall.$columns=creatColumn();
		  render($(this).find(setting.cell_selector).detach(),false); //重排已存在元素时强制不渐显
		  waterfall._scrollTimer2=null;
		  $(window).bind('scroll',function(){
		     clearTimeout(waterfall._scrollTimer2);
			 waterfall._scrollTimer2=setTimeout(onScroll,300);
		  });
		  waterfall._scrollTimer3=null;
		  $(window).bind('resize',function(){
		     clearTimeout(waterfall._scrollTimer3);
			 waterfall._scrollTimer3=setTimeout(onResize,300);
		  });
	   }
   });
   function creatColumn(){//创建列
      waterfall.column_num=calculateColumns();//列数
	  //循环创建列
	  var html='';
	  for(var i=0;i<waterfall.column_num;i++){
	     html+='<div class="'+setting.column_className+'" style="width:'+setting.column_width+'px; display:inline-block; *display:inline;zoom:1; margin-left:'+setting.column_space/2+'px;margin-right:'+setting.column_space/2+'px; vertical-align:top; overflow:hidden"></div>';
	  }
	  $waterfall.prepend(html);//插入列
	  return $('.'+setting.column_className,$waterfall);//列集合
   }
   function calculateColumns(){//计算需要的列数
      var num=Math.floor(($waterfall.innerWidth())/(setting.column_width+setting.column_space));
	  if(num<1){ num=1; } //保证至少有一列
	  return num;
   }
   function render(elements,fadein){//渲染元素
      if(!$(elements).length) return;//没有元素
      var $columns = waterfall.$columns;
      $(elements).each(function(i){										
		  if(!setting.auto_imgHeight||setting.insert_type==2){//如果给出了图片高度，或者是按顺序插入，则不必等图片加载完就能计算列的高度了
		     if(setting.insert_type==1){ 
			    insert($(elements).eq(i),setting.fadein&&fadein);//插入元素
			 }else if(setting.insert_type==2){
			    insert2($(elements).eq(i),i,setting.fadein&&fadein);//插入元素	 
		     }
			 return true;//continue
		  }						
		  if($(this)[0].nodeName.toLowerCase()=='img'||$(this).find(setting.img_selector).length>0){//本身是图片或含有图片
		      var image=new Image;
			  var src=$(this)[0].nodeName.toLowerCase()=='img'?$(this).attr('src'):$(this).find(setting.img_selector).attr('src');
			  image.onload=function(){//图片加载后才能自动计算出尺寸
			      image.onreadystatechange=null;
				  if(setting.insert_type==1){ 
				     insert($(elements).eq(i),setting.fadein&&fadein);//插入元素
				  }else if(setting.insert_type==2){
					 insert2($(elements).eq(i),i,setting.fadein&&fadein);//插入元素	 
				  }
				  image=null;
			  }
			  image.onreadystatechange=function(){//处理IE等浏览器的缓存问题：图片缓存后不会再触发onload事件
			      if(image.readyState == "complete"){
					 image.onload=null;
					 if(setting.insert_type==1){ 
					    insert($(elements).eq(i),setting.fadein&&fadein);//插入元素
					 }else if(setting.insert_type==2){
					    insert2($(elements).eq(i),i,setting.fadein&&fadein);//插入元素	 
					 }
					 image=null;
				  }
			  }
			  image.src=src;
		  }else{//不用考虑图片加载
		      if(setting.insert_type==1){ 
				 insert($(elements).eq(i),setting.fadein&&fadein);//插入元素
			  }else if(setting.insert_type==2){
				 insert2($(elements).eq(i),i,setting.fadein&&fadein);//插入元素	 
			  }
		  }						
	  });
   }
   function public_render(elems){//ajax得到元素的渲染接口
   	  render(elems,true);	
   }
   function insert($element,fadein){//把元素插入最短列
      if(fadein){//渐显
	     $element.css('opacity',0).appendTo(waterfall.$columns.eq(calculateLowest())).fadeTo(setting.fadein_speed,1);
	  }else{//不渐显
         $element.appendTo(waterfall.$columns.eq(calculateLowest()));
	  }
   }
   function insert2($element,i,fadein){//按序轮流插入元素
      if(fadein){//渐显
	     $element.css('opacity',0).appendTo(waterfall.$columns.eq(i%waterfall.column_num)).fadeTo(setting.fadein_speed,1);
	  }else{//不渐显
         $element.appendTo(waterfall.$columns.eq(i%waterfall.column_num));
	  }
   }
   function calculateLowest(){//计算最短的那列的索引
      var min=waterfall.$columns.eq(0).outerHeight(),min_key=0;
	  waterfall.$columns.each(function(i){						   
		 if($(this).outerHeight()<min){
		    min=$(this).outerHeight();
			min_key=i;
		 }							   
	  });
	  return min_key;
   }
   function getElements(){//获取资源
      $.waterfall.load_index++;
      return setting.getResource($.waterfall.load_index,public_render);
   }
   waterfall._scrollTimer=null;//延迟滚动加载计时器
   function onScroll(){//滚动加载
      clearTimeout(waterfall._scrollTimer);
	  waterfall._scrollTimer=setTimeout(function(){
	      var $lowest_column=waterfall.$columns.eq(calculateLowest());//最短列
		  var bottom=$lowest_column.offset().top+$lowest_column.outerHeight();//最短列底部距离浏览器窗口顶部的距离
		  var scrollTop=document.documentElement.scrollTop||document.body.scrollTop||0;//滚动条距离
		  var windowHeight=document.documentElement.clientHeight||document.body.clientHeight||0;//窗口高度
		  if(scrollTop>=bottom-windowHeight){
			 render(getElements(),true);
		  }
	  },100);
   }
   function onResize(){//窗口缩放时重新排列
      if(calculateColumns()==waterfall.column_num) return; //列数未改变，不需要重排
      var $cells=waterfall.$waterfall.find(setting.cell_selector);
	  waterfall.$columns.remove();
	  waterfall.$columns=creatColumn();
      render($cells,false); //重排已有元素时强制不渐显
   }
})(jQuery);

		</script>

	</head>
	
	
	<body class="home">
		
		<!-- HEADER -->
		<header>
			<div class="wrapper cf">
				
				<div id="logo">
					<a href="index.html"><img  src="img/logo.png" alt="Simpler"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li class="current-menu-item"><a href="index.html">HOME</a></li>
					<li><a href="blog.html">BLOG</a></li>
					<li><a href="page.html">ABOUT</a>
						<ul>
							<li><a href="page-elements.html">Elements</a></li>
							<li><a href="page-icons.html">Icons</a></li>
							<li><a href="page-typography.html">Typography</a></li>
						</ul>
					</li>
					<li><a href="portfolio.html">WORK</a></li>
					<li><a href="contact.html">CONTACT</a></li>
				</ul>
				<div id="combo-holder"></div>
				<!-- ends nav -->
				
				
				<!-- SLIDER -->				
				<div id="home-slider" class="lof-slidecontent">
					
					<div class="preload"><div></div></div>
					
					<!-- slider content --> 
					<div class="main-slider-content" >
					<ul class="sliders-wrap-inner">
					    <li>
					          <img src="img/dummies/slides/01.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>Lorem ipsum dolor</h4>
					            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est...
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="img/dummies/slides/02.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>Lorem ipsum dolor</h4>
					            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est...
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="img/dummies/slides/03.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>Lorem ipsum dolor</h4>
					            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est...
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="img/dummies/slides/04.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>Lorem ipsum dolor</h4>
					            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est...
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="img/dummies/slides/05.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>Lorem ipsum dolor</h4>
					            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est...
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="img/dummies/slides/06.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>Lorem ipsum dolor</h4>
					            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est...
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					    <li>
					          <img src="img/dummies/slides/07.jpg" title="" alt="alt" />           
					          <div class="slider-description">
					            <h4>Lorem ipsum dolor</h4>
					            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est...
					            <a class="link" href="#">Read more </a>
					            </p>
					         </div>
					    </li>
					    
					  </ul>  	
					</div>
					<!-- ENDS slider content --> 
				           
					<!-- slider nav -->
					<div class="navigator-content">
					  <div class="navigator-wrapper">
					        <ul class="navigator-wrap-inner">
					           <li><img src="img/dummies/slides/01_thumb.jpg" alt="alt" /></li>
					           <li><img src="img/dummies/slides/02_thumb.jpg" alt="alt" /></li>
					           <li><img src="img/dummies/slides/03_thumb.jpg" alt="alt" /></li>
					           <li><img src="img/dummies/slides/04_thumb.jpg" alt="alt" /></li>
					           <li><img src="img/dummies/slides/05_thumb.jpg" alt="alt" /></li>
					           <li><img src="img/dummies/slides/06_thumb.jpg" alt="alt" /></li>
					           <li><img src="img/dummies/slides/07_thumb.jpg" alt="alt" /></li>
					        </ul>
					  </div>
					  <div class="button-next">Next</div>
					  <div  class="button-previous">Previous</div>
					  <!-- REMOVED TILL FIXED <div class="button-control"><span>STOP</span></div> -->
					</div> 
					<!-- slider nav -->
					
					
				          
				 </div> 
				<!-- ENDS SLIDER -->





			</div>
		</header>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
			
			
			
			
				
			<!-- featured -->
			<div class="home-featured">
			
				<ul id="filter-buttons">
					<li ><a href="#" data-filter=".hot" class="selected" id="chooseHot">hot</a></li>
					<li ><a href="#" data-filter=".look" id="chooseLike">like</a></li>		
				</ul>
				
				<!-- Filter container -->
				<div id="filter-container" class="cf">

				</div><!-- ENDS Filter container -->
					<div id="waterfall" class="hotview">
					   
					</div>
										
					<div id="waterfall" class="lookview" style="display: display">
					   
					</div>
				
			</div>
			<!-- ENDS featured -->
			
			
			
			
			</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
		
		<div id="sdada">dasdasd</div>
		<!-- FOOTER -->
		<footer>
			<div class="wrapper cf">
			
				<!-- widgets -->
				<ul  class="widget-cols cf">
					<li class="first-col">
						
						<div class="widget-block">
							<h4>RECENT POSTS</h4>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
							<div class="recent-post cf">
								<a href="#" class="thumb"><img src="img/dummies/54x54.gif" alt="Post" /></a>
								<div class="post-head">
									<a href="#">Pellentesque habitant morbi senectus</a><span> March 12, 2011</span>
								</div>
							</div>
						</div>
					</li>
					
					<li class="second-col">
						
						<div class="widget-block">
							<h4>ABOUT</h4>
							<p>Folder it's completely free this means you don't have to pay anything <a href="http://luiszuno.com/blog/license" tar >read license</a>.</p> 
							<p>Visit <a href="http://templatecreme.com/" >Template Creme</a> and find the most beautiful free templates up to date.</p>
						</div>
						
					</li>
					
					<li class="third-col">
						
						<div class="widget-block">
							<div id="tweets" class="footer-col tweet">
		         				<h4>TWITTER WIDGET</h4>
		         			</div>
		         		</div>
		         		
					</li>
					
					<li class="fourth-col">
						
						<div class="widget-block">
							<h4>CATEGORIES</h4>
							<ul>
								<li class="cat-item"><a href="#" >Design</a></li>
								<li class="cat-item"><a href="#" >Photo</a></li>
								<li class="cat-item"><a href="#" >Art</a></li>
								<li class="cat-item"><a href="#" >Game</a></li>
								<li class="cat-item"><a href="#" >Film</a></li>
								<li class="cat-item"><a href="#" >TV</a></li>
							</ul>
						</div>
		         		
					</li>	
				</ul>
				<!-- ENDS widgets -->	
				
				
				<!-- bottom -->
				<div class="footer-bottom">
					<div class="left">by <a href="http://luiszuno.com" >luiszuno.com</a></div>
						<ul id="social-bar" class="cf sb">
							<li><a href="http://www.facebook.com"  title="Become a fan" class="facebook">Facebbok</a></li>
							<li><a href="http://www.twitter.com" title="Follow my tweets" class="twitter"></a></li>
							<li><a href="http://plus.google.com" title="Enter my circles" class="plus"></a></li>
						</ul>
				</div>	
				<!-- ENDS bottom -->
			
			</div>
		</footer>
		<!-- ENDS FOOTER -->
		
	</body>
	<script type="text/javascript">
			var viewstate=$(".hotview");
			var state="hot";
			$("#chooseHot").click(function(){
				state="hot";
				viewstate=$(".hotview");
				viewstate.waterfall(opt);
				$(".lookview").css("display","none");
				$(".hotview").css("display","block");

			});

			$("#chooseLike").click(function(){
				state="like";
				viewstate=$(".lookview");
				viewstate.waterfall(opt);
				$(".lookview").css("display","block");
				$(".hotview").css("display","none");
			});



		var opt={
		  getResource:function(index,render){//index为已加载次数,render为渲染接口函数,接受一个dom集合或jquery对象作为参数。通过ajax等异步方法得到的数据可以传入该接口进行渲染，如 render(elem)
		  		//alert(state);
		  		var hotpage=1;
		  		var likepage=1;
		  		if(state=="hot");{
		  			  if(index>=7) index=index%7+1;
					  var html='';
					  for(var i=20*(index-1);i<20*(index-1)+20;i++){
						 var k='';
						 for(var ii=0;ii<3-i.toString().length;ii++){
					        k+='0';
						 }
						 k+=i;
					     var src="http://cued.xunlei.com/demos/publ/img/P_"+k+".jpg";
						 html+='<div class="cell"><a href="#"><img src="'+src+'" /></a><p>hot'+k+'</p>asdqwdasdwefafdweafasdffcvbjhvytcjhvutfcvjgjgcwefawcaewf</div>';
					  }

		  		}
		  		if(state=="like"){
		  			  if(index>=7) index=index%7+1;
					  var html='';
					  for(var i=20*(index-1);i<20*(index-1)+20;i++){
						 var k='';
						 for(var ii=0;ii<3-i.toString().length;ii++){
					        k+='0';
						 }
						 k+=i;
					     var src="http://cued.xunlei.com/demos/publ/img/P_"+k+".jpg";
						 html+='<div class="cell"><a href="#"><img src="'+src+'" /></a><p>like'+k+'</p>asdqwdasdwefafdweafasdffcvbjhvytcjhvutfcvjgjgcwefawcaewf</div>';
					  }
		  		}
			
			  return $(html);
		  },
		  auto_imgHeight:true,
		  insert_type:1
		}
		
			//$('.hotview').waterfall(opt);

			//$('.lookview').waterfall(opt);
			viewstate.waterfall(opt);
	
		</script>
	
	
</html>
