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
	<title>둘이두리 - 나눔두리 로그인</title>

<style rel="stylesheet">
html {
  width: 100%;
  height: 100%;
}

body {	
	background:#FFFFA1;
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
  z-index: 15;
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

#idCheckBtn,#idCheckBtn2,#idCheckBtn3{
	border:1px solid white;
	background: #FFFFFF;
  	color: yellowgreen;
}
#idCheckBtn:hover,#idCheckBtn2:hover,#idCheckBtn3:hover{

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
input{
	background:#FFFED7;
}


 #two2{
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

#check,#check2{
	display:none;
}
</style>
</head>
<body>
<a id="two2" style="color:orange">둘이</a><a id="add" style="color:yellowgreen">두리</a>
<img src = "/duri/resources/board/images/main.png" id="img1">
<br><br><br><br><br>

<!-- Form-->
<div class="form">
  <div class="form-toggle"></div>
  <div class="form-panel one">
    <div class="form-header">
      <h1>나눔두리 Login</h1>
    </div>
    <div class="form-content">
      <form action="loginNa.me" method="POST">
        <div class="form-group">
          <label for="userId">userId</label>
          <input type="text" id="mid" name="mid" required="required"/>
        </div>
        <div class="form-group">
          <label for="userPwd">Password</label>
          <input type="password" id="mpwd" name="mpwd" required="required"/>
        </div>
        <div class="form-group">
          <label class="form-remember">
          </label><a href="#" class="form-recovery">Forgot Password?</a>
        </div>
        <div class="form-group">
          <button id="loginBtn">LogIn</button>
        </div>
      </form>
    </div>
  </div>
  
  
  <!-- 회원가입 뷰 -->
  
  <div class="form-panel two">
    <div class="form-header">
      <h1>Join Member</h1>
    </div>
    <div class="form-content">
      <form id="joinForm" action="/joinNanum.me" method="post" encType="multipart/form-data">
		<table class="boardWrite wth700 mr_auto mt30"><!-- boardWrite S-->
			<colgroup>
				<col style="width:20%;">
				<col style="width:%;">
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">*아이디</th>
				<td>
					
					<input id="SId" name="mid" type="text"  required="required">
				</td>
				
				<td>
					<span>
						&nbsp;&nbsp;<a id="idCheckBtn3" class="btn btn-primary" > 중복확인</a>
						<span id="idCheckMsg"></span>
					</span>
				</td>

			</tr>

			<tr>
				<th scope="row">*비밀번호</th>
				<td>
					<input id="SPwd" name="mpwd" type="password" required="required"> 
					<span id="pwdCheckMsg"></span>
				</td>

			</tr>
			<tr>
				<th scope="row">*비밀번호 확인</th>
				<td>
					<input id="SPwd2" type="password" required="required"> 
				</td>
		
			</tr>
			<tr>
				<th scope="row">*이름</th>
				<td>
					<label for=""></label>
					<input id="SName" name=mName type="text" required="required"> 
				</td>
			</tr>
			<tr>
	
				<th scope="row">*닉네임</th>

				<td>
					<label for=""></label>
					<input id="nickName" name="mNickName" type="text" required="required"> 
				</td>
			</tr>

			<tr>
				<th scope="row">휴대폰번호</th>
				<td>
					<span>
						<input id="Sphone" name="mPhone" type="text" placeholder="-없이 입력">
					</span>
				 </td>
			</tr>
			<tr>
				<th scope="row">*이메일</th>
				<td>
					<input id="Semail1" name="email1" class="wth100" type="text" required="required">
				</td>

				<td>
					<input id="Semail2" name="email2" class="wth100" type="text" required="required">
				</td>
				<td>
			</tr>
			
			
			<tr>
			<td></td>
				<td>
					<select id="email">
							<option value="self" selected>직접입력</option>
							<option value="naver">naver.com</option>
							<option value="daum">daum.net</option>
							<option value="google">google.com</option>
					</select>
				</td>
				<td>
					<span>
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" >인증번호발송</a>
					<span id="idCheckMsg"></span>
					</span>
				</td>
			</tr>
			<tr>
					
					<%!
						public int getRandom(){
							int randomCode=0;
							randomCode = (int)Math.floor((Math.random()*99999-10000+1))+10000;
							return randomCode;
						}
					%>
				<td>
					<input type="hidden" value="<%=getRandom()%>" id="randomCode">
				</td>
				<td>	
						<input id="check" type="text" placeholder="인증번호를 입력하세요">
				</td>
				<td>
						<span id="check2">
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" >인증하기</a>
						<span id="idCheckMsg"></span>
					</span>

				</td>
			</tr>
			
			


			<tr>
				<th scope="row" >*주민등록번호</th>
				<td>
					<input type="text" size="25" name="mBirthDay" id="birth" maxlength="6" required="required">
				</td>
				<td>
					<input type="text" size="25" name="birth" id="birth" maxlength="1" required="required">
				</td>
				<td>******</td>
			</tr>
         	 

			</tbody>
			</table>
			
			<div align="center">
			<button type="reset">작성취소</button>
			<button type="submit">가입하기</button>
			</div>
		</form>

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

	$("#idCheckBtn").click(function(){
		$("#check").show();
		$("#check2").show();
	});
</script>
</body>
</html>