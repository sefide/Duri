<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="4";
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

		<div>
			<h1>
				<i class="chevron right icon"></i>TO. 나눔두리님<i class="orange heart icon"></i>
			</h1>
		</div>
		<br>
		<br>
		
		<div align="center">
			<!-- 감사편지 쓰기 : 나눔두리 이름 -->
			<div style="float: left;">
				&nbsp;<button class="ui button">나눔두리님</button>&nbsp;&nbsp;
				<div class="ui input" style="width: 330px;">
					<input type="text" placeholder="감사편지를 전할 나눔두리님의 이름을 써주세요.">
				</div>
				<!-- 나눔두리~제목 사이 여백 -->
				<div style="width: 90px; float: left;"></div>
			</div>
			
			
			<!-- 감사편지 쓰기 : 제목 -->
			<div>
				<button class="ui button">제목</button>&nbsp;&nbsp;
				<div class="ui input" style="width: 39.5%;">
					<input type="text" placeholder="제목을 입력해주세요">
				</div>
			</div>
			<br>
			
			
			<!-- 감사편지 쓰기 : 내용 -->
			<div>
				<div class="field">
				    <textarea style="width: 92%; height: 600px;"></textarea>
				 </div>
			</div>
		</div>
		
		<div style="height: 100px;"></div>
		
		<div id="button">
			<button onclick="#" class="massive ui instagram button">감사편지 보내기</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button onclick="reset();" style="width: 21%;" id="reset" class="massive ui button">취소하기</button>
		</div>

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>

<script>
	function reset(){
		$("#reset").reset();
	}
</script>


</body>
</html>