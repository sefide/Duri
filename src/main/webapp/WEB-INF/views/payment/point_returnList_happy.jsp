<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../happymember/include/common.jsp" />

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
 
<title>마이페이지>내사연</title>

<style>
	a {color: #333;}
	#button{text-align: center;}
	
</style>
</head>
<body>

 
<div id="wrap"><!-- Wrap S -->

<jsp:include page="../happymember/include/header.jsp" />

<jsp:include page="../happymember/include/myNav.jsp" />

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->

		<jsp:include page="include/tabMypage.jsp" />

		<div  class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>환급 내역</h1></div>
			<div style="float: left;">
				<h4 style="font-weight: 600">
					진행중&nbsp;<i class="green circle icon" alt="요청접수"></i>&nbsp;&nbsp;
					종료&nbsp;<i class="red circle icon" alt="환급완료"></i>&nbsp;&nbsp;
				</h4>
			</div>
			<span>마이페이지 &gt; 내 사연 &gt; 물품 후원 현황</span>
		</div>
		<br>
		
		<table class="boardList mt30">
			<caption>문의내역 리스트입니다.</caption>
			<colgroup>
				<col style="width:14%;"><!-- 환급요청일시 -->
				<col style="width:15%;"><!-- 요청금액 -->
				<col style="width:15%;"><!-- 은행 -->
				<col style="width:20%;"><!-- 예금주명 -->
				<col style="width:20%;"><!-- 계좌번호 -->
				<col style="width:6%;"><!-- 처리상태 -->
			</colgroup>
			<thead>
			<tr>
				<th scope="col">환급요청일시</th>
				<th scope="col">요청금액</th>
				<th scope="col">예금주명</th>
				<th scope="col">은행</th>
				<th scope="col">계좌번호</th>
				<th scope="col">처리상태</th>
			</tr>
			</thead>
			<tbody>
		
			<c:if test = "${ !empty rfList }">
			
    			<c:forEach var="rf" items="${ rfList }">
		    		<tr>	
					<td>${ rf.rDate }</td>
					<td>${ rf.rValue }</td>
					<td> - </td>
					<td>${ rf.rBank }</td>
					<td>${ rf.rAccount }</td>
					<td>
						<c:if test = "${ rf.rStatus == 'N' }">
							<i class="green circle icon" alt="요청접수"></i>
						</c:if>
						<c:if test = "${ rf.rStatus == 'Y' }">
							<i class="red circle icon" alt="환급완료"></i>
						</c:if>
					</td> 
					</tr>
				</c:forEach>
					
			</c:if>
			<c:if test = "${ empty rfList }">
				<tr>
					<td colspan = "6"> 환급 내역이 없습니다.  </td>
				<tr>
			</c:if>
			
			</tbody>
		</table>

		<div class="numbox pt40 pb50"> 
			<c:if test="${ pi.currentPage <= 1 }">
			<span><a class="num" href="#">&lt;</a></span>
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
				<c:url var="blistBack" value="pointReturnListHappy.pm">
					<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
				</c:url>
				<span><a class="num" href="${ blistBack }">&lt;</a></span>
			</c:if>
			
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<span><a class="num on" href="${ blistCheck }">${ p }</a></span>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="pointReturnListHappy.pm">
						<c:param name="currentPage" value="${p}"/>
					</c:url>
					<span><a class="num" href="${ blistCheck }">${ p }</a></span>
				</c:if>
			</c:forEach>
			
			<c:if test="${ pi.currentPage >= pi.maxPage }">
				<span><a class="num" href="#">&gt;</a></span>
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="pointReturnListHappy.pm">
					<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
				</c:url>
				<span><a class="num" href="${ blistEnd }">&gt;</a></span>
			</c:if>
			
		</div>
		<br><br><br><br>
		
		
		<div style="height: 10px;"></div>
		
		<div id="button">
			<button class="massive ui instagram button" onclick = "location.href = 'pointReturnHappy.pm'">포인트 환급 받기</button>
		</div>

</div><!--// inner E-->
</div> 

</div><!--// Wrap E-->

<script>
	$("#button").click(function(){
		location.href = "pointReturnHappy.pm";
	});
</script>


</body>
</html>