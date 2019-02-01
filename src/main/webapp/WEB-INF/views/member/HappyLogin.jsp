<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/duri/resources/board/css/login.css?after" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
    
<head>
	<title>둘이두리-로그인페이지(행복)</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
<!--Coded with love by Mutiullah Samim-->
<body>
	
	<div class="container h-100">
	
		<div class="d-flex justify-content-center h-100">
		
			<div class="user_card">
				<div class="d-flex justify-content-center">
				</div>
	<!-- 			<div class="brand_logo_container">
						<img src="/duri/resources/board/images/main.png" class="brand_logo" alt="Logo">
						<a id="loginlogo" style="color:#FE8D03; font-size:20px; font-weight:bold">둘이</a>
						<a id="loginlogo2" style="color:green; font-size:20px; font-weight:bold">두리</a>
				</div> -->
				<a id="slogan" style="font-size:21px">당신의 <b>착한마음</b>을<br> 응원합니다.</a>
				<div class="d-flex justify-content-center form_container">
					<form>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="" class="form-control input_user" value="" placeholder="userId">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" name="" class="form-control input_pass" value="" placeholder="password">
						</div>
	
					</form>
				</div>
				<div class="d-flex justify-content-center mt-3 login_container">
					<button type="button" name="button" class="btn login_btn">Login</button>
				</div>
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
						<a href="#" class="ml-2">회원가입</a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<a href="#">아이디/비밀번호찾기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
