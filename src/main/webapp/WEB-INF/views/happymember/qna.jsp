<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="6";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
	a {color: #333;}
	#button{text-align: center;}
	/* .textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;} */
</style>

<title>마이페이지>나의 문의내역</title>
<!-- Q&A -->
</head>
<body>
<c:if test="${empty sessionScope.loginUser}">
	<c:set var="message" value="해당 페이지는 로그인을 해야 이용하실 수 있습니다." scope="request"></c:set>
	<jsp:forward page="../common/errorPage.jsp"/>
</c:if>
 
<c:if test="${not empty sessionScope.loginUser and loginUser.mtype == 'H'}">
<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<%@ include file="include/myNav.jsp" %>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
	 
		<%@ include file="include/tabMypage.jsp" %>

		<div class="titNavi">
			<div style="float: left;" class="ptag"><h1><i class="chevron right icon"></i>TO. 둘이두리님 궁금해요</h1></div>
			<div style="float: left;">
				<h4 style="font-weight: 600">
					답변완료&nbsp;<i class="green circle icon" alt="답변완료"></i>&nbsp;&nbsp;
					답변 중&nbsp;<i class="yellow circle icon" alt="답변 중"></i>
				</h4>
			</div>
			<span>마이페이지 &gt; 나의 문의 내역</span>
		</div>
		<br>
		
		<table class="boardList mt30">
			<colgroup>
				<col style="width:6%;"><!-- No -->
				<col style="width:17%;"><!--  -->
				<col style="width:35%;"><!--  -->
				<col style="width:15%;"><!--  -->
				<col style="width:10%;"><!--  -->
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">제목</th>
				<th scope="col">내용</th>
				<th scope="col">답변상태</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>증빙서류를 기간 내에 내지 못했어요</td>
				<td class="tleft"><a href="qnaDetail.happy">안녕하세요! 증빙서류를 제 기간 내에 내지 못했습니다</a></td>
				<td><i class="green circle icon" alt="답변완료"></i></td>
			</tr>
			</tbody>
		</table>

		<div class="numbox pt40 pb50"> 
			<span><a class="num" href="#">&lt;</a></span>
			<span><a class="num on" href="#">1</a></span>
			<span><a class="num" href="#">2</a></span>
			<span><a class="num" href="#">3</a></span>
			<span><a class="num" href="#">4</a></span>
			<span><a class="num" href="#">5</a></span>
			<span><a class="num" href="#">&gt;</a></span>
		</div>
		
		<div style="height: 100px;"></div>
		
		<div id="button" class="textSilver">
			<button onclick="location.href='qnaInsert.happy'" class="massive ui instagram button">문의하러 가기</button>
		</div>
		
		
		
		
	</div>


	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %>
 --%>

</div><!--// Wrap E-->
</c:if>


</body>
</html>