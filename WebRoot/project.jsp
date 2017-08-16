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
		<link rel="stylesheet" media="screen" href="css/pro.css" />
		<!-- ENDS JCarousel -->
		
		<!-- GOOGLE FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css'>

		<!-- modernizr -->
		<script src="js/modernizr.js"></script>
		
		<!-- SKIN -->
		<link rel="stylesheet" media="all" href="css/skin.css"/>
		
		<!-- Less framework -->
		<link rel="stylesheet" media="all" href="css/lessframework.css"/>
		
		<!-- jplayer -->
		<link href="player-skin/jplayer-black-and-yellow.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
		
		<!-- flexslider -->
		<link rel="stylesheet" href="css/flexslider.css" >
		<script src="js/jquery.flexslider.js"></script>
		<style type="text/css">
		</style>
		<script type="text/javascript">
			
			$(".reply").live("click",function(){
				//alert(1);
				//alert(this.text);
				var pa=$(this).prev();
				var addreply="<dd class='replydd'><div class='pepole'><c_rt:if test='${comment.anonymity==0}'>${comment.userName }回复${comment.userName }</c_rt:if><em> ${comment.commentDateString }</em></div></div><div class='nr'>我是测试的内容</div></dd>";
				addreply+="<a style='float:right;'>回复</a>"
				pa.append(addreply);
			});

			$("#look").live("click",function(){
			
				var data=$(this).attr("data");
				data=(data*1)+1;
				//alert(data%2);
				$(this).attr("data",data);
				//data=data%2;
				//alert(data);
				
				if(data%2==0){
					$(this).text("取消关注")
				}else{
					$(this).text("关注")
				}
				
				
			});

			$("#love").live("click",function(){
			
				var data=$(this).attr("data");
				data=(data*1)+1;
				//alert(data%2);
				$(this).attr("data",data);
				//data=data%2;
				//alert(data);
				
				if(data%2==0){
					$(this).attr("class","like");
				}else{
					$(this).attr("class","liking");
				}
				
				
			});

			
		</script>
	</head>
	
	
	<body>
		<!-- HEADER -->
		<header>
			<div class="wrapper cf">
				
				<div id="logo">
					<a href="index.html"><img  src="img/logo.png" alt="Simpler"></a>
				</div>
				
				<!-- nav -->
				<ul id="nav" class="sf-menu">
					<li><a href="index.html"><span>HOME</span></a></li>
					<li><a href="blog.html">BLOG</a></li>
					<li><a href="page.html">ABOUT</a>
						<ul>
							<li><a href="page-elements.html">Elements</a></li>
							<li><a href="page-icons.html">Icons</a></li>
							<li><a href="page-typography.html">Typography</a></li>
						</ul>
					</li>
					<li class="current-menu-item"><a href="portfolio.html">WORK</a></li>
					<li><a href="contact.html">CONTACT</a></li>
					
				</ul>
				<div id="combo-holder"></div>
				<!-- ends nav -->

			</div>
		</header>
		<!-- ENDS HEADER -->
		
		<!-- MAIN -->
		<div id="main">
			<div class="wrapper cf">
			
			
				
			<!-- portfolio content-->
        	<div id="portfolio-content" class="cf">        	
				
				
				
				
				<!-- project pager -->
				<!-- ENDS project pager -->
					
					
					<!-- project box -->
				<div id="project-box" class="cf">
				
				
					
				
				
					<!-- slider -->
					<div class="project-slider">
				        <div class="flexslider">
						  <ul class="slides">
						   <li class="showPhoto" >
						      <img  height="367" style="display:block;margin:0 auto;"  src="img/dummies/slides/26.jpg" alt="alt text" />
						    </li>
						    <li>
						      <img src="img/dummies/slides/01.jpg" alt="alt text" />
						    </li>
						    <li>
						      <img src="img/dummies/slides/02.jpg" alt="alt text" />
						    </li>
						    <li>
						      <img src="img/dummies/slides/03.jpg" alt="alt text" />
						    </li>
						    
						  </ul>
						</div>
					</div>
		        	<!-- ENDS slider -->


					<div class="info" id="mInfo" style="font-size:15px" >
	        			<p><strong>Client </strong> Mr. Tanaka&nbsp;&nbsp;<a id="look" data="1" >关注</a></p>
	        			<p><strong>Date </strong> April 25, 2012</p>
	        			<p><a href="http://www.luiszuno.com" class="launch" >Launch Project</a>&nbsp;&nbsp;&nbsp;<a id="love" class="liking" data="1"></a></p>
	        			
	        		</div>
	        		
	        		<!-- entry-content -->
	        		<div class="entry-content">
	        		
	        			<h2 class="heading">Project Name</h2>
	        			
	        			<div class="multicolumn">
	        			<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>
	        			
	        			
	        			</div>

											<!--/*评论*/-->
						<div class="Comment">
							<div class="kt">
								<c_rt:if test="${empty comments }">
									<div class="them">暂时没人评论。。。</div>
								</c_rt:if>
							</div>

							<dl class="comment_dl">
								<div class="willComment">
									<c_rt:if test="${!empty userInfo }">
										<c_rt:if test="${userOrder.commentState==0 }">
											<dt>
												<span class="jiao"></span>
												<textarea class="comment"></textarea>
												<div class="btn_box">
													<span>140字<input type="checkbox" name="anonymity"
														value="1" />是否匿名</span><a class="fb">我要发布</a>
												</div>
											</dt>
										</c_rt:if>
									</c_rt:if>
								</div>
								<c_rt:if test="${empty userInfo}">您未<a
										href="UserinfoAction?op=login"><b
										style="color:red;text-decoration:underline;">登陆</b>
									</a>,<a href="UserinfoAction?op=login"><b
										style="color:red;text-decoration:underline;">登陆</b>
									</a>之后才能使用评论功能<br />
									<br />
								</c_rt:if>
								<div class="addComment"></div>

								<c_rt:forEach var="comment" items="${comments }">
									<dd id="allComments">
										<div class="Portrait_small" style="display:inline">
											<img src="images/Portrait_small.jpg" />
										</div>
										<div class="pepole" style="display:inline">
											<c_rt:if test="${comment.anonymity==1 }">匿名用户</c_rt:if>
											<c_rt:if test="${comment.anonymity==0}">${comment.userName }</c_rt:if>
											<em>${comment.commentDateString }</em>
										</div>
										<div class="nr">我是测试我是测试的内容我是测试的内容我是测试的内容我是测试的内容我是测试的内容</div>
										<a id="cssss" style="float:right;">回复</a>
										<dl >

										</dl>
										
										<a class="reply" onclick="cs(this)" style="float:right;">查看回复&nbsp;</a>
									</dd>	
								</c_rt:forEach>
								<!--<c_rt:if test="${!empty comments }">
									<div class="moreComments"></div>
									<div class="addComments">
										<a align='center' class="clickComments">显示更多评论>></a>
									</div>
								</c_rt:if>-->
								<div class="moreComments"></div>
									<dl class="comment_dl">
										<div class="addComments">
											<a align='center' class="clickComments">显示更多评论>></a>
										</div>
									</dl>
							</dl>
						</div>
						<!--/*评论 end*/-->
	        		</div>
	        		<!-- ENDS entry content -->
	        		
	        	</div>
		    	<!-- ENDS project box -->
					
					
				<!-- related -->
			
				<!-- ENDS related -->
									
				
    		</div>
    		<!-- ENDS portfolio content-->
			
			
			
			</div><!-- ENDS WRAPPER -->
		</div>
		<!-- ENDS MAIN -->
		
		
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


				$('.fb')
				.click(
						function() {
							var text = $('.comment').val();
							if (text.length > 5) {
								/**
								var anonymity = 0;

								var OrderId = "${userOrder.orderId }";
								var moviename = "${movie.movieName }";
								var movieid = "${movie.movieId }";
								var userName = "${userOrder.userName}";
								if ($("input[name='anonymity']").is(":checked")) {
									anonymity = 1;
									userName = "匿名用户";
								}
								var score = $("input[name='score']").val();
								var time = getNowFormatDate();

								var comment = "<dd><div class='Portrait_small'><img src='images/Portrait_small.jpg' /></div><div class='pepole'>"
										+ userName
										+ "<div class='commentStar'  data-score="+score+" style='display:inline;width:120px;'></div><em><b>&nbsp;&nbsp;"
										+ score
										+ "分&nbsp;&nbsp;</b>"
										+ time
										+ "</em></div><div class='nr'>"
										+ text
										+ "</div></dd>";
								$.post("MovieInfo.action", {
									methon : 'commentMovie',
									orderid : OrderId,
									star : score,
									commentval : text,
									amy : anonymity,
									movieId : movieid
								}, function() {

								});
								**/
								var comment = "<dd><div class='Portrait_small' style='display:inline'><img src='images/Portrait_small.jpg' /></div><div class='pepole' style='display:inline'>${comment.userName }</c_rt:if><em>${comment.commentDateString }</em></div><div class='nr'>"+text+"</div><a id='cssss' style='float:right;'>回复</a><dl ></dl><a class='reply' onclick='cs(this)'' style='float:right;'>查看回复&nbsp;</a></dd>";
								$("#allComments").prepend(comment);
								$(".kt").html("<div class='them'>${movie.movieName }全部评论</div>");
								if (commentMax <= commentcount) {
									$("dd:last").remove();
								}
							} else {
								alert("评论内容请超过5个字符");
							}
						});

				$(".clickComments").live('click',function() {
							//alert(1);
							/**
							$.get("MovieInfo.action?methon=getComment&paging="+ page+ "&movieid=${movie.movieId }",function(date) {
												var comment = eval("(" + date+ ")");
												commentcount = comment.length;
												alert(commentcount);
												for ( var i = 0; i < commentcount; i++) {

													var userName = comment[i].userName;
													if (comment[i].anonymity == 1) {
														userName = "匿名用户";
													}
													var score = comment[i].orderStar;
													var time = comment[i].commentDateString;
													var text = comment[i].commentContent;

													var addComment = "<dd><div class='Portrait_small'><img src='images/Portrait_small.jpg' /></div><div class='pepole'>"
															+ userName
															+ "<div class='commentStar'  data-score="+score+" style='display:inline;width:120px;'></div><em><b>&nbsp;&nbsp;"
															+ score
															+ "分&nbsp;&nbsp;</b>"
															+ time
															+ "</em></div><div class='nr'>"
															+ text
															+ "</div></dd>";

													$(".moreComments").append(
															addComment);
												}
												$(".commentStar")
														.raty(
																{
																	score : function() {
																		return $(
																				this)
																				.attr(
																						'data-score');
																	},
																	readOnly : true,
																	path : "images/star"
																});
												if (commentcount < commentMax) {
													$(".addComments").html(
															"没有评论了");
												}
											});**/
											


													var addComment ="<dd><div class='Portrait_small' style='display:inline'><img src='images/Portrait_small.jpg' /></div><div class='pepole' style='display:inline'>${comment.userName }</c_rt:if><em>${comment.commentDateString }</em></div><div class='nr'>我是测试我是测试的内容我是测试的内容我是测试的内容我是测试的内容我是测试的内容</div><a id='cssss' style='float:right;'>回复</a><dl ></dl><a class='reply' onclick='cs(this)'' style='float:right;'>查看回复&nbsp;</a></dd>";

													$(".moreComments").append(addComment);


						});
	</script>
</html>
