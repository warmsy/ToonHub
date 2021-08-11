<%@page import="model.WebtoonDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	height:150px;
}
.search_header{
	float:left;
	margin-top: 5%;
	margin-bottom: 5%;
	text-align: center;
	font-size: 50px;
}
.search_header a{
	color:#46c590;
	font-weight: 800;
	text-decoration: none;
}
.search_information input{
	padding-left: 7%;
	margin: 6% 10%;
	width:50%;
	height:60px;
	border: none;
	border-radius:30px;
	outline: none;
	background-color: #eeeeee;
	font-weight: 500;
	line-height: 60px;
	position:relative;
}
.search_information button{
	border-radius: 30px;
	width : 15%;
	height: 60px;
	padding : 0.1em 0;
	background-color: #46c590;
	border: none;
	margin-top: 5.5%;
	position:absolute;
	right: 10%;
}
.search_information img{
	width:40px;
	height:40px;
}
.search_item{
	height:60px;
	width:10%;
	border:none;
	background-color:#eeeeee;
	text-align:center;
	margin-left:5%;
	position:absolute;
	z-index: 1;
	top:4.1%;
	border-radius:30px;
	text-align-last:center;
	color:#b3b3b3;
}
img{
	width:100px;
	height:100px;
}
.inner_content{
	overflow: hidden;
 	text-overflow: ellipsis;
	float:left;
	margin: 10px 15px;
	width:15%;
	color:#b3b3b3;
	height:150px
}
.inner_content p{
	margin:0px;
}
.part{
	color: #b6b6b6;
	margin: 15px 13%;
}
.part a{
	float:right;
}
.info{
overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  width: 100px;
  height: 40px;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
<%
String item = request.getParameter("item");
String search = request.getParameter("search");
ArrayList<WebtoonDTO> search_result = (ArrayList) session.getAttribute("main_search");
System.out.println(item);
System.out.println(search);
%>
		<div class="container">
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<div class="search_header">
				<a href="ToonMain.jsp">ToonHub</a>
				</div>
				<div class = "search_information">
				<select name = "item" class = "search_item">
				<option value = "title">웹툰</option>
				<option value = "genre">장르</option>
				<option value = "writter">작가</option>
				<option value = "platform">플랫폼</option>
				</select>
					<input type="text" placeholder="<%=search %>" name = "search">
					<button><img src="img/search_white.png"></button>
				</div>
				</div>
				<hr>
				<div class = "part" style="margin-left: 6%;">
					<Strong>웹툰</Strong>
					<%if (item.equals("봄툰")){ %>
					<a href="platform_bomtoon.jsp">더보기 ></a>
					<%} else if(item.equals("탑툰")){%>
					<a href="platform_toptoon.jsp">더보기 ></a>
					<%} else if(item.equals("로맨스")){%>
					<a href="GenreAll_romance.jsp">더보기 ></a>
					<%} else if(item.equals("드라마")){%>
					<a href="GenreAll_drama.jsp">더보기 ></a>
					<%} else if(item.equals("액션")){%>
					<a href="GenreAll_action.jsp">더보기 ></a>
					<%} else if(item.equals("옴니버스")){%>
					<a href="GenreAll_omnibus.jsp">더보기 ></a>
					<%} else if(item.equals("판타지")){%>
					<a href="GenreAll_fantasy.jsp">더보기 ></a>
					<%} else if(item.equals("개그")){%>
					<a href="GenreAll_gag.jsp">더보기 ></a>
					<%}else{%>
					<%} %>
				</div>
				<div style="margin-left:6%;">
				<%for (int i = 0; i < search_result.size(); i++){ %>
				<a href = "Detail_Day.jsp?title=<%=search_result.get(i).getWebtitle()%>">
				<div class = "inner_content">
				<img src = "./toon_image/<%=search_result.get(i).getWebfile()%>">
				<div class="info">
				<p class = "result_title"><%=search_result.get(i).getWebtitle() %></p>
				<p><%=search_result.get(i).getWebwriter() %></p>
				</div>
				</div>
				</a>
				<%} %>
				</div>
				<div class="foot">
					<table>
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
