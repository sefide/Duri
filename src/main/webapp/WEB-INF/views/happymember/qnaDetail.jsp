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
			<h1><i class="chevron right icon"></i>제목 : 동생도 같이 후원 받을 수 있나요?</h1>
		</div>
		<div align="right" style="margin-right: 47px;">
			<h1>작성일 : 2019.01.11</h1>
		</div>
		<br>
		<br>
		
		<div align="center">
			<!-- Q&A : 내용 -->
			<div>
				<div class="field">
				    <textarea style="width: 92%; height: 600px;">동생이 올해 11살이 되었습니다. 저랑 동생 둘다 후원 받을 수 있는건가요? 혹시 같은 가족이라면 후원 받을 수 있는 사람의 수가 제한되나요??
				    </textarea>
				 </div>
			</div>
			<br>
			<br>
			<!-- 둘이두리 답변란 -->
			<div align="left" style="margin-left: 47px;">
				<button class="ui button">둘이두리님의 답변</button>
			</div>
			<br>
			<div>
				<div class="field">
				    <textarea style="width: 92%; height: 200px;"></textarea>
				 </div>
			</div>
			<div align="right" style="margin-right: 48px;">
				<a class="sbtn gy" href="#">답변등록</a>
			</div>
		</div>
		
		<div style="height: 100px;"></div>
		
		<div id="button">
			<button class="massive ui instagram button">목록으로 돌아가기</button>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>


</body>
</html>