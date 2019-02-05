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
	<title>http://www.blueb.co.kr</title>

<style rel="stylesheet">
html {
  width: 100%;
  height: 100%;
}

body {	
  background:orange;
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
  border-radius: 4px;
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

</style>
</head>
<body>


<!-- Form-->
<div class="form">
  <div class="form-toggle"></div>
  <div class="form-panel one">
    <div class="form-header">
      <h1>행복두리 Login</h1>
    </div>
    <div class="form-content">
      <form action="login.me" method="POST">
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
  <div class="form-panel two">
    <div class="form-header">
      <h1>Join Member</h1>
    </div>
    <div class="form-content">
      <form id="joinForm" action="<%=request.getContextPath()%>/insertMember.me" method="post">
		<table class="boardWrite wth700 mr_auto mt30"><!-- boardWrite S-->
			<colgroup>
				<col style="width:30%;">
				<col style="width:%;">
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">아이디</th>
				<td>
					
					<input id="SId" name="userId" type="text">
				</td>
				
				<td>
					<span>
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" > 중복확인</a>
						<span id="idCheckMsg"></span>
					</span>
				</td>

			</tr>

			<tr>
				<th scope="row">비밀번호</th>
				<td>
					<input id="SPwd" name="userPwd" type="password"> 
					<span id="pwdCheckMsg"></span>
				</td>

			</tr>
			<tr>
				<th scope="row">비밀번호 확인</th>
				<td>
					<input id="SPwd2" type="password"> 
				</td>
		
			</tr>
			<tr>
				<th scope="row">이름</th>
				<td>
					<label for=""></label>
					<input id="SName" name="userName" type="text"> 
				</td>
				<td align="center">
					<b>닉네임</b>
				</td>
				<td>
					<label for=""></label>
					<input id="nickName" name="nickName" type="text"> 
				</td>
			</tr>
			<!-- <tr>
				<th scope="row">닉네임</th>
				<td>
					
				</td>
			</tr> -->
			
			<tr>
				<th scope="row">휴대폰번호</th>
				<td>
					<span>
						<input id="Sphone" name="phone" type="text" placeholder="-없이 입력">
					</span>
				 </td>
			</tr>
			<tr>
				<th scope="row">이메일</th>
				<td>
					<input id="Semail1" name="email1" class="wth100" type="text">
				</td>

				<td>
					<input id="Semail2" name="email2" class="wth100" type="text">
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
						<input id="authCode" type="text" placeholder="인증번호를 입력하세요">
				</td>
				<td>
						<span>
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" >인증하기</a>
						<span id="idCheckMsg"></span>
					</span>

				</td>
			</tr>
			

			<tr>
				<th scope="row">주소</th>
				<td>
					<input id="address" name="address" class="wth100" type="text">
				</td>
				<td>
					<span>
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" >주소검색</a>
					<span id="idCheckMsg"></span>
					</span>
				</td>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<input id="address" name="address" class="wth100" type="text" placeholder="상세주소를 입력해주세요">
				</td>
				
			</tr>
			


			<tr>
				<th scope="row">계좌번호</th>
				<td>
					은행명  <select name="bankcode" id="bankcode">
							<option value="004">국민은행</option>
							<option value="003">기업은행</option>
							<option value="088">신한은행</option>
							<option value="011">농협</option>
							<option value="020">우리은행</option>
						</select>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<input type="text" size="25" placeholder="'-'를 제외하고 입력" name="accnum" id="accnum"><br>
				
				</td>
				<td>

						&nbsp;<a id="idCheckBtn" class="btn btn-primary" >계좌인증</a>

					
				</td>
				<td><img id="accountCheckImg" class="checkTest" src=""></td>
			</tr>
			
			<tr>
				<th scope="row" >주민등록번호</th>
				<td>
					<input type="text" size="25" name="birth" id="birth" maxlength="6">
				</td>
				<td>
					<input type="text" size="25" name="birth" id="birth" maxlength="1">
				</td>
				<td>******</td>
			</tr>
			
			<tr>
				<th scope="row">증빙서류 제출</th>
				<td>
					서류유형  <select name="bankcode" id="bankcode">
							<option value="004">기초생활수급자</option>
							<option value="003">소년소녀가장</option>
							<option value="088">한부모가정</option>
						</select>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<input type="file" size="25"  name="accnum" id="accnum"><br>
				
				</td>

			</tr>
			
			
			</tbody>
			</table>
			
		
			<!-- <div id="fileArea">
				<input type="file" id="IdCardImg" name="IdCardImg" onchange="loadImg(this, 1)">
				<input type="file" id="faceImg" name="faceImg" onchange="loadImg(this, 2)">
			</div> -->

		<div class="form-group">
          <button type="submit">Register</button>
        </div>
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
</script>
</body>
</html>