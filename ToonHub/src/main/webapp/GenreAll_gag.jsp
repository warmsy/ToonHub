<%@page import="model.WebtoonDAO"%>
<%@page import="model.WebtoonDTO"%>
<%@page import="java.util.ArrayList"%>
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
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="js/modernizr.custom.js"></script>

<style>
body {
	background: #eee;
}

.platform{
    padding:20px;
    width: 100%;
    height: 800px;
    color: #616161;

}
.platform ul .toonname{
    display: inline;
    float: left;
}
.platform .viewall{
    display: inline;
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
<%ToonMemberDTO info = (ToonMemberDTO) session.getAttribute("info");
WebtoonDAO dao = new WebtoonDAO();
ArrayList<WebtoonDTO> gag = dao.gag();
String img ;
%>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
	

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">

		<div class="container">
			<!-- Top Navigation -->
			<div class="content">

                <header class="codrops-header">  
					<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
                    <div class="codrops-menu">
                        <strong><a href="#" style = "color: #42C690">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="Community.html">커뮤니티</a></strong> <!-- 맨위 상단-->
                    </div>
                    <br><br>
				</header>
					
				<div id="wrap">
                    <ul class="codrops-demos">
						<a href="ToonMain.jsp" > 요일별 </a>
						<a href="ToonGenre.jsp"style="color:#42C690;"> 장르 </a>
						<a href="platform.jsp"> 플랫폼 </a>
                    </ul>
                </div>
                <div class ="platform">
                    <table class="toonname">
                    <ul><strong style="font-size: 20px;">#<%=gag.get(0).getGenre() %></strong>
                    <div class = "viewall">
                    </div>
                    </ul>
                    </table>


                    <div> 
                    <div class="items" style="display: flex;flex-wrap: wrap; margin-left:3%;" > 
                         
                          <%for (int i =0; i<gag.size(); i++){ %>  
                            <%img= gag.get(i).getWebfile();%>
							<%img = img.replace("?", "");%>
							
							   <div style="margin: 10px;"> 
                                <a href="Detail_Genre.jsp?title=<%=gag.get(i).getWebtitle()%>" style="color: #616161!important;">
                                <div style="width: 100px;height: 100px; background-color: #42C690;">
                                    <img src="./toon_image/<%=img%>" width="100px" height = "100px">
                                </div>
                                <div class = "info">
                                    <strong><%=gag.get(i).getWebtitle()%></strong><br>
                                    <span><%=gag.get(i).getWebwriter()%></span><br>
                                </div>
                                </a>
                             </div>
                                
                            <%} %>
                        </div> 
					    </div>
						   </div>
						   
						   
                <div class="foot" style="z-index: 1;">
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
                <script src = "js/jquery-3.6.0.min.js"></script>
                <script>
                    $(document).ready(function () {
                        $(".tabArea .week li a").on("click", function () { // 해당 요소를 클릭하는 내 자신의 index 번호를 가져온다. [0], [1] 
                            const num = $(".tabArea .week li a").index($(this)); // 기존에 적용되어 있는 on class 삭제 
                            $(".tabArea .week li").removeClass("on");
                            $(".tabArea .tabBox").removeClass("on"); // 다음 요소 클릭시 on class 추가 
                            $('.tabArea .week li:eq(' + num + ')').addClass("on");
                            $('.tabArea .tabBox:eq(' + num + ')').addClass("on");
                        });
                    });
                </script>
		<script src="js/draggabilly.pkgd.min.js"></script>
		<script src="js/dragdrop.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
        <script type='text/javascript'>
            /*  아니 갑자기 왜안돼 .. ^^ */
			var selected_day = $('.week a');
			selected_day.click(function(){
				$(this).css('color','#42C690');
				selected_day.not($(this)).css('color','#b3b3b3');
			});
			
			var selected_menu = $('.codrops-demos a');
			selected_menu.click(function(){
				$(this).css('color','#42C690');
				selected_menu.not($(this)).css('color','#b3b3b3');
			});

			var selected_home = $('.codrops-menu a');
			selected_home.click(function(){
				$(this).css('color','#42C690');
			    selected_home.not($(this)).css('color','#b3b3b3');
			});
       
		</script>


	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript'>$(document).ready(function(){

    if($('.brands_slider').length)
    {
    var brandsSlider = $('.brands_slider');

    brandsSlider.owlCarousel(
    {
    loop:true,
    autoplay:true,
    autoplayTimeout:0, 
    /* 자동으로 넘어가게 하는거 ! */
    nav:false,
    dots:false,

    autoWidth:false,
    /* 자동 이미지 사이즈 맞춤 */
    items:3, 
    /* default 로 보여지는 아이텡 갯수  */
    margin:2
    /* 아이템간 마진  */
    });

    if($('.brands_prev').length)
    {
    var prev = $('.brands_prev');
    prev.on('click', function()
    {
    brandsSlider.trigger('prev.owl.carousel');
    });
    }

    if($('.brands_next').length)
    {
    var next = $('.brands_next');
    next.on('click', function()
    {
    brandsSlider.trigger('next.owl.carousel');
    });
    }
    }


});</script>
			<script>
			function constraints(){
				alert("로그인이 필요한 서비스입니다");
			}
			</script>
</body>
</html>
