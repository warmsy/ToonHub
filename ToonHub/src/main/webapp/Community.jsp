<%@page import="model.RecommandDTO"%>
<%@page import="model.RecommandDAO"%>
<%@page import="model.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BoardDAO"%>
<%@page import="model.ToonMemberDTO"%>
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
.board_preview{
	margin:5px 2%;
}
.writter{
	float:right;
}
.grid{
	padding-bottom:0%;
}
img{
	width:90px;
	height:90px;
}
.img_place{
	width:12%;
	float:left;
}
.cont_place p{
	margin-bottom: 3px;
	padding-left:13%;
	font-size: 20px;
	color:#b3b3b3;
	width:80%;
	position:relative;
}
.genre{
	background-color: #d5d5d5;
	width:100px;
	height:30px;
	text-align: center;
	vertical-align: middle;
	margin-left:13%;
	margin-top: 0;
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
RecommandDAO rec_dao = new RecommandDAO();
BoardDAO dao = new BoardDAO();
ArrayList<BoardDTO> board_list = dao.SelectAll();
ArrayList<RecommandDTO> recom_list = rec_dao.selectAll();
String img = null;
String writter = null;
%>
		<div class="container">
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<header class="codrops-header">  
					<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.jsp">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#" style="color:#42C690">커뮤니티</a></strong> <!-- 맨위 상단-->
                        <a href="Search.jsp"><img src="./img/search.png"
						style="width: 4%; height: 4%; float: right; margin-right: 6%;"></a>
                    </div>
					
					<!-- h1 태그 말고 다른걸로 바꿀것 !  -->
					<br><br>
					<nav class="codrops-head" style = "letter-spacing: 5px;">
						<a href="today_writter.jsp"> 오늘의 작가 </a>
						<a href="Community.jsp" style ="color: #42C690;"> 커뮤니티 </a>
						<a href="WinnerToday.jsp"> 명예의전당 </a>
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
				<a href = "Recommand.jsp" >더보기 ></a>
				</div>
				</div>
				<div id="grid" class="grid clearfix">        
					<nav class = "best">
					<%for(int i = 0; i < 4; i++){ %>
					<%img = rec_dao.Image(recom_list.get(i).getWebTitle());
					writter = rec_dao.writter(recom_list.get(i).getWebTitle());%>
				<div>
					<a href="Recommand_view.jsp?num=<%=recom_list.get(i).getRecNum()%>">
					<div class="img_place">
						<img src="./toon_image/<%=img%>">
					</div>
					<div class="cont_place">
						<p><strong><%=recom_list.get(i).getWebTitle() %></strong></p>
						<div style="float: right; margin-right:8%;"><%=recom_list.get(i).getNick() %></div>
						<p style="font-size: 15px;"><%=writter %></p>
					</div>
					<div class="genre">
						<span>#<%=recom_list.get(i).getGenre() %></span>
					</div>
					</a>
				</div>
				<hr>
				<%} %>

					</nav><br>
				</div><br><br>
				<div class = "cont_head">
				<div class = "cont_header">
				<strong>자유게시판</strong></div>
				<div class = "cont_shortcut">
				<a href = "Board.jsp">더보기 ></a>
				</div>
				</div>

				<div id="grid" class="grid clearfix">        
					<nav class = "best">
					<%for(int i = 0; i < board_list.size(); i++){ %>
					<a href="Board_view.jsp?num=<%=board_list.get(i).getNum()%>">
					<div class = "board_preview">
					<span><%=board_list.get(i).getBoardTitle() %></span>
					<span class="writter"><%=board_list.get(i).getNick() %></span>
					<hr>
					</div>
					</a>
					<%} %>
                                    <!-- </div>
                                </div> -->
					</nav><br>
				</div>
				<br><br><br><br>
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
				alert("로그인이 필요한 서비스입니다");
			}
			</script>
</body>
</html>
