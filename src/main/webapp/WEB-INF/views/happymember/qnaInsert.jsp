<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="6";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
	.to {font-size: 30px; font-weight: 600;}
	a {color: #333;}
	#button{text-align: center;}
	/* .textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;} */
</style>

<title>마이페이지>Q&A>Q&A작성</title>
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
<form id="qnaInsertForm" action="myQnaInsert.happy">
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
					<input type="text" name="qnaTitle" placeholder="제목을 입력해주세요">
				</div>
			</div>
			<br>
			
			
			<!-- Q&A : 내용 -->
			<div>
				<div class="field">
				    <textarea name="qnaContent" style="width: 92%; height: 600px;"></textarea>
				 </div>
			</div>
		</div>
		
		<div style="height: 100px;"></div>
		
		<div id="button">
			<div onclick="qnaInsert();" class="massive ui instagram button">문의하기 완료</div>&nbsp;&nbsp;&nbsp;&nbsp;
			<button onclick="return back();" style="width: 21%;" class="massive ui button">취소하기</button>
		</div>
</form>
	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>

<script>
	function back(){
		history.back();
		return false;
	}
	
	function qnaInsert(){
		swal({
			  title: "Q&A를 남기겠습니까?",
			  text: "",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			    swal({
			    	title: "Q&A가 등록되었습니다.",
					text: "관리자의 답변을 기다려주세요!(1~7일 소요됩니다)",
			     	icon: "success",
			    }).then(function(){
			    	$("#qnaInsertForm").submit();
			    	console("성공"); 
			    });
			    
			  } else {
				swal("Q&A작성을 취소합니다.");
			  }
			});
	}
	
	
</script>

</body>
</html>