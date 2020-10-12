<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册登录</title>
<!-- 引入css -->
		<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
		<!-- 引入js -->
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<style>
			*{
				margin: 0;
				padding: 0;
			}
			body,html{
				font-family: 'Microsoft YaHei', '微软雅黑', 'Microsoft JhengHei', '华文细黑', STHeiti, MingLiu;
				font-size: 16px;
				color: white;
				text-shadow: 0 1px 2px darkgray;
				width: 100%;
				height: 100%;
			}
			#bg_pic{
				width: 100%;
				height: 100%;
				/* 处理替换元素自适用问题 */
				object-fit: cover;
				position: absolute;
				z-index: -99;
			}
			#form_re{
				width: 400px;
				height: 300px;
				position: absolute;
				top: 35%;
				left: 40%;
			}
		</style>
</head>
<body>
<img src="img/register.jpg" id="bg_pic">
		<div id="form_re">
			<form action="regLoginServlet" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">用户名:</label> <input type="text" class="form-control" id="username" name="username"
					 aria-describedby="emailHelp">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">密 码:</label> <input type="password" class="form-control" id="password" name="password">
				</div>

				<button type="submit" class="btn btn-success">立即注册</button>
				<button type="reset" class="btn btn-warning">立即重置</button>

			</form>
		</div>
</body>
</html>