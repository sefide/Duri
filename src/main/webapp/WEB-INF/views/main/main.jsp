<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	의희 관리자 뷰<br>
	링크연결 완료<br>
	<a href="adminMain.ad">관리자 메인페이지</a><br>
	
	<a href="QnA.ad">관리자Q&A</a><br>
	<a href="Euihee_ui-elements.ad">템플릿</a><br>
	


	<hr>
		아진이 뷰 <br>
	<a href="Ajin1.nanum">아진 - 전체 메인페이지</a><br>
	<a href="Ajin2.nanum">아진 - 나눔두리 메인페이지</a><br>
	<a href="Ajin3.nanum">아진 - 마이페이지</a><br>
	<a href="Ajin4.nanum">아진 - 마이페이지_정기후원</a><br>
	<a href="Ajin5.nanum">아진 - 마이페이지_편지</a><br>
	<a href="Ajin6.nanum">아진 - 마이페이지_기부금 영수증</a><br>
	<a href="Ajin7.nanum">아진 - 마이페이지 _하고싶었던 후원</a><br>
	<a href="Ajin_QnA_list.nanum">아진 - QnA_목록</a><br>
	<a href="Ajin_QnA_insert.nanum">아진 - QnA_등록</a><br>
	<a href="Ajin_QnA_detail.nanum">아진 - QnA_상세</a><br>

  
	<hr>
	애린이 뷰<br>
	<a href="mypage.happy">애린 - mypage.jsp</a><br>
	<a href="longDonate.happy">애린 - longDonate.jsp</a><br>
	<a href="deliveryStatus.happy">애린 - deliveryStatus.jsp</a><br>
	<a href="thankyouLetter.happy">애린 - thankyouLetter.jsp</a><br>
	<a href="qna.happy">애린 - qna.jsp</a><br>
	<a href="qnaDetail.happy">애린 - qnaDetail.jsp</a><br>
	<a href="qnaInsert.happy">애린 - qnaInsert.jsp</a><br>
	<a href="proofDocument.happy">애린 - proofDocument.jsp</a><br>
	<a href="return.happy">애린 - payment > point_return_happy.jsp</a><br>
	
	
	<hr>
	은지 뷰
	로그인 정보<br>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>
	
	<c:if test="${ !empty sessionScope.loginUser }">	<!-- 로그인유저 존재시 세션에서 로그인유저 정보 표시 -->
	    <h3 align="right"><c:out value="${ sessionScope.loginUser.mNickName }님 환영합니다."/></h3>
	    <button>정보수정</button>
	    <button onclick="location.href='logout.me'">로그아웃</button>
	</c:if>	<br>
	
	<c:if test="${ !empty sessionScope.loginUser2 }">
	    <h3 align="right"><c:out value="${ sessionScope.loginUser2.mNickName }님 환영합니다."/></h3>
	    <button>정보수정</button>
	    <button onclick="location.href='logout.me'">로그아웃</button>
	</c:if>	
	
	<br>
	<a href="Eunji_cloudList.bo">은지 - 크라우드펀딩 페이지(금액후원)</a><br>
	<a href="Eunji_cloudList2.bo">은지 - 크라우드펀딩 페이지(물품후원)</a><br>
	<a href="Eunji_happyLogin.me">은지 - 로그인페이지(행복두리)</a><br>
	<a href="Eunji_nanumLogin.me">은지 - 로그인페이지(나눔두리)</a><br>
	<a href="Eunji_cloudWrite.bo">은지 - 펀딩글 작성 페이지</a><br>
	
	<hr>
	
	<a href="directFund.pm">다힝 정기후원 진행</a><br>
	<a href="fundItem.pm">다힝 물품후원 진행</a><br>
	<a href="fundMoney.pm">다힝 금액후원 진행</a><br>
	<a href="pointCharge.pm">다힝 포인트 충전</a><br>
	<a href="pointHistory.pm">다힝 포인트 히스토리</a><br>
	<a href="donateReceipt.pm">다힝 기부금영수증</a><br>
	<a href="pointReturn.pm">다힝 포인트 환급_나눔두리</a><br>
	<a href="pointReturnHappy.pm">다힝 포인트 환급_행복두리</a><br>
	<a href="pointReturnList.pm">다힝 포인트 환급목록_나눔두리</a><br>
	<a href="pointReturnListHappy.pm">다힝 포인트 환급목록_행복두리</a><br>
	
</body>
</html>