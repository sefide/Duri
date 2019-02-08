<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>둘이두리 나눔두리</title>
<meta charset="utf-8">
<!-- 공통 css 부분 -->
<jsp:include page="../common/css.jsp" />


<!-- google글꼴 -->
<link
	href="https://fonts.googleapis.com/css?family=Gamja+Flower|Nanum+Gothic:400,700,800|Nanum+Pen+Script|Poor+Story&amp;subset=korean"
	rel="stylesheet">

<style>
body {
	font-family: Nanum Gothic;
	font-size: 45px;
}
.tm_btn{
	font-family: Nanum Pen Script;
    color: white;
    font-size: 50px;
    width: 380px;
    height: 150px;
    background-color: #FD771A;
    border-radius: 0.3em;
    text-align: center;
    display: table-cell;
    vertical-align: middle;
}

#goLogin{
	cursor:pointer;
}
</style>

</head>
<body>
	<!-- 메인 사진 부분 -->
	<div class="hero-wrap"
		style="background-image: url('/duri/resources/common/images/main_bg.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center"
				data-scrollax-parent="true">
				<div class="col-md-12 ftco-animate text-center"
					data-scrollax=" properties: { translateY: '70%' }">
					<h1 class="mb-4"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"
						style="font-family: Nanum Pen Script; font-size: 80px;">
						<br>당신의
						착한 마음을 응원합니다.<br><br>
						함께 가요 둘이두리</h1>
					<p class="mb-5"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						</a>
					</p>
					<p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"></p>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	
	<!-- 행복두리 나눔두리 소개 부분 -->
	<section class="ftco-section bg-light" style="padding: 1em; ">
	<div class="container-fluid" >
		<div class="row justify-content-center" >
			<div class="col-md-5 heading-section ftco-animate text-center" >
				<h2 class="mb-4"
					style="font-family: Nanum Pen Script; font-size: 50px;">행복 두리와
					나눔두리</h2>
				<p style="font-family: Nanum Pen Script; font-size: 40px;"></p>
			</div>
		</div>
		<section class="ftco-section" style="padding: 0.5em 0;">
		<div class="container" >
			<div class="row d-flex" style="background-color: #FFEDBF;">
				<div class="col-md-6 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 d-flex services p-3 py-4 d-block">
						<div class="icon d-flex mb-3">
							<span class="flaticon-donation-1"></span>
						</div>
						<div class="media-body pl-4">
							<h3 class="heading"
								style="font-size: 40px; color: #FD771A; font-family: Nanum Pen Script;">행복두리란</h3>
							<p style="font-size: 20px; font-weight: bold; ">
								초등 고학년학생 ~고등학생으로 구성되어있어요.<br>
								생계가 어렵고, 도움이 필요한 친구들은 모두 행복두리가 될 수 있어요.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 d-flex services p-3 py-4 d-block">
						<div class="icon d-flex mb-3">
							<span class="flaticon-donation-1"></span>
						</div>
						<div class="media-body pl-4">
							<h3 class="heading"
								style="font-size: 40px; color: #FD771A; font-family: Nanum Pen Script;">나눔두리란</h3>
							<p style="font-size: 20px; font-weight: bold; ">
								행복두리에게 행복을 나누어 주시는 나눔두리에요.<br>
								어린 학생들로 이루어진 행복두리에게 더 많은 행복을 나누어주세요.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
	</div>
	</section>
	<br><br>

	<!-- 홈페이지 소개 부분 -->
	<style>
	.bg-light {
    background: #fafafa !important;
    margin-top: -130px;
	}
	</style>
	<section class="ftco-section bg-light" style="padding: 1em;">
	<div class="container-fluid">
		<div class="row justify-content-center" >
			<div class="col-md-5 heading-section ftco-animate text-center" >
				<h2 class="mb-4"
					style="font-family: Nanum Pen Script; font-size:40px;">행복두리와 나눔두리가 함께가는 둘이두리로!</h2>
				<p style="font-family: Nanum Pen Script; font-size: 40px;"></p>
			</div>
		</div>
		<section class="">
		<div class="container" style="background-color: #FFEDBF;">
			<div class="row">
				<div class="col-md-6 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 d-flex services p-3 py-4 d-block">
						<div class="icon d-flex mb-3">
							<span class="flaticon-donation-1"></span>
						</div>
						<div class="media-body pl-4">
							<h3 class="heading"
								style="font-size: 40px; color: #FD771A; font-family: Nanum Pen Script;">행복두리가 되고 싶다면?</h3>
							<div class="tm_btn" id="goLogin" onclick="location.href='Eunji_happyLogin.me'">행복두리로 가자!</div>
							
						</div>
					</div>
				</div>
				<div class="col-md-6 d-flex align-self-stretch ftco-animate">
					<div class="media block-6 d-flex services p-3 py-4 d-block">
						<div class="icon d-flex mb-3">
							<span class="flaticon-donation"></span>
						</div>
						<div class="media-body pl-4">
							<h3 class="heading"
								style="font-size: 40px; color: #FD771A; font-family: Nanum Pen Script;">나눔두리가 되고 싶다면?</h3>
								<div class="tm_btn" id="goLogin" onclick="location.href='main.nanum'">나눔두리로 가자!</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
	</div>
	</section>
	<br>
	<br>

	
	
	<br><br>
	<!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   <jsp:include page="../common/loader.jsp"></jsp:include>
    
  </body>
</html>