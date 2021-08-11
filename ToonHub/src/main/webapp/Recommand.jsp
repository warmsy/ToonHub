<%@page import="model.RecommandDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.RecommandDAO"%>
<%@page import="model.ToonMemberDTO"%>
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
img{
	width:100px;
	height:100px;
}
.img_place{
	width:5%;
	margin-left:6%;
	float:left;
}
.cont_place p{
	margin-bottom: 3px;
	padding-left:18%;
	font-size: 20px;
	color:#b3b3b3;
	width:80%;
	position:relative;
}
.genre{
	background-color: #eee;
	width:100px;
	height:30px;
	text-align: center;
	vertical-align: middle;
	margin-left:18%;
	margin-top: 10px;
	font-size: 15px;
	line-height: 30px;
	color:#b3b3b3;
}
.cont_list a{
	text-decoration: none;
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
<%ToonMemberDTO info = (ToonMemberDTO) session.getAttribute("info");
ArrayList<RecommandDTO> search_result = (ArrayList) session.getAttribute("result");
String rec_file = (String) session.getAttribute("file");
RecommandDAO dao = new RecommandDAO();
ArrayList<RecommandDTO> rec_list = dao.selectAll();
String image = null;
String writter = null;
%>
		<div class="container">
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<header class="codrops-header">  
					<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.html">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#" style="color:#42C690">커뮤니티</a></strong> <!-- 맨위 상단-->
                    </div>
					
					<!-- h1 태그 말고 다른걸로 바꿀것 !  -->
					<br><br>
					<nav class="codrops-head" style = "letter-spacing: 5px;">
						<a href="today_writter.jsp"> 오늘의 작가 </a>
						<a href="Community.jsp" style="color: #42C690 "> 커뮤니티 </a>
						<a href="#"> 명예의전당 </a>
						<!-- <a class="current-demo" href="modal.html">Modal</a>  일단 세개 빼고 다 주석
						<a href="icons.html">Icons</a>
						<a href="bottoms-lide.html">Bottom Slide</a>
						<a href="reveal.html">Reveal</a> -->
					</nav>
					<br>
					<!-- 주간  -->
				</header>
				<div class = "cont_head">
					<div class = "cont_header">
					<strong>추천해요</strong></div>
					<div class = "cont_shortcut">
						<div style="text-align: right; width:100%;">
							<div class="comm_search">
								<select style="background-color: #eeeeee; border:none; height:30px; color:#b3b3b3" name = "item">
									<option value = "title">제목</option>v
									<option value = "genre">장르</option>v
									<option value = "writter">작성자</option>
								</select>
							<input type = "text"  placeholder="찾으려는 내용을 입력하세요" name = "search">
						<button style="background-color: #eeeeee; height:30px;"><img src = "./img/search_white.png" style = "width:20px; height:20px;"></button></div>
						</div>
						</div>
						</div>
						<%if (info != null){ %>
						<p><a href = "Recommand_Write.jsp" style = "font-size: 12px; margin-left: 6%;">글쓰기</a></p>
						<%}else{ %>
						<p><a href = "Recommand.jsp" style = "font-size: 12px; margin-left: 6%;" onclick = "constraints()">글쓰기</a></p>
						<%} %>
						
						<%if (search_result != null){ %>
				<div class = "cont_list">
				<%for(int i = 0; i < search_result.size(); i++){ %>
				<%image = dao.Image(search_result.get(i).getWebTitle()); %>
				<%writter = dao.writter(search_result.get(i).getWebTitle()); %>
				<div>
					<a href="Recommand_view.jsp?num=<%=search_result.get(i).getRecNum()%>">
					<div class="img_place">
						<img src="./toon_image/<%=image%>">
					</div>
					<div class="cont_place">
						<p><strong><%=search_result.get(i).getWebTitle() %></strong></p>
						<div style="float: right; margin-right:8%;"><%=search_result.get(i).getNick() %></div>
						<p style="font-size: 15px;"><%=writter %></p>
					</div>
					<div class="genre">
						<span>#<%=search_result.get(i).getGenre() %></span>
					</div>
					</a>
				</div>
					<hr style="width:88%;">
				<%} %>
				</div>
				<%} else{%>
				<%for(int i = 0; i < rec_list.size(); i++){ %>
				<%image = dao.Image(rec_list.get(i).getWebTitle()); %>
				<%writter = dao.writter(rec_list.get(i).getWebTitle()); %>
				<div>
					<a href="Recommand_view.jsp?num=<%=rec_list.get(i).getRecNum()%>">
					<div class="img_place">
						<img src="./toon_image/<%=image%>">
					</div>
					<div class="cont_place">
						<p><strong><%=rec_list.get(i).getWebTitle() %></strong></p>
						<div style="float: right; margin-right:8%;"><%=rec_list.get(i).getNick() %></div>
						<p style="font-size: 15px;"><%=writter %></p>
					</div>
					<div class="genre">
						<span>#<%=rec_list.get(i).getGenre() %></span>
					</div>
					</a>
				</div>
					<hr style="width:88%;">
				<%}} %>
			</div><!-- /content -->
		</div><!-- /container -->
		<div class="foot">
				<table>
					<td><a href="ToonMain.jsp"> <img src="img/home.png">
							<span>Home</span></a></td>
					<td id = "bookmark">
							<%if (info != null){ %>
							<a href="bookmarkpage.jsp"> <img
							src="img/bookmark.png"> <span>북마크</span></a>
							<%} else{ %>
							<a href="ToonMain.jsp" onclick = "constraints()"> <img src="img/bookmark.png">
							<span>북마크</span></a>
							<%} %>
							</td>
					<td><a href="Login.jsp"> <img src="img/my.png">
					<%if (info != null) {%>
					<span>My페이지</span></a>
					<%} else{ %>
					<span>로그인</span>
					<%} %>
					</td>
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
		<script>
		function constraints(){
			alert("로그인이 필요한 서비스입니다.")
		}
		</script>
</body>
</html>
