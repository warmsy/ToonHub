<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
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
.search_information input::placeholder{
	font-size: 15px;	
}
.search_information{
	width:100%;
}
.mypage_header{
	margin-top: 10%;
	margin-bottom: 5%;
	text-align: center;
	font-size: 20px;
	height:10%;
}
.mypage_header span{
	padding-top: 5%;
}
.mypage_header a{
	color:#46c590;
	font-weight: 800;
	text-decoration: none;
}
.search{
	text-align: right;
	margin-top: 5%;
	margin-right:6%;
}
.search img{
	width:4%;
	height:4%;
}
.search_information input{
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
.search_information button{
	border-radius: 30px;
	width : 20%;
	height: 60px;
	padding : 0.1em 0;
	background-color: #46c590;
	border: none;
	margin-top: 1%;
	position:absolute;
	right: 12%;
}
.header{
	margin-top: 5%;
	margin-left: 6%;
	margin-right:6%;
	font-size: 35px;
	text-align: center;
	color:#636363
}
.search_information img{
	width:40px;
	height:40px;
}
hr{
	width:88%;
	margin:10px 6%;
	border: 1px solid #cccccc;

}
/* 프로필이미지 업로드 */
.profile-pic {
    max-width: 180px;
    max-height: 180px;
    display: block;
}

.file-upload {
    display: none;
}
.circle {
    border-radius: 1000px !important;
    overflow: hidden;
    width: 180px;
    height: 180px;
    border: none;
    background-color: #eee;
	margin: auto;
}
img {
    max-width: 100%;
    height: auto;
}
.p-image {
	text-align: center;
}
.p-image:hover {
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
}
.upload-button {
  font-size: 1.2em;
  border:none;
  font-size: 12px;
  width:21%;
  height:30px;
  margin-top:10px;
}

.upload-button:hover {
	margin-top:50px;
  transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
  color: #999;
}
.user_info{
	margin: 5% 6%;
}
.user_info table{
	margin-left: 6%;
	width:85%;
}
.info{
	border-bottom: 1px solid #cccccc;
	width:100%;
	color:#636363;
	font-size:15px;
}
.info_title{
	width:15%;
	padding-right:20px;
	padding-top:5px;
	color:#636363;
	font-size:15px;
}
.view_write{
	margin: 2% 6%;
	background-color: #eeeeee;
	width:88%;
	color:#636363;
}
.view_write ul{
	list-style: none;
	padding:10px;
	margin-bottom: 0;
}
.view_write li{
	padding: 5px 6%;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
		<div class="container">
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->

					<div class="search">
						<a href="Search.html"><img src="img/search.png" ></a>
					</div>
					<div class="header">
						<span>My</span>
					</div>
					<hr>
						<div class="small-12 medium-2 large-2 columns">
						  <div class="circle">
							<!-- User Profile Image -->
							<img class="profile-pic" src="img/profile.png">
					 
							<!-- Default Image -->
							<!-- <i class="fa fa-user fa-5x"></i> -->
						  </div>
						  <div class="p-image">
							<button class="upload-button">프로필사진바꾸기</button>
							 <input class="file-upload" type="file" accept="image/*"/>
						  </div>
					 <hr>
					 <div class="user_info">
						 <table>
							 <tr>
								 <td class="info_title">이름</td>
								 <td class="info"></td>
							 </tr>
							 <tr>
								<td class="info_title">닉네임</td>
								<td class="info"></td>
							</tr>
							<tr>
								<td class="info_title">소개</td>
								<td class="info"></td>
							</tr>
						 </table>
					 </div>
					 <hr>
					 <div class = "cont_head">
						<div class = "cont_header" style="font-size: 15px; color:#636363;">
						<span>내가 쓴 글보기</span></div>
						<div class = "cont_shortcut">
						<a href = "Recommand.html" >더보기 ></a>
						</div>
						</div>
						<div class="view_write">
						<ul>
							<li>dddd</li><hr>
							<li>dddd</li><hr>
							<li>dddd</li><hr>
						</ul>
						</div>
				<div class="foot">
					<table style="margin-right:0px;">
						<tl>
							<td>
				<a href = "ToonMain.html">
					<img src = "img/home.png">
					<span>Home</span></a>
					</td>
					<td>
				<a href = "bookmarkpage.html">
					<img src = "img/bookmark.png">
					<span>북마크</span></a>
					</td>
					<td>
				<a href = "Login.html" >
					<img src = "img/my.png">
					<span>My페이지</span></a>
					</td>
					</tl>
					</table>
				</div>
			</div>
		</div>
		<script src="js/jquery-3.6.0.min.js"></script>
		<script type='text/javascript'>

			var selected_menu = $('.codrops-head a');
			selected_menu.click(function(){
				$(this).css('color','#42C690');
				selected_menu.not($(this)).css('color','#b3b3b3');
			});
       
		</script>
		     <script>
				$(document).ready(function() {
	   
		   
	   var readURL = function(input) {
		   if (input.files && input.files[0]) {
			   var reader = new FileReader();
	   
			   reader.onload = function (e) {
				   $('.profile-pic').attr('src', e.target.result);
			   }
	   
			   reader.readAsDataURL(input.files[0]);
		   }
	   }
	   
	   
	   $(".file-upload").on('change', function(){
		   readURL(this);
	   });
	   
	   $(".upload-button").on('click', function() {
		  $(".file-upload").click();
	   });
	   });
			</script>
</body>
</html>
