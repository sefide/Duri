<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#logo_img:hover {
	cursor: pointer;
}

.nav-link {
	font-weight: bold !important;
}

.nav-link:hover {
	color: black !important ;
	cursor: pointer;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar" >
    <div class="container" >
    	<img id="logo_img" alt="이미지" src="resources/common/images/nanum_logo.png" width="160px" height="60px;" onclick="location.href='main.nanum'">
      <!-- <a class="navbar-brand" href="main.nanum" style="color: rgb(50, 147, 63);">둘이두리 나눔두리</a> -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
      </button>

      <div class="collapse navbar-collapse" id="ftco-nav" > 
        <ul class="navbar-nav ml-auto">        
          <!-- 상시 -->
          <li class="nav-item"><a href="money_donate.bo" class="nav-link" style="color: rgb(50, 147, 63);" >크라우드펀딩</a></li>
          <li class="nav-item"><a href="long_donate.bo" class="nav-link" style="color: rgb(50, 147, 63);" >정기후원</a></li>
          <li class="nav-item"><a href="QnAList.nanum" class="nav-link" style="color: rgb(50, 147, 63);" >QnA</a></li>
          <!-- 비 로그인 시-->
          <c:if test="${ empty sessionScope.loginUser2 }">
          <li class="nav-item"><a href="nanumLogin.me" class="nav-link" style="color: rgb(50, 147, 63);" >로그인</a></li>
          </c:if>
		  <!-- 로그인  시-->
          <c:if test="${ !empty sessionScope.loginUser2 }">
          <li class="nav-item"><a href="logout.me" class="nav-link" style="color: rgb(50, 147, 63);" >로그아웃</a></li>
          <li class="nav-item"><a href="mypage.nanum" class="nav-link" style="color: rgb(50, 147, 63);" >마이페이지</a></li>
          </c:if>
          
        </ul>
      </div>
    </div>
  </nav>
</body>
</html>