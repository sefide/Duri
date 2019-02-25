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
	.to {font-size: 30px; font-weight: 600;}
	 a:hover {
	    color: #4183c4;
	    text-decoration: none;
	    cursor: pointer;
	}
	#button{text-align: center;}
	
</style>

<title>마이페이지>Q&A>Q&A상세</title>
<!-- 감사편지 쓰기 -->

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
		<c:if test="${ !empty qnaDetail}">
		<div style="float: left; margin-left: 35px;">
			<h1><i class="chevron right icon"></i>제목 : ${qnaTitle }</h1>
		</div>
		<div align="right" style="margin-right: 47px;">
			<h1>작성일 : ${qnaDate}</h1>
		</div>
		<br>
		<br>
		<div align="center">
			<!-- Q&A : 내용 -->
			<div>
				<div class="field">
				    <textarea style="width: 92%; height: 600px; font-size: 18px;" readonly>${qnaContent}</textarea>
				</div>
			</div>
			<br>
			<br>
		</c:if>
			<!-- 둘이두리 답변란 -->
			<div align="left" style="margin-left: 47px;">
				<button class="ui button">둘이두리님의 답변</button>
			</div>
			<br>
		<c:choose>
			<c:when test="${ empty qnaAnswer}">
			<div>
				<div class="field">
				    <textarea id="qnaAnswerContent" style="width: 92%; height: 200px; font-size: 18px;" readonly>답변을 기다려 주세요.</textarea>
				 </div>
			</div>
			<!-- <div align="right" style="margin-right: 48px;">
				<a class="sbtn gy" id="qnaAnswerUpdate">답변등록</a>
			</div> -->
			</c:when>
			<c:otherwise>
			<div>
				<div class="field">
				    <textarea style="width: 92%; height: 200px; font-size: 18px;" readonly>${qnaAnswer }</textarea>
				 </div>
			</div>
			</c:otherwise>
		</c:choose>
			<%-- <c:if test="${loginUser.mtype == 'M' || loginUser2.mtype == 'M'} ">
			<div>
				<div class="field">
				    <textarea id="qnaAnswerContent" style="width: 92%; height: 200px;">답변을 기다려 주세요.</textarea>
				 </div>
			</div>
			<div align="right" style="margin-right: 48px;">
				<a class="sbtn gy" id="qnaAnswerUpdate">답변등록</a>
			</div>
			</c:if> --%>
		<div style="height: 100px;"></div>
		
		<div id="button">
			<button class="massive ui instagram button">목록으로 돌아가기</button>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	</div><!--// inner E-->
</div>
<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>
<script>
	$("#qnaAnswerUpdate").click(function(){
		var qnaAnswerContent = $("#qnaAnswerContent").val();
		console.log("답변등록 내용 : " + qnaAnswerContent);
		
		location.href="qnaAnswerUpdate.happy?qnaAnswerContent="+qnaAnswerContent;
	});



</script>

</body>
</html>