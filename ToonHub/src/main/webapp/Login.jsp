<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Snippet - BBBootstrap</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css'
	rel='stylesheet'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<meta name="description" content="Inspiration for drag and drop interactions for the modern UI" />
		<meta name="keywords" content="drag and drop, interaction, inspiration, web design, ui" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/modal.css" />
    <script src="js/modernizr.custom.js"></script>

<style>
body {
	background: #eee;
}
.login_information input::placeholder{
	font-size: 15px;	
}
.login_header{
	margin-top: 20%;
	margin-bottom: 5%;
	text-align: center;
	font-size: 50px;
}
.login_header a{
	color:#46c590;
	font-weight: 800;
	text-decoration: none;
}
.login_information input{
	padding-left: 5%;
	margin: 1% 10%;
	width:80%;
	height:60px;
	border: none;
	border-radius:30px;
	outline: none;
	background-color: #eeeeee;
	font-weight: 500;
	line-height: 60px;
}
.join{
	text-align: center;
	margin-top: 2%;
}
.join table{
	margin:auto;
	width:80%;
}
.join table td{
	width:33%;
	font-size: 10px;
}
.login_button{
	text-align: center;
	margin-top: 2%;
}
.login_button button{
	width: 80%;
	height:40px;
	border-radius: 30px;
	border: none;
	background-color: #46c590;
	color:#eeeeee;
	font-weight: 800;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
		<div class="container">
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<div class="login_header">
				<a href="ToonMain.jsp">ToonHub</a>
				</div>
				<form action = "ToonLoginService" method = "post">
				<div class = "login_information">
					<input type="text" placeholder="EMAIL" name = "id">
					<input type="password" placeholder="Password" name = "password">
				</div>
				<div class = "join" style="text-align:center; margin-top: 2%;">
					<table style="margin:auto; width:80%;">
						<td style="border-right:1px solid #b4b4b4"><a href="#">비밀번호찾기</a></td>
						<td ><a href="Join.jsp">회원가입</a></td>
					</table>
				</div>
				<div class="login_button">
					<button >
						Login
					</buton>
				</div>
				</form>

		<script src="js/jquery-3.6.0.min.js"></script>
		<script type='text/javascript'>

			var selected_menu = $('.codrops-head a');
			selected_menu.click(function(){
				$(this).css('color','#42C690');
				selected_menu.not($(this)).css('color','#b3b3b3');
			});
       
		</script>
</body>
</html>
