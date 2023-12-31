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
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
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
.join_information input::placeholder{
	font-size: 15px;	
}
.join_header{
	margin-top: 10%;
	margin-bottom: 5%;
	text-align: center;
	font-size: 50px;
}
.join_header a{
	color:#46c590;
	font-weight: 800;
	text-decoration: none;
}
.information{
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
.join_button{
	text-align: center;
	margin-top: 2%;
}
.join_button button{
	width: 80%;
	height:40px;
	border-radius: 30px;
	border: none;
	background-color: #46c590;
	color:#eeeeee;
	font-weight: 800;
}
div i{
	color:rgb(138, 138, 138);
	position: absolute;
	right: 20%;
	top : 29%;

}
</style>
</head>
<body oncontextmenu='return false' class='snippet-body skin-3'>
		<div class="container">
			<div class="content">

				<!-- 메인 머리  demo.css 에 있음-->
				<div class="join_header">
				<a href="ToonMain.jsp">ToonHub</a>
				</div>
				<form action = "ToonJoinService" method = "post">
				<div class = "join_information">
					<input class="information" type="text" placeholder="EMAIL" required="required" name = "id">
					<input class="information" type="text" placeholder="NICKNAME" required="required" name = "nick">
					<input class="information" id = "password" type="password" placeholder="Password" required="required">
					<i class="fa fa-eye fa-lg"></i>
					<input class="information" id = "password_check" type="password" placeholder="Password CHECK" required="required" name = "password">
				</div>

				<div class="join_button">
					<button>
						회원가입
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
		<script>
		$(document).ready(function(){
    $('.join_information i').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"fa fa-eye-slash fa-lg")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa fa-eye fa-lg")
            .prev('input').attr('type','password');
        }
    });
});
		</script>
		<script>
			$("#password").change(function(){
    checkPassword($('#password').val(),$('id').val());
});
function checkPassword(password,id){
    
    if(!/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,25}$/.test(password)){            
        alert('숫자 및 영문자 조합으로 8자리 이상 사용해야 합니다.');
        $('#password').val('').focus();
        return false;
    }    
    var checkNumber = password.search(/[0-9]/g);
    var checkEnglish = password.search(/[a-z]/ig);
    if(checkNumber <0 || checkEnglish <0){
        alert("숫자와 영문자를 혼용하여야 합니다.");
        $('#password').val('').focus();
        return false;
    }
    return true;
}
		</script>
        
</script>


</body>
</html>
