<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="6";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
	.to {font-size: 30px; font-weight: 600;}
	a {color: #333;}
	#button{text-align: center;}
	/* .textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;} */
</style>

<title>감사편지 쓰기</title>
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

		<div style="float: left; margin-left: 35px;">
			<h1><i class="chevron right icon"></i>TO. 둘이두리님 궁금해요</h1>
		</div>
		<br>
		<br>
		
		<div style="margin-left: 35px;">			
			<!-- Q&A : 제목 -->
			<div>
				<button class="ui button">제목</button>&nbsp;&nbsp;
				<div class="ui input" style="width: 39.5%;">
					<input type="text" placeholder="제목을 입력해주세요">
				</div>
			</div>
			<br>
			
			
			<!-- Q&A : 내용 -->
			<div>
				<div class="field">
				    <textarea style="width: 92%; height: 600px;"></textarea>
				 </div>
			</div>
		</div>
		
		<div style="height: 100px;"></div>
		
		<div id="button">
			<button onclick="location.href='qna.happy'" class="massive ui instagram button">문의하기 완료</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button style="width: 21%;" class="massive ui button">취소하기</button>
		</div>

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>


</body>
</html>