<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<% 
	String bigtabon="6";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
	 #contentA:hover {
	    color: #4183c4;
	    text-decoration: none;
	    cursor: pointer;
	}
	#button{text-align: center;}
	/* .textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;} */
</style>

<title>마이페이지>Q&A</title>
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
			<span>마이페이지 &gt; Q&A</span>
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
				<th scope="col">작성일시</th>
				<th scope="col">답변상태</th>
			</tr>
			</thead>
			<tbody>
			<c:if test="${ !empty qnaList }">
			<c:forEach items="${qnaList }" var="qnaList">
				<tr>
					<td style="display: none;">${qnaList.qno}</td>
					<td><c:out value="${qnaList.rnum }"></c:out></td>
					<td><c:out value="${qnaList.qtitle }"></c:out></td>
					<td id="contentA" class="requestQno"><c:out value="${qnaList.qcontent }"></c:out></td>
					<td><c:out value="${qnaList.qdate }"></c:out></td>
					<c:if test="${ empty qnaList.qanswer }">
						<td><i class="yellow circle icon" alt="답변중"></i></td>
					</c:if>
					<c:if test="${ !empty qnaList.qanswer }">
						<td><i class="green circle icon" alt="답변완료"></i></td>
					</c:if>
				</tr>	
			</c:forEach>
			</c:if>
			
			<c:if test="${ empty qnaList }">
				<tr>
					<td colspan = "5"> Q&A 작성 내역이 없습니다.  </td>
				<tr>
			</c:if>
			</tbody>
		</table>	

		<div class="numbox pt40 pb50"> 
			<c:url var="firstList" value="qna.happy">
				<c:param name="currentPage" value="${pi.startPage }"></c:param>
			</c:url>
			<span><a class="num" href="${firstList }">&lt;&lt;</a></span>
			<c:if test="${pi.currentPage <= 1 }">
			<span><a class="num" href="#">&lt;</a></span>
			</c:if>
			<c:if test="${pi.currentPage > 1 }">
				<c:url var="listBack" value="qna.happy">
					<c:param name="currentPage" value="${pi.currentPage - 1 }"></c:param>
				</c:url>
				<span><a class="num" href="${listBack }">&lt;</a></span>
			</c:if>
			<!-- var : 현재 반복 횟수에 해당하는 변수의 이름 -->
			<c:forEach var="page" begin="${pi.startPage }" end="${pi.endPage }">
				<c:if test="${page eq pi.currentPage }">
					<span><a class="num on" href="${listCheck }">${page }</a></span>
				</c:if>
				<c:if test="${page ne pi.currentPage }">
					<c:url var="listCheck" value="qna.happy">
						<c:param name="currentPage" value="${page }"></c:param>
					</c:url>
					<span><a class="num" href="${ listCheck}">${page }</a></span>
				</c:if>
			</c:forEach>
			
			<c:if test="${pi.currentPage >= pi.maxPage }">
				<span><a class="num" href="#">&gt;</a></span>
			</c:if>
			<c:if test="${pi.currentPage < pi.maxPage}">
				<c:url var="listEnd" value="qna.happy">
					<c:param name="currentPage" value="${ pi.currentPage + 1}"></c:param>
				</c:url>
				<span><a class="num" href="${ listEnd}">&gt;</a></span>
			</c:if>
			<c:url var="endList" value="qna.happy">
				<c:param name="currentPage" value="${pi.endPage }"></c:param>
			</c:url>
			<span><a class="num" href="${endList }">&gt;&gt;</a></span>
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
</c:if>
<script>
	$(".requestQno").click(function (){
		var requestQno = $(this).parent().children().eq(0).text();
		
		location.href="qnaDetail.happy?requestQno="+requestQno;
		console.log("잘 찍었나? : " + requestQno);
	});

</script>

</body>
</html>