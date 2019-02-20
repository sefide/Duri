<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>둘이두리 나눔두리</title>
<meta charset="utf-8">
<!-- 공통 css 부분 -->
<jsp:include page="../common/css.jsp" />


<!-- google글꼴 -->
<link
	href="https://fonts.googleapis.com/css?family=Gamja+Flower|Nanum+Gothic:400,700,800|Nanum+Pen+Script|Poor+Story&amp;subset=korean" rel="stylesheet">

<style>
body {
	font-family: Nanum Gothic;

}
#gofund:hover{
	background: rgb(50, 147, 63);
	border-bottom-color: rgb(50, 147, 63);
}
</style>

</head>
<body>

	<!-- 네비바 -->
	<jsp:include page="../common/navi.jsp" />

	<!-- 메인 사진 부분 -->
	<div class="hero-wrap"
		style="background-image: url('/duri/resources/common/images/main.bg.jpg');"
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
						style="font-family:Nanum Pen Script; font-size: 80px;">
						<c:if test="${ empty sessionScope.loginUser2 }">
							 당신의 착한 마음을 응원합니다.
						</c:if>
						<c:if test="${ !empty sessionScope.loginUser2 }">
							"<c:out value="${ sessionScope.loginUser2.mName }"/>"님의 착한마음을 응원합니다.
						</c:if>
						
						
						
						  </h1>
						
					<p class="mb-5"
						data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
						</a>
					</p>
					<p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"></p>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 통계 부분 -->
	<section class="ftco-counter ftco-intro" id="section-counter">
	<div class="container">
		<div class="row no-gutters">
			<div
				class="col-md-5 d-flex justify-content-center counter-wrap ftco-animate">
				<div class="block-18 color-1 align-items-stretch">
					<div class="text">
						<span style="font-family:Nanum Pen Script; font-size: 40px;">총
							나눔두리 후원 액</span> <strong class="number" data-number="1432805">0</strong>
						<span style="">268명의 나눔두리들이 후원했어요</span>
					</div>
				</div>
			</div>
			<div
				class="col-md d-flex justify-content-center counter-wrap ftco-animate">
				<div class="block-18 color-2 align-items-stretch">
					<div class="text">
						<h3 class="mb-4"
							style="font-family:Nanum Pen Script; font-size: 60px;">정기후원</h3>
						<p style="">한명의 행복두리에게 매월 행복들 선물해주세요</p>
						<p>
							<a href="long_donate.bo" class="btn btn-white px-3 py-2 mt-2" id="gofund"
								style="font-family: Nanum Pen Script;  ">행복 선물하기</a>
						</p>
					</div>
				</div>
			</div>
			<div
				class="col-md d-flex justify-content-center counter-wrap ftco-animate">
				<div class="block-18 color-3 align-items-stretch">
					<div class="text">
						<h3 class="mb-4"
							style="font-family: Nanum Pen Script; font-size: 60px;">크라우드
							후원</h3>
						<p style="">여러 나눔두리에게 도움을 청하는 행복두리에게 행복을 나눠주세요</p>
						<p>
							<a href="money_donate.bo" class="btn btn-white px-3 py-2 mt-2" id="gofund"
								style="font-family: Nanum Pen Script;">행복 나눔하기</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<br>
	<br>

	<!-- 홈페이지 소개 부분 -->
	<section class="ftco-section bg-light" style="padding: 1em;">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-md-5 heading-section ftco-animate text-center">
				<h2 class="mb-4"
					style="font-family: Nanum Pen Script; font-size: 50px; color: rgb(50, 147, 63);">둘이두리란?</h2>
				<p style="font-family: Nanum Pen Script; font-size: 40px;">저소득층
					청소년들에게 행복을 나눠주는 크라우드 펀딩</p>
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
								style="font-size: 40px; color: #FD771A; font-family: Nanum Pen Script;">투명성</h3>
							<p>
								내 나눔이 정확히 행복두리에게 가는지 걱정이시라구요?<br> 걱정하지마세요.<br> 기부금이 아닌
								나눔두리에게 직접 수수료를 부과합니다.
							</p>
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
								style="font-size: 40px; color: #FD771A; font-family: Nanum Pen Script;">직접성</h3>
							<p>
								내 나눔이 행복두리에게 가지 않을까봐 걱정이시라구요?<br> 걱정하지 마세요.<br> 제 2의
								기관을 통하지 않고 바로 행복두리에게로 전해집니다.
							</p>
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

	<!--가이드라인 부분-->
	<section class="ftco-section bg-light" style="padding: 1em;">
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-md-5 heading-section ftco-animate text-center">
				<h2 class="mb-4"
					style="font-family: Nanum Pen Script; font-size: 50px; color: rgb(50, 147, 63);" >나눔두리가
					알아야 할 사항들</h2>
				<p style="font-family: Nanum Pen Script; font-size: 40px;"></p>
			</div>
		</div>
		<section class="ftco-section" style="padding: 0.5em 0;" >
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-6 d-flex ftco-animate">
					<div class="img img-about align-self-stretch"
						style="background-color: white; width: 100%;"></div>
				</div>
				<div class="col-md-12 pl-md-5 ftco-animate">
					<h2 class="mb-4" style="font-family: Nanum Pen Script; font-size: 40px; color: #FD771A;">나눔두리 등급</h2>
					<p>
						씨앗 나눔두리 : 크라우드 펀딩 후원 100% 달성 횟수가 1 ~ 4 회 => 수수료 5% <br> 새싹
						나눔두리 : 크라우드 펀딩 후원 100% 달성 횟수가 5 ~ 6 회 => 수수료 4%<br> 열매 나눔두리 :
						크라우드 펀딩 후원 100% 달성 횟수가 10회 이상 => 수수료 5%
					</p>
				</div>
			</div>
			<br>
			<div class="row d-flex" style="text-align: left: ;">			
				<div class="col-md-12 pl-md-5 ftco-animate">
					<h2 class="mb-4" style="font-family: Nanum Pen Script; font-size: 40px; color: #FD771A;">기부금 영수증 발행</h2>
					<p>
						주민등록 번호를 입력해주시면 기부영수증 발급을 도와드리겠습니다.
					</p>
				</div>
		
				<div class="col-md-6 d-flex ftco-animate">
					<div class="img img-about align-self-stretch"
						style="background-color: white; width: 100%;"></div>
				</div>
			</div>
			
		</div>
		</section>
	</div>
	</section>
	<br><br>
	<!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   <jsp:include page="../common/loader.jsp"></jsp:include>
    
  </body>
</html>