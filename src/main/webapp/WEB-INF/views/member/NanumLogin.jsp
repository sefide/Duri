<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="kr">
<head>
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<meta charset="UTF-8">
<title>둘이두리 - 나눔두리 로그인</title>

<style rel="stylesheet">
html {
	width: 100%;
	height: 100%;
}

body {
	background: #FFFFA1;
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

#idCheckBtn, #idCheckBtn2, #idCheckBtn3, #sendEmail {
	border: 1px solid white;
	background: #FFFFFF;
	color: yellowgreen;
}

#idCheckBtn:hover, #idCheckBtn2:hover, #idCheckBtn3:hover, #sendEmail:hover
	{
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

input, select {
	margin-bottom: 7px;
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

input {
	background: #FFFED7;
}

#two2 {
	position: absolute;
	top: 150px;
	left: 700px;
	font-size: 60px;
	font-weight: bold;
}

#add {
	position: absolute;
	top: 150px;
	left: 830px;
	font-size: 60px;
	font-weight: bold;
}

#img1 {
	width: 120px;
	height: 80px;
	position: absolute;
	top: 120px;
	left: 930px;
	font-size: 60px;
	font-weight: bold;
}

#check, #check2 {
	display: none;
}

#join:hover {
	background: yellowgreen;
	color: white;
	border: 1px solid white;
	cursor: pointer;
}

	
	#gender1:hover{
		cursor:pointer;
		background:lightblue;
		color:white;
		border:1px solid white;
	}
	#gender2:hover{
		cursor:pointer;
		background:lightpink;
		color:white;
		border:1px solid white;
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
  <div class="form-panel one" style="height:500px">
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
          
          <a href="#" id="memJoin" class="form-recovery">회원가입</a>
          <a href="#" class="form-recovery">Forgot Password?</a>
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
      <form id="joinForm" name="sub1" action="insert.me" method="post">
		<table class="boardWrite wth700 mr_auto mt30"><!-- boardWrite S-->
			<colgroup>
				<col style="width:20%;">
				<col style="width:%;">
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">*아이디</th>
				<td>
					
					<input id="mid2" name="mid" type="text"  required>
				</td>
				
				<td>
					<span>
						&nbsp;&nbsp;<button id="idCheckBtn3" onclick="duplicationCheck();" class="btn btn-primary" > 중복확인</button>
						<span id="idCheckMsg"></span>
					</span>
				</td>

			</tr>

			<tr>
				<th scope="row">*비밀번호</th>
				<td>
					<input id="mpwd2" name="mpwd" type="password" required="required"> 
					<span id="pwdCheckMsg"></span>
				</td>

			</tr>
			<tr>
				<th scope="row">*비밀번호 확인</th>
				<td>
					<input id="mpwd22" type="password" required="required"> 
				</td>
		
			</tr>
			<tr>
				<th scope="row">*이름</th>
				<td>
					<label for=""></label>
					<input id="mName" name=mName type="text" required="required"> 
				</td>
			</tr>
			<tr>
	
				<th scope="row">*닉네임</th>

				<td>
					<label for=""></label>
					<input id="mNickName" name="mNickName" type="text" required="required"> 
				</td>
			</tr>

			<tr>
				<th scope="row">*휴대폰번호</th>
				<td>
					<span>
						<input id="mPhone" name="mPhone" type="text" placeholder="-없이 입력">
					</span>
				 </td>
			</tr>
			<tr>
				<th scope="row">*이메일</th>
				<td>
					<input id="mEmail" name="email1" class="wth100" type="text" required="required">
				</td>

				<td>
					<input id="mEmail2" name="email2" class="wth100" type="text" required="required">
				</td>
				<td><input type="hidden" id="email" name="email"></td>
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
						&nbsp;&nbsp;<a id="sendEmail" class="btn btn-primary" >인증번호발송</a>
					<span id="idCheckMsg"></span>
					</span>
				</td>
			</tr>
			<tr>
					<td></td>
								<td><input id="check" type="text" placeholder="인증번호를 입력하세요">
								</td>
								<td><span id="check2"> &nbsp;&nbsp;<a
										id="idCheckBtn" class="btn btn-primary">인증하기</a> <span
										id="idCheckMsg"></span>
								</span></td>

							</tr>
							<tr>
								<th scope="row">*성별</th>
								<td><input type="button" name="mGender1" id="gender1" value="남" ></td>
								<td><input type="button" name="mGender2" id="gender2" value="여"></td>
								<td><input type="hidden" id="mGender" name="mGender"></td>
							</tr>


						</tbody>
					</table>

					<input type="button" value="가입하기" id="join" onclick="erchk();">
					<!-- 			
			<div align="center">
				<button type="reset">작성취소</button>
				<button type="submit">가입하기</button>
			</div> -->
				</form>

			</div>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script type="text/javascript">
  
	  var panelOne = $('.form-panel.two').height(),
	    panelTwo = $('.form-panel.two')[0].scrollHeight;

	  $("#memJoin").click(function(){
	    

	    $('.form-toggle').addClass('visible');
	    $('.form-panel.one').addClass('hidden');
	    $('.form-panel.two').addClass('active');
	    $('.form').animate({
	      'height': panelTwo
	    }, 200);
	    
	  });
	 
	  
	  //회원가입 폼 x눌렀을때 반응
	  $('.form-toggle').on('click', function(e) {
	    e.preventDefault();
	    //모든 정보 초기화
	    $("#joinForm").each(function() {
	        this.reset();
	    });
	    $(this).removeClass('visible');
	    $('.form-panel.one').removeClass('hidden');
	    $('.form-panel.two').removeClass('active');
	    $('.form').animate({
	      'height': '500'
	    }, 200);
	  });


	$("#idCheckBtn").click(function(){
		$("#check").show();
		$("#check2").show();
	});
	
	
	//아이디 중복체크
	var i = 0;
	function duplicationCheck(){
		var mid2=$("#mid2").val();
		console.log(mid2);
		if(mid2 == ""){
			
			swal("아이디를 입력해주세요!");
		}else{
		$.ajax({
			url:"duplicationCheck.me",
			type:"post",
			data:{mid2:mid2},
			success:function(data){
				console.log(data);
				  if (data > 0) {
	                   console.log(data);
	                   swal("존재하는 아이디 입니다!");
	                    
	    
	                } else{
	                    swal("사용가능한 아이디입니다.");
	                    i = 1;
	                }
			},
			error:function(status){
				console.log(status);
			}
			
		});
		
		
		return false;
	}	
	}
	
	var mGender = null;
	//성별 체크
	
	$("#gender1").click(function(){
		$("#gender1").css("background","lightblue").css("color","white").css("border","white");
		mGender = "M";
		console.log(mGender);
	});
	
	$("#gender2").click(function(){
		$("#gender2").css("background","lightpink").css("color","white").css("border","white");
		mGender = "F";
		console.log(mGender);
	});
	
	
	
	var m = null;


	//이메일 인증 버튼 클릭시 랜덤 번호 전송
	$("#sendEmail").click(function(){
		if($("#mEmail").val()=="" || $("#mEmail2").val()==""){
			swal("이메일을 입력해주세요!");
		}else{
			
			var email = null;
		email = $("#mEmail").val() + "@" + $("#mEmail2").val();
		console.log(email);
		$.ajax({
			url:"emailCheckNumSend.do",
			type:"post",
			data:{email:email},
			success:function(data){
				console.log(data);
	                   console.log(data);
	                   swal("메일이 발송되었습니다.")
	               		m = data;

	   
			},
			error:function(status){
				console.log(status);
			}
		
			
		});
		/* location.href="emailCheckNumSend.do?email=" + email; */
		$("#check").show();
		$("#check2").show();
		
		}
	});
	
	
	//이메일 인증번호 일치 여부
	var okEmail = 0;
	$("#check2").click(function(){
	            if($("#check").val() == m){
	            	swal("인증이 완료되었습니다.");
	            	$("#sendEmail").unbind("click"); //a태그 비활성화
	            	$("#sendEmail").css("background","gray").css("color","white").css("cursor","default").css("border","solid 1px gray");
	            	$("#idCheckBtn").css("background","gray").css("color","white").css("cursor","default").css("border","solid 1px gray");
	            	okEmail = 1;
	            }else if($("#check").val() == ""){
	            	swal("인증번호를 입력해주세요!");
	            }else{
	            	swal("인증번호가 틀렵습니다!")
	            	okEmail = 2;
	            	$("#mpwd2").val("");
	            }
	});
	
	
	
	//필수입력사항 입력 검사
	function erchk() {
			//필수입력값 입력유무 조사
			if($("#mid2").val()!="" 
				&& $("#mpwd2").val()!="" && $("#mpwd22").val()!="" && $("#mName").val()!="" 
				&& $("#mNickName").val()!="" && $("#mEmail").val()!="" && $("#mEmail2").val()!=""
				&& $("#mBirthDay").val()!="" && $("#mPhone")!="" && mGender!="" ){
				//중복확인 유무 조사
				if(i == 1){
					//비밀번호 일치 여부 조사
					if($("#mpwd2").val()==$("#mpwd22").val()){
						if(okEmail == 1){
							$("#email").val($("#mEmail").val() + "@" + $("#mEmail2").val());
							$("#mGender").val(mGender);
							
					        var queryString = $("form[name=sub1]").serialize() ;
					        
					        $.ajax({
					            type : 'post',
					            url : 'insert.me',
					            data : queryString,
					            error: function(xhr, status, error){
					                alert(error);
					            },
					            success : function(data){
					                swal("둘이두리 회원가입을 축하합니다! 당신의 행복나눔을 응원합니다!").then(function(){
					                	location.href="nanumLogin.me";
					                });
					            },
					        });

						}else{
							swal("이메일을 인증해 주세요!");
						}

					}else{
						swal("비밀번호가 일치하지 않습니다!");
						$("#mpwd2").val("");
						$("#mpwd22").val("");
					}
				
				
					
				}else{
					
					swal("중복확인을 해주세요!");
				}
					
				
			}else{
				swal("필수 입력 사항을 입력해 주세요!");
			}
		   
  }
		







</script>
</body>
</html>