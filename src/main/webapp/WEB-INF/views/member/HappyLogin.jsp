<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="kr">
	<head>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<meta charset="UTF-8">
	<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
	<title>http://www.blueb.co.kr</title>

<style rel="stylesheet">
html {
  width: 100%;
  height: 100%;
}

body {	
   background:#FFFFA1; 
/*   background-image: url('/duri/resources/member/images/loginBg.png');
  background-repeat: no-repeat;
  background-size:contain;
  background-position: center; */
  bac
/*   background: -webkit-linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
  background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%); */
  color: rgba(0, 0, 0, 0.6);
  font-family: "Roboto", sans-serif;
  font-size: 14px;
  line-height: 1.6em;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.overlay, .form-panel.one:before {
  position: absolute;
  top: 0;
  left: 0;
  display: none;
  background: rgba(0, 0, 0, 0.8);
  width: 100%;
  height: 100%;
}

.form {
  z-index: 0;
  position: relative;
  background: #FFFFFF;
  width: 900px;
  border-radius: 40px;
  box-shadow: 0 0 30px rgba(0, 0, 0, 0.1);
  box-sizing: border-box;
  margin: 100px auto 10px;
  overflow: hidden;
}
.form-toggle {
  z-index: 10;
  position: absolute;
  top: 60px;
  right: 60px;
  background: #FFFFFF;
  width: 60px;
  height: 60px;
  border-radius: 100%;
  -webkit-transform-origin: center;
      -ms-transform-origin: center;
          transform-origin: center;
  -webkit-transform: translate(0, -%) scale(0);
      -ms-transform: translate(0, -25%) scale(0);
          transform: translate(0, -25%) scale(0);
  opacity: 0;
  cursor: pointer;
  -webkit-transition: all 0.3s ease;
          transition: all 0.3s ease;
}
.form-toggle:before, .form-toggle:after {
  content: '';
  display: block;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 30px;
  height: 4px;
  background: yellowgreen;
  -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}
.form-toggle:before {
  -webkit-transform: translate(-50%, -50%) rotate(45deg);
      -ms-transform: translate(-50%, -50%) rotate(45deg);
          transform: translate(-50%, -50%) rotate(45deg);
}
.form-toggle:after {
  -webkit-transform: translate(-50%, -50%) rotate(-45deg);
      -ms-transform: translate(-50%, -50%) rotate(-45deg);
          transform: translate(-50%, -50%) rotate(-45deg);
}
.form-toggle.visible {
  -webkit-transform: translate(0, -25%) scale(1);
      -ms-transform: translate(0, -25%) scale(1);
          transform: translate(0, -25%) scale(1);
  opacity: 1;
}
.form-group {
  align: center;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
      -ms-flex-wrap: wrap;
          flex-wrap: wrap;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
  margin: 0 0 20px;
}
.form-group:last-child {
  margin: 0;
}
.form-group label {
  display: block;
  margin: 0 0 10px;
  color: rgba(0, 0, 0, 0.6);
  font-size: 12px;
  font-weight: 500;
  line-height: 1;
  text-transform: uppercase;
  letter-spacing: .2em;
}
.two .form-group label {
  color: #FFFFFF;
}
.form-group input {
  outline: none;
  display: block;
  background: rgba(0, 0, 0, 0.1);
  width: 100%;
  border: 0;
  border-radius: 4px;
  box-sizing: border-box;
  padding: 12px 20px;
  color: rgba(0, 0, 0, 0.6);
  font-family: inherit;
  font-size: inherit;
  font-weight: 500;
  line-height: inherit;
  -webkit-transition: 0.3s ease;
          transition: 0.3s ease;
}
.form-group input:focus {
  color: rgba(0, 0, 0, 0.8);
}
.two .form-group input {
  color: #FFFFFF;
}
.two .form-group input:focus {
  color: #FFFFFF;
}
.form-group button {
  outline: none;
  background: yellowgreen;
  width: 100%;
  border: 0;
  border-radius: 4px;
  padding: 12px 40px;
  color: #FFFFFF;
  font-family: inherit;
  font-size: inherit;
  font-weight: 500;
  line-height: inherit;
  text-transform: uppercase;
  cursor: pointer;
}
.two .form-group button {
  background: #FFFFFF;
  color: yellowgreen;
}

#idCheckBtn{
	border:1px solid white;
	background: #FFFFFF;
  	color: yellowgreen;
}
#idCheckBtn:hover{

	background: yellowgreen;
  	color: #FFFFFF;
}

.form-group .form-remember {
  font-size: 12px;
  font-weight: 400;
  letter-spacing: 0;
  text-transform: none;
}
.form-group .form-remember input[type='checkbox'] {
  display: inline-block;
  width: auto;
  margin: 0 10px 0 0;
}
.form-group .form-recovery {
  color: #4285F4;
  font-size: 12px;
  text-decoration: none;
}
.form-panel {
  padding: 60px calc(5% + 60px) 60px 60px;
  box-sizing: border-box;
}
.form-panel.one:before {
  content: '';
  display: block;
  opacity: 0;
  visibility: hidden;
  -webkit-transition: 0.3s ease;
          transition: 0.3s ease;
}
.form-panel.one.hidden:before {
  display: block;
  opacity: 1;
  visibility: visible;
}
.form-panel.two {
  z-index: 5;
  position: absolute;
  top: 0;
  left: 95%;
  background: yellowgreen;
  width: 100%;
  min-height: 100%;
  padding: 60px calc(10% + 60px) 60px 60px;
  -webkit-transition: 0.3s ease;
          transition: 0.3s ease;
  cursor: pointer;
}
.form-panel.two:before, .form-panel.two:after {
  content: '';
  display: block;
  position: absolute;
  top: 60px;
  left: 1.5%;
  background: rgba(255, 255, 255, 0.2);
  height: 30px;
  width: 2px;
  -webkit-transition: 0.3s ease;
          transition: 0.3s ease;
}
.form-panel.two:after {
  left: 3%;
}
.form-panel.two:hover {
  left: 93%;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
.form-panel.two:hover:before, .form-panel.two:hover:after {
  opacity: 0;
}
.form-panel.two.active {
  left: 10%;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  cursor: default;
}
.form-panel.two.active:before, .form-panel.two.active:after {
  opacity: 0;
}
.form-header {
  margin: 0 0 40px;
}
.form-header h1 {
  padding: 4px 0;
  color: yellowgreen;
  font-size: 24px;
  font-weight: 700;
  text-transform: uppercase;
}
.two .form-header h1 {
  position: relative;
  z-index: 40;
  color: #FFFFFF;
}

.pen-footer {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
  width: 600px;
  margin: 20px auto 100px;
}
.pen-footer a {
  color: #FFFFFF;
  font-size: 12px;
  text-decoration: none;
  text-shadow: 1px 2px 0 rgba(0, 0, 0, 0.1);
}
.pen-footer a .material-icons {
  width: 12px;
  margin: 0 5px;
  vertical-align: middle;
  font-size: 12px;
}

.cp-fab {
  background: #FFFFFF !important;
  color: #4285F4 !important;
}
input, select{
  margin-bottom:7px;
  background: rgba(0, 0, 0, 0.1);
  width: 100%;
  border: 0;
  border-radius: 4px;
  box-sizing: border-box;
  padding: 12px 20px;
  color: rgba(0, 0, 0, 0.6);
  font-family: inherit;
  font-size: inherit;
  font-weight: 500;

}

 #two{
	position: absolute;
	top: 150px; 
	left: 700px;
	font-size:60px;
	font-weight:bold;
	
}

#add{
	position: absolute;
	top: 150px; 
	left:830px;
	font-size:60px;
	font-weight:bold;
	
} 

#img1{
	width:120px;
	height:80px;
	position:absolute;
	top: 120px; 
	left:930px;
	font-size:60px;
	font-weight:bold;
}

#intro {
	display:none;
	background:white;
    position: absolute;
    top: 10%;
    left:5%;
    width: 300px;
    height: 300px;
    padding:10px 10px;

}

/* 모달 창 : modal-물품목록, modal2-알림창 */
/*모달의 background(window부분)*/
.modal {
	display: none; /* 버튼 누르기 전은 숨겨놓기 */
	position: fixed; /* Stay in place */
	z-index: 1; /* 뷰 위에 띄워야 하니까 1로 설정 (뷰는 0) */
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4); /* 투명도 */
}

.modal2 {
	display: none; 
	position: fixed;
	z-index: 16; 
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto; 
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4); 
}

/*내용 */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 중앙정렬 */
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
	height: 500px;
}
.modal-content2 {
	background-color: #F9E79F;
	margin: 15% auto; /* 중앙정렬 */
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
	height: 300px;
}

input {font-size: 20px;}
select {font-size: 15px;}
.num {font-size: 15px;}
p {font-size: 20px; text-align: center;}

/* 닫기 버튼 */
#close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}
#close2 {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

#close:hover, #close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
#close2:hover, #close2:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}/*모달 창 끝*/


input[type='radio']{
		margin-top:-1px;
		margin-right:3px;
	}
	
label{
	display : inline-block;
}
</style>
</head>
<body>
<div align="center" style="float:left; width:90%;height:80px;position:absolute;top:130px; font-size:60px; font-weight:bold;">
<a style="color:orange;">둘이</a><a style="color:yellowgreen;">두리</a>
<img src = "/duri/resources/board/images/main.png" style="width:120px;height:80px;position:absolute;top:-30px;">
</div>
<br><br><br><br><br>
<!-- Form-->
<div class="form">

  <div class="form-toggle"></div>

  <div class="form-panel one">
    <div class="form-header">
      <h1>행복두리 Login</h1>
    </div>
    <div class="form-content">
      <form action="login.me"  method="POST">
        <div class="form-group">
          <label for="userId">userId</label>
          <input type="text" id="mid" name="mid" required="required"/>
        </div>
        <div class="form-group">
          <label for="userPwd">Password</label>
          <input type="password" id="mpwd" name="mpwd" required="required"/>
        </div>
        <div class="form-group">

        <a href="join.me" class="form-recovery">회원가입</a>
          <a href="#" class="form-recovery" id="forget">Forgot Password?</a>
        </div>
        <div class="form-group">
          <button id="loginBtn">LogIn</button>
        </div>
      </form>
    </div>
  </div>
 </div> 
  <!-- 계정찾기 -->




  <!--  <div id="intro">
  	<div class="form-group">
          <label for="userId">userId</label>
          <input type="text" id="mid" name="mid" required="required"/>
        </div>
        <div class="form-group">
          <label for="userPwd">Password</label>
          <input type="password" id="mpwd" name="mpwd" required="required"/>
        </div>
         <div class="form-group">
          <button id="loginBtn">LogIn</button>
        </div>

 </div>-->
 

 <div id="myModal" class="modal" >
 
	<!-- 내용 -->
	<div class="modal-content">
		<!-- 닫기 버튼 -->
		<span id="close">&times;</span>       
                                                       
		<h1 align="center" style="color:yellowgreen;">아이디/비밀번호 찾기</h1>
		<br>
		<div align="center">
		<label for="ftype" style="width:40%">ID 찾기<input type="radio" id="mtype" value="mid" name="mtype" style="margin:0px;width:10%"></label>
		<label for="ftype" style="width:40%">Password 찾기<input type="radio" id="mtype" value="mpwd" name="mtype" style="margin:0px;width:10%"></label>
		</div>
		<div id="itemsList" style="height: 200px;">
			<!-- 왼쪽 세로 물품 -->
			<form action="getDelivery.happy" id ="getDeliveryForm">
		<div class="form-group" id="nick">
          <label for="userId">NickName</label>
          <input type="text" id="mNick" name="mNick" required="required"/>
        </div>
        <div class="form-group" id="id" style="display:none">
          <label for="userId">ID</label>
          <input type="text" id="mid2" name="mid2" required="required"/>
        </div>
        <div class="form-group">
          <label for="userPwd">email</label>
          <input type="email" id="email" name="email" required="required"/>
        </div>
         <div class="form-group">
          <button id="findBtn">찾기</button>
        </div>
			</form>
		<br><br><br>

</div>
</div>
</div>


   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">
$(document).ready(function() {
  var panelOne = $('.form-panel.two').height(),
    panelTwo = $('.form-panel.two')[0].scrollHeight;

  $('.form-panel.two').not('.form-panel.two.active').on('click', function(e) {
    e.preventDefault();

    $('.form-toggle').addClass('visible');
    $('.form-panel.one').addClass('hidden');
    $('.form-panel.two').addClass('active');
    $('.form').animate({
      'height': panelTwo
    }, 200);
  });

  $('.form-toggle').on('click', function(e) {
    e.preventDefault();
    $(this).removeClass('visible');
    $('.form-panel.one').removeClass('hidden');
    $('.form-panel.two').removeClass('active');
    $('.form').animate({
      'height': panelTwo
    }, 200);
  });
});


	$("#forget").click(function(){
	
		$("#myModal").css("display", "block");
	
	});


	$("#close").click(function(){
		$("#myModal").css("display", "none");
	});

	
	
	var mtype = null;
	 $("input[type=radio]").click(function () {
		    if($(this).prop("checked")) {  
		    	mtype=$(this).val();
		    	if($(this).val()=="mid"){
		    		mtype=$(this).val();
		    		console.log(mtype);
					$("#nick").show();
					$("#id").hide();
	
		    	}else{
		    		mtype=$(this).val();
		    		console.log(mtype);
		    		$("#nick").hide();
					$("#id").show();
		    		
		    			
		    			
		    		}
		    	}
		});
	 
	 
	 var pwd = "";
	 $("#findBtn").click(function(){
		
		 if(mtype=="mid"){
			 var nick = document.getElementById("mNick").value;
			 var email = document.getElementById("email").value;
			 console.log(nick);
				 $.ajax({
						url:"findId.me",
						type:"get",
						data:{mNickName:nick,email:email},
						success:function(data){
							console.log("성공!");
							alert("회원님의 아이디는 " + data + " 입니다.");

						},
						error:function(){
							
						}
						});
			 
		 }else{
			 var id = document.getElementById("mid2").value;
			 var email = document.getElementById("email").value;
			 console.log(id);
			 $.ajax({
					url:"sendEmail.me",
					type:"post",
					data:{email:email},
					success:function(data){
						console.log("성공!");
						alert("이메일로 임시비밀번호를 발급하였습니다.");
						pwd = data;
						location.href = "updateMyInfo2.me?mid="+id + "&mpwd="+pwd;
					},
					error:function(){
						
					}
					});

			 
		 }
	 })

	 
	 

</script>
</body>
</html>