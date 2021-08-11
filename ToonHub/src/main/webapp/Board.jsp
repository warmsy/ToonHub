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
li span{
	float: right;
	font-size:15px
}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
<%ToonMemberDTO info = (ToonMemberDTO) session.getAttribute("info");
ArrayList<BoardDTO> board_info = (ArrayList) session.getAttribute("board_info");
BoardDAO dao = new BoardDAO();
ArrayList<BoardDTO> list = dao.SelectAll();%>
		<div class="container">
			<!-- Top Navigation -->
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<header class="codrops-header">  
					<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
                    <div class="codrops-menu">
                        <strong><a href="ToonMain.jsp">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#" style="color:#42C690">커뮤니티</a></strong> <!-- 맨위 상단-->
                    </div>
					
					<!-- h1 태그 말고 다른걸로 바꿀것 !  -->
					<br><br>
					<nav class="codrops-head" style = "letter-spacing: 5px;">
						<a href="today_writter.jsp"> 오늘의 작가 </a>
						<a href="Community.jsp" style="color: #42C690 "> 커뮤니티 </a>
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
					<strong>자유게시판</strong></div>
					<form action ="ToonBoardService" method="post">
					<div class = "cont_shortcut">
						<div style="text-align: right; width:100%;">
							<div class="comm_search">
								<select style="background-color: #eeeeee; border:none; height:30px; color:#b3b3b3" name = "item">
									<option value = "title">제목</option>
									<option value = "nick">작성자</option>
									<option value = "content">내용</option>
								</select>
							<input type = "text"  placeholder="찾으려는 내용을 입력하세요" name = "search">
						<button style="background-color: #eeeeee; height:30px;"><img src = "./img/search_white.png" style = "width:20px; height:20px;"></button></div>
						</div>
						</div>
						</form>
						</div>
						</div>
						<%if (info != null){ %>
				<p><a href = "Board_Write.jsp" style = "font-size: 12px; margin-left: 6%;">글쓰기</a></p>
				<%} else {  %>
				<p><a href = "Board.jsp" style = "font-size: 12px; margin-left: 6%;" onclick  = "constraints()">글쓰기</a></p>
				<%} %>
				<div class="cont_list">
				<%if (board_info != null){ %>
					<ul>
				<%for(int i = 0; i < board_info.size(); i++){%>
					<li>
						<a href="Board_view.jsp?num=<%=board_info.get(i).getNum()%>">
							<%=board_info.get(i).getBoardTitle()%>
							<span><%=board_info.get(i).getNick()%></span>
							<%System.out.println(board_info.get(i).getBoardTitle()); %>
						</a>
					</li>
					<hr>
				<%}%>
				<%} else{ %>
				<ul>
				<%for(int i = 0; i < list.size(); i++){ %>
					<li>
					<%System.out.println(list.get(i).getNum()); %>
						<a href="Board_view.jsp?num=<%=list.get(i).getNum()%>">
							<%=list.get(i).getBoardTitle()%>
							<span><%=list.get(i).getNick() %></span>
						</a>
					</li>
					<hr>
					<%}} %>
				</ul>
				</div>
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
					<%if (info != null) {%>
					<td><a href="Mypage.jsp"> <img src="img/my.png">
					<span>My페이지</span></a>
					<%} else{ %>
					<td><a href="Login.jsp"> <img src="img/my.png">
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
