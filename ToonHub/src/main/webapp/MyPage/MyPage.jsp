<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <script src="js/modernizr.custom.js"></script>

<style>
body {
	background: #eee;
}

/* 웹툰 들어가는 네모칸  */
.brands {
	width: 100%;
	padding-top: 2px;
	padding-bottom: 10px
}

.brands_slider_container {
	height: 150px;
	border: solid 1px #eeeeee;
	/*     box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1); */
	padding-left: 3px;
	padding-right: 3px;
	background: #eeeeee;
}

/* 슬라이드 박스 내 내부 마진 */
.brands_slider {
	height: 100%;
	margin-top: 3px
}

.brands_item {
	height: 100%
}

/* 이미지 사이즈 */
.brands_item img {
	max-width: 100%
}

.brands_nav {
	position: absolute;
	top: 50%;
	-webkit-transform: translateY(-10%);
	-moz-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	-o-transform: translateY(-50%);
	transform: translateY(-50%);
	padding: 5px;
	/*     cursor: pointer */
}

.brands_nav i {
	color: #e5e5e5;
	-webkit-transition: all 0ms ease;
	-moz-transition: all 0ms ease;
	-ms-transition: all 0ms ease;
	-o-transition: all 0ms ease;
	transition: all 0ms ease
}

.brands_nav:hover i {
	color: #676767
}

.brands_prev {
	left: 10px
}

.brands_next {
	right: 10px
}

</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
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
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="#"><span>뒤로가기</span></a>
			</div>
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<header class="codrops-header">  
					<!--디폴트로 toonhub 가 들어와있도록 하는방법 물어보기 ! -->
                    <div class="codrops-menu">
                        <strong><a href="#">Toonhub</a></strong>    <strong>|</strong> <strong ><a href="#">커뮤니티</a></strong> <!-- 맨위 상단-->
                    </div>
					
					<!-- h1 태그 말고 다른걸로 바꿀것 !  -->
					<br><br>
					<nav class="codrops-demos">
						<a href="#"> 요일별 </a>
						<a href="#"> 장르 </a>
						<a href="#"> 플랫폼 </a>
						<!-- <a class="current-demo" href="modal.html">Modal</a>  일단 세개 빼고 다 주석
						<a href="icons.html">Icons</a>
						<a href="bottoms-lide.html">Bottom Slide</a>
						<a href="reveal.html">Reveal</a> -->
					</nav>
					<br>
					<!-- 주간  -->
					<nav class = "week">
						<a href="#">월</a>
						<a href="#">화</a>
						<a href="#">수</a>
						<a href="#">목</a>
						<a href="#">금</a>
						<a href="#">토</a>
						<a href="#">일</a>
					</nav>
				</header>
					
				<div id="grid" class="grid clearfix">
                    <div class ="checkbox">
                        <input type="checkbox" value="연재중" name = "미정" checked >연재중
                        <input type="checkbox" value="완결" name ="미정2" >완결
                    </div>
                    

					<nav class = "best">
						<strong>지금 ! 베스트</strong><br><br>
						<div class ="toon_slider_box">
                            <div class="brands">
                                <div class="container">
                                    <div class="brands_slider_container">
                                        <div class="owl-carousel owl-theme brands_slider">
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <a href="https://www.naver.com"><img src="nemo.png" width="120px" height = "120px"></a>
                                                    <!-- 네모를 누르면 네이버로 이동 할 수 있도록 하기  -->
                                                </div>
                                                <div class = "info">
                                                    <strong>제목111</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Brands Slider Navigation -->
                                        <!-- <div class="brands_nav brands_prev"><i></i></div>
                                            <div class="brands_nav brands_next"><i></i></div> -->
                                    </div>
                                    <!-- </div>
                                </div> -->
                                </div>
                            </div>
						</div>
					</nav><br>

					<nav class = "toon1">
						<strong>봄툰</strong><span> | BoomToon</span><br><br>
                                <div class="brands">
                                    <div class="container">
                                        <div class="brands_slider_container">
                                            <div class="owl-carousel owl-theme brands_slider">
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px"">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px"">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px"">
                                                    </div>
                                                </div>
                                                <div class="owl-item">
                                                    <div class="brands_item d-flex flex-column justify-content-center">
                                                        <img src="nemo.png" width="120px" height = "120px"">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Brands Slider Navigation -->
                                            <!-- <div class="brands_nav brands_prev"><i></i></div>
                                                <div class="brands_nav brands_next"><i></i></div> -->
                                        </div>
                                        <!-- </div>
                                    </div> -->
                                    </div>
                                </div>

						
					</nav><br>

					<nav class = "toon2">
						<strong>탑툰</strong><span> | AToon</span><br><br>
						<div class ="toon_slider_box">
                            <div class="brands">
                                <div class="container">
                                    <div class="brands_slider_container">
                                        <div class="owl-carousel owl-theme brands_slider">
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Brands Slider Navigation -->
                                        <!-- <div class="brands_nav brands_prev"><i></i></div>
                                            <div class="brands_nav brands_next"><i></i></div> -->
                                    </div>
                                    <!-- </div>
                                </div> -->
                                </div>
                            </div>
						</div>
					</nav><br>
                    
                    <nav class = "toon2">
						<strong>A툰</strong><span> | AToon</span><br><br>
						<div class ="toon_slider_box">
                            <div class="brands">
                                <div class="container">
                                    <div class="brands_slider_container">
                                        <div class="owl-carousel owl-theme brands_slider">
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="nemo.png" width="120px" height = "120px"">
                                                </div>
                                                <div class = "info">
                                                    <strong>제목</strong><br>
                                                    <span>작가 이름</span><br>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Brands Slider Navigation -->
                                        <!-- <div class="brands_nav brands_prev"><i></i></div>
                                            <div class="brands_nav brands_next"><i></i></div> -->
                                    </div>
                                    <!-- </div>
                                </div> -->
                                </div>
                            </div>
						</div>
					</nav><br>

				</div>

			</div><!-- /content -->
		</div><!-- /container -->

		<script src="js/jquery-3.6.0.min.js"></script>
		<script src="js/draggabilly.pkgd.min.js"></script>
		<script src="js/dragdrop.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
		<script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
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
</body>
</html>