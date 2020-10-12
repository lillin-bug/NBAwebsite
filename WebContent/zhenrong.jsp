<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<!-- 引入jstl标签库 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/zhenrong.css" />
<script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
<script  type="text/javascript"  src="js/zhenrong.js"></script>

<title>球队阵容</title>
<style type="text/css">
			

</style>

</head>
<body>
		<!--头部-->
		<div class="header">
		<ul class="header_img">
			<li><img src="img/nba-icon.png" width="295px" height="80px"><img src="img/nba-com-icon.png" width="60px" height="25px"></li>
		</ul>
		<ul class="header_bottom">
			<li>首页</li>
			<li>视频</li>
			<li>新闻</li>
			<li>图集</li>
			<li>球队</li>
			<li>球员</li>
			<li>赛程</li>
			<li>排名</li>
			<li>数据</li>
			<li>专题</li>
			<li>不止篮球</li>
			<li>更多</li>	
		</ul>
		</div>
		<!-- 内容 -->
		<div class="body">
			
			<div class="content_left">
			   <a href="#">首页</a>
			   <a href="#">/球队列表</a>			   
			   /球队阵容
			</div>
			<div class="content">
			<!-- 导航条 -->
			<div class="content_top">
				<ul>
					<li>资料</li>
					<li>赛程</li>
					<li>数据</li>
					<li>数据王</li>
					<li class="zhen" style="color: #e11647;">阵容</li>
					<li>热区</li>
					<li>对比</li>
				</ul>	
			</div>
			
			<!-- 队标、得分、排名... -->
			<div class="content_mid">
				<div>
					<img src="img/HOU_logo.svg" width="245px" height="190px">
				</div>
				<div>
					<h2>休斯敦&nbsp;火箭</h2>
					<p>西部联盟中排名#14</p>
					<p><b>教练:</b>迈克 德安东尼</p>
				</div>
				<div>
					<p style="font-size: 30px;">
						44
						<span style="font-size: 14px;">胜</span>
						-28
						<span style="font-size: 14px;">负</span>
					</p>
				</div>
				<div>	
					<a href="#" class="rank">2019-2020季后赛排名</a>
				</div>
				<div>
					<ul class="rank_1">
						<li>9<sup>th</sup></li>
						<li>12<sup>th</sup></li>
						<li>15<sup>th</sup></li>
						<li>5<sup>th</sup></li>
					</ul>
				</div>
				<div>
					<ul class="rank_2">
						<li>场均得分</li>
						<li>场均助攻</li>
						<li>场均篮板</li>
						<li>对手得分</li>
					</ul>
				</div>
				
			</div>
			
			<!-- 阵容 -->
			<div class="table-container">
				<div class="title">
					<span>2019-2020阵容</span>
				</div>
				<div class="title-right">
					<div>
						<span>信息</span>
					</div>
					<div>
						<span>数据</span>
					</div>
				</div>
				<div class="table">
					<table width="1200px" height="180px">
					<thead style="background-color: #032f4f; color: white;">
						<tr height="40px">
							<th>姓名</th>
							<th>位置</th>
							<th>身高</th>
							<th>体重</th>
							<th>球号</th>
							<th>生日</th>
							<th>经验</th>
							<th>进入NBA之前</th>
							<th>国籍</th>
						</tr>
					</thead>	
						<c:forEach items="${list}" var="user" begin="0" step="1" end="17">
						<tr>
							<td width="140px" style="padding-bottom: 20px" >
								<div class="head1">
								<img src="${user.img}" />
								</div>
								<div class="text1">
									<p><a href="#">${user.xing}</a></p>
									<p><a href="#">${user.ming}</a></p>
								</div>
							</td>
							<td width="120px" height="40px" align="center" >	
									${user.site}	
							</td>
							<td width="120px" height="40px" align="center">	
									${user.height}	
							</td>
							<td width="120px" align="center">
									${user.weight}
							</td>
							<td width="120px" align="center">
									${user.id}
							</td>
							<td width="120px" align="center">
									${user.birthday}
							</td>
							<td width="120px" align="center">
									${user.exe}
							</td>
							<td width="120px" align="center">
									${user.before}
							</td>
							<td width="120px" align="center">
									${user.state}
							</td>		
						</tr>
						</c:forEach>
						
					</table>
					
				</div>
			</div>
			</div>
			
			<!-- 尾部 -->
		<div class="foot">
			<div class="foot-top">
				<div class="foot-top-1">
				<div>
					<span>关于</span>
					<a href="#">NBA Store</a>
					<a href="#">NBA就职机会</a>
				</div>
				<div>
					<span>NBA赛事</span>
					<a href="#">选秀大会</a>
					<a href="#">jr.NBA高中赛</a>
				</div>
				<div>
					<span>专题</span>
					<a href="#">休赛季转会</a>
					<a href="#">联盟的骄傲</a>
					<a href="#">新春贺岁</a>
					<a href="#">扣响盛夏</a>
				</div>
				<div>
					<span>NBA101</span>
					<a href="#">NBA历史</a>
					<a href="#">NBA50大球星</a>
					<a href="#">NBA知识Q&A</a>
				</div>
				<div class="ewm">
					<span>腾讯体育</span>
					<img src="img/footer-sports-qrcode_c4a619.png" />
				</div>
				<div class="ewm">
					<span>NBA官方应用</span>
					<img src="img/footer-nba-qrcode_689c63.png" />
				</div>
			</div>
		</div>	
		<div class="foot-bottom">
			<div>
				<p>&copy 2020年著作权 NBA 中国所有权 </p>
				<p>NBA.com/China上除去使用条款中所特别提及的部分之外，其它任何内容都不得以任何形式被复制、再传播，或篡改。 </p>
				<p>进入NBA.com/China后，即表示阁下同意遵守NBA.com/China的隐私政策和使用条款。</p>
				<p>有任何的建议和意见，都欢迎联络我们：NBAChinaInfo@nba.com</p>
				<p>有关NBA商品授权合作事宜，敬请联系:GMGChinaBusinessInquiry@nba.com</p>
			</div>
		</div>
		</div>
		
		<!-- 浮动窗口 -->
		<div class="fudong">
		    <img src="img/close_684894.png" />
			<img src="img/code_0e94bb.png"/>
			
			<span>
				下载NBA APP
			</span>
			<span>
				NBA官方资讯一手掌握
			</span>
		</div>
		
	<!-- 隐藏的 -->
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
		<!-- 隐藏的 -->
		</div>
	</body>
</html>