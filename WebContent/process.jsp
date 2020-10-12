<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 引入第三方标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>休斯顿首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/zhenrong.css" />
<link rel="stylesheet" type="text/css" href="css/xiusi.css" />


<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script>
	// 图片名称
	var imgs = [ "pic_1.jpg", "pic_2.jpg", "pic_3.jpg", "pic_4.jpg",
			"pic_5.jpg" ]
	// 更换图片
	function clicks(n) {
		//设置图片src的值
		document.getElementsById("img")[0].setAttribute("src", "images/"
				+ imgs[n])
	}
	//刚开始默认值为0，即数组下标为0元素
	var i = 0;

	function js() {
		i = i < 4 ? i += 1 : i = 0; //三元运算符，当下标小于4的时每次加一，否则重新回到0                
		clicks(i); //调用函数
	}
	setInterval("js()", 3000) //每三秒执行一次js()函数
</script>
<style type="text/css">
.hidden {
	display: none;
}
</style>
</head>
<body>
	<div class="header">
		<div class="header_left">
			<div class="logo_1">
				<a href="https://china.nba.com/"><img src="img/nba-icon.png"></a>
			</div>
			<div class="logo_2">
				<div class="logo_2_img">
					<img src="./img/HOU_logo.svg">
				</div>

				<div class="text_xiu">
					<h1 style="margin-left: 20px; margin-top: 5px;">
						<i>休斯顿火箭队</i>
					</h1>
					<span style="margin-left: 20px;"><b>常规赛</b>&nbsp;&nbsp;<b>44胜-28负</b></span>|<span><b>西部第四名</b></span><br>
					<span style="margin-left: 20px;"><b>English</b></span>
				</div>
			</div>
		</div>
		<div class="header_right">
			<a href="https://weibo.com/login.php">
				<div class="weibo">
					<img src="img/微博.png">
					<p>休斯顿火箭队官方微博</p>
				</div>
			</a>

			<div class="zhu">
				<ul>
					<li>主教练</li>
					<li>分区</li>
					<li>球馆</li>
				</ul>
			</div>
			<div class="mike">
				<ul>
					<li>迈克 德安东尼</li>
					<li>西部|西南分区</li>
					<li>丰田中心球馆</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="meau_list">
		<div class="list">
			<ul>
				<a href="http://www.baidu.com" target="_blank"><li>首页</li></a>
				<a href="#"><li>视频</li></a>
				<a href="#"><li>新闻</li></a>

				<a href="ZhenrongServlet"><li>球员</li></a>

				<a href="#"><li>赛程</li></a>
				<a href="#"><li>统计</li></a>
				<a href="#"><li>图片</li></a>
				<a href="#"><li>商城</li></a>
			</ul>
		</div>
	</div>

	<div class="content">
		<div class="content_left">
			<div class="lunbo">
				<div id="demo" class="carousel slide" data-ride="carousel">

					<!-- 指示符 -->
					<ul class="carousel-indicators">
						<li id="img" data-target="#demo" data-slide-to="0" class="active"
							onclick="clicks(0)"></li>
						<li id="img" data-target="#demo" data-slide-to="1"
							onclick="clicks(1)"></li>
						<li id="img" data-target="#demo" data-slide-to="2"
							onclick="clicks(2)"></li>
						<li id="img" data-target="#demo" data-slide-to="3"
							onclick="clicks(3)"></li>
						<li id="img" data-target="#demo" data-slide-to="4"
							onclick="clicks(4)"></li>
					</ul>

					<!-- 轮播图片 -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="img/pic_1.jpg">
						</div>
						<div class="carousel-item">
							<img src="img/pic_2.jpg">
						</div>
						<div class="carousel-item">
							<img src="img/pic_3.jpg">
						</div>
						<div class="carousel-item">
							<img src="img/pic_5.jpg">
						</div>
						<div class="carousel-item">
							<img src="img/pic_5.jpg">
						</div>
					</div>

					<!-- 左右切换按钮 -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a> <a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
				</div>
			</div>
			<div class="news">
				<div class="news_title">
					<p>
						<b>最新资讯</b>
					</p>
				</div>
				<div class="news_content">
					<div class="news_1">
						<h5>
							<b>曝泰森-钱德勒对继续征战NBA持开放性态度</b>
						</h5>
						<div class="news_1_content">
							<div class="news_1_content_img">
								<img src="img/news_1_pic.jpg">
								<p>2020-09-15</p>
							</div>
							<div class="news_1_content_text">
								<p>北京时间9月15日，据ESPN记者MarcJ.Spears报道，火箭中锋泰森-钱德勒表示他对继续在联盟中征战持开放性态度。钱德勒是2001年的NBA榜眼，当时他被快船选中，随即被...</p>
								<p>评论0</p>
							</div>
						</div>
					</div>
					<div class="news_2">
						<h5>
							<b>曝泰森-钱德勒对继续征战NBA持开放性态度</b>
						</h5>
						<div class="news_2_content">
							<div class="news_2_content_img">
								<img src="img/news_1_pic.jpg">
								<p>2020-09-15</p>
							</div>
							<div class="news_2_content_text">
								<p>北京时间9月15日，据ESPN记者MarcJ.Spears报道，火箭中锋泰森-钱德勒表示他对继续在联盟中征战持开放性态度。钱德勒是2001年的NBA榜眼，当时他被快船选中，随即被...</p>
								<p>评论0</p>
							</div>
						</div>
					</div>
					<div class="news_3">
						<h5>
							<b>曝泰森-钱德勒对继续征战NBA持开放性态度</b>
						</h5>
						<div class="news_3_content">
							<div class="news_3_content_img">
								<img src="img/news_1_pic.jpg">
								<p>2020-09-15</p>
							</div>
							<div class="news_3_content_text">
								<p>北京时间9月15日，据ESPN记者MarcJ.Spears报道，火箭中锋泰森-钱德勒表示他对继续在联盟中征战持开放性态度。钱德勒是2001年的NBA榜眼，当时他被快船选中，随即被...</p>
								<p>评论0</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content_right">
			<div class="process">
				<div class="pro_top">
					<p>
						<b>球队赛程</b>
					</p>
				</div>
				<div class="pro_content">
					<table>
						<tr>
							<th>日期</th>
							<th>时间</th>
							<th>对手</th>
							<th>结果</th>
							<th>比分</th>
						</tr>
						<c:forEach var="i" begin="0" end="13">
							<tr>
								<td>${pr[i].date}</td>
								<td>${pr[i].time}</td>
								<td>${pr[i].opponent}</td>
								<td>${pr[i].result}</td>
								<td>${pr[i].score}</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div class="selectAll">
					<p id="all">查看全部</p>
					<script>
						$(document).ready(function() {
							$("#all").click(function() {
								$("tr").show();
							})
						})
					</script>
				</div>
			</div>
			<div class="jishu_count">
				<div class="jishu_top">
					<p>
						<b>技术统计</b>
					</p>
				</div>
				<div class="jishu_content">
					<img src="img/jishu_content.PNG">
				</div>
				<!-- 排行榜 -->
				<div class="ranking">
					<div class="ranking_title">
						<p>
							<b>排行榜</b>
						</p>
					</div>
					
					<div class="ranking_middle">
						<div class="western" id="western">
							<p>西部</p>
						</div>
						<div class="eastern"id="eastern">
							<p>东部</p>
						</div>
					</div>
					<div class="ranking_content">
						<img src="img/western_ranking.PNG" id="western_pic">
						 <img src="img/eastern_ranking.PNG" id="eastern_pic">
					</div>
				</div>
				
			</div>
			<!-- 数据王 -->
		<div class="dataking">
			<div class="data-title">
				<p>
					<b>数据王</b>
				</p>
			</div>
					<!-- 得分 -->
						<h3>得分</h3>
						<table class="defen">
							<tr class="tab">
							<td>1</td>
							<td>
								<p style="display: none;">詹姆斯 哈登</p>
								<img src="img/201935.png" style="display: block;" />
							</td>
							<td>
								<p class="new" style="display: block;">詹姆斯 哈登</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">29.6</p>
								</p>
								<p class="new" style="display: block;">后卫</p>
							</td>
							</tr>
							<tr class="tab" >
							<td>2</td>
							<td>
								<p>拉塞尔 威斯布鲁克</p>
								<img src="img/201566.png"/>
							</td>
							<td>
								<p class="new">拉塞尔 威斯布鲁克</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">17.9</p>
								</p>
								<p class="new">后卫</p>
							</td>
							</tr>
							<tr class="tab">
							<td>3</td>
							<td>
								<p>埃里克 戈登</p>
								<img src="img/200782.png" />
							</td>
							<td>
								<p class="new">埃里克 戈登</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">17.3</p>
								</p>
								<p class="new">后卫</p>
							</td>
							</tr>
						</table>
						
						<!-- 篮板 -->
						<h3>篮板</h3>
						<table class="lanban">
							<tr class="tab">
							<td>1</td>
							<td>
								<p style="display: none;">P.J. 塔克</p>
								<img src="img/200782.png" style="display: block;" />
							</td>
							<td>
								<p class="new" style="display: block;">P.J. 塔克</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">7.2</p>
								</p>
								<p class="new" style="display: block;">前锋</p>
							</td>
							</tr>
							<tr class="tab" >
							<td>2</td>
							<td>
								<p>拉塞尔 威斯布鲁克</p>
								<img src="img/201566.png"/>
							</td>
							<td>
								<p class="new">拉塞尔 威斯布鲁克</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">7.0</p>
								</p>
								<p class="new">后卫</p>
							</td>
							</tr>
							<tr class="tab">
							<td>3</td>
							<td>
								<p>丹尼尔 小豪斯</p>
								<img src="img/1627863.png" />
							</td>
							<td>
								<p class="new">丹尼尔 小豪斯</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">5.8</p>
								</p>
								<p class="new">前锋-后卫</p>
							</td>
							</tr>
						</table>
						
						<!-- 助攻 -->
						<h3>助攻</h3>
						<table class="zhugong">
							<tr class="tab">
							<td>1</td>
							<td>
								<p style="display: none;">詹姆斯 哈登</p>
								<img src="img/201935.png" style="display: block;" />
							</td>
							<td>
								<p class="new" style="display: block;">詹姆斯 哈登</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">7.7</p>
								</p>
								<p class="new" style="display: block;">后卫</p>
							</td>
							</tr>
							<tr class="tab" >
							<td>2</td>
							<td>
								<p>拉塞尔 威斯布鲁克</p>
								<img src="img/201566.png"/>
							</td>
							<td>
								<p class="new">拉塞尔 威斯布鲁克</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">4.6</p>
								</p>
								<p class="new">后卫</p>
							</td>
							</tr>
							<tr class="tab">
							<td>3</td>
							<td>
								<p>埃里克 戈登</p>
								<img src="img/201569.png" />
							</td>
							<td>
								<p class="new">埃里克 戈登</p>
								<p class="old">
									<p style="display: inline-block;">场均</p>
									<p style="display: inline-block; color: red;">3.0</p>
								</p>
								<p class="new">后卫</p>
							</td>
							</tr>
						</table>	
		</div>
		<!-- 数据王 -->
		</div>

		<!-- 尾部 -->
		<div class="foot">
			<div class="foot-top">
				<div class="foot-top-1">
					<div>
						<span>关于</span> <a href="#">NBA Store</a> <a href="#">NBA就职机会</a>
					</div>
					<div>
						<span>NBA赛事</span> <a href="#">选秀大会</a> <a href="#">jr.NBA高中赛</a>
					</div>
					<div>
						<span>专题</span> <a href="#">休赛季转会</a> <a href="#">联盟的骄傲</a> <a
							href="#">新春贺岁</a> <a href="#">扣响盛夏</a>
					</div>
					<div>
						<span>NBA101</span> <a href="#">NBA历史</a> <a href="#">NBA50大球星</a>
						<a href="#">NBA知识Q&A</a>
					</div>
					<div class="ewm">
						<span>腾讯体育</span> <img src="img/footer-sports-qrcode_c4a619.png" />
					</div>
					<div class="ewm">
						<span>NBA官方应用</span> <img src="img/footer-nba-qrcode_689c63.png" />
					</div>
				</div>
			</div>
			<div class="foot-bottom">
				<div>
					<p>&copy 2020年著作权 NBA 中国所有权</p>
					<p>NBA.com/China上除去使用条款中所特别提及的部分之外，其它任何内容都不得以任何形式被复制、再传播，或篡改。</p>
					<p>进入NBA.com/China后，即表示阁下同意遵守NBA.com/China的隐私政策和使用条款。</p>
					<p>有任何的建议和意见，都欢迎联络我们：NBAChinaInfo@nba.com</p>
					<p>有关NBA商品授权合作事宜，敬请联系:GMGChinaBusinessInquiry@nba.com</p>
				</div>
			</div>
		</div>

		<!-- 浮动窗口 -->
		<div class="fudong">
			<img src="img/close_684894.png" /> <img src="img/code_0e94bb.png" />

			<span> 下载NBA APP </span> <span> NBA官方资讯一手掌握 </span>
		</div>


		<div class="yincang">
			<!-- 球队 -->
			<div class="ballteam">
				<img src="img/ballteam.png">
			</div>
			<!-- 球员 -->
			<div class="player">
				<p>现役球员</p>
				<p>退役球员</p>
			</div>
			<!-- 赛程 -->
			<div class="time">
				<p>赛程</p>
				<p>季后赛</p>
				<p>2018-19赛季重要日期</p>
			</div>
			<!-- 排名 -->
			<div class="paiming">
				<p>联盟排名</p>
			</div>
			<!-- 数据 -->
			<div class="data">
				<p>球员数据</p>
				<p>球队数据</p>
				<p>高级球队数据</p>
				<p>联盟数据王</p>
			</div>
			<!-- 专题 -->
			<div class="topic">
				<p>NBA休赛期观察</p>
				<p>NBA历史</p>
				<p>NBA50大球星</p>
				<p>NBA扣响盛夏</p>
				<p>犯规手册</p>
				<p>NBAQ&A</p>
			</div>
			<!-- 更多  -->
			<div class="more">
				<p>选秀大会</p>
				<p>NBA乐园</p>
				<p>游戏</p>
				<p>NBA就职</p>
			</div>
		</div>

	</div>

	<script>
		$("tr:eq(8)").addClass("hidden");
		$("tr:eq(9)").addClass("hidden");
		$("tr:eq(10)").addClass("hidden");
		$("tr:eq(11)").addClass("hidden");
		$("tr:eq(12)").addClass("hidden");
		$("tr:eq(13)").addClass("hidden");
		$("tr:eq(14)").addClass("hidden");
	</script>
<!-- 排行榜 -->
	<script>
		$(document).ready(function() {
			$("#western").hover(function() {
				$(this).css("background-color", "gray");
				$("#western_pic").css("display", "block");
				$("#eastern_pic").css("display", "none");
			}, function() {
				$(this).css("background-color", "");
			}), 
			$("#eastern").hover(function() {
				$(this).css("background-color", "gray");
				$("#western_pic").css("display", "none");
				$("#eastern_pic").css("display", "block");
			}, function() {
				$(this).css("background-color", "");
			})

		})
	</script>
	<!-- 数据王js -->
		<script>
			$(document).ready(function(){
				$(".tab").mouseover(function(){
					$(this).css("background","#f4faff");
					$(this).find("img").show();
					$(this).find("img").siblings().hide();
					$(this).find("td:eq(2)").find("p").show();
					$(this).siblings().find("img").hide();
					$(this).siblings().find("img").siblings().show();
					$(this).siblings().find("td:eq(2)").find(".new").hide();
					$(this).siblings().css("background","white");
				})
			})
		</script>
	<!-- 数据王js -->
</body>
</html>