<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="2";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<title>정기후원</title>
<!-- 정기후원 -->

<style>
	a {color: #333;}
	.num {font-size: 15px;}
	#button{text-align: center;}
	.textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;}
</style>
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
		
		<!-- <div class="titNavi">
			내 공고 목록
			<span>홈 &gt; 마이페이지 &gt; 내 공고 목록</span>
		</div> -->
		
		<div class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>정기 후원</h1></div>
			<div style="float: left;">
				<div style="float: left;" class="textSilver" >&nbsp;&nbsp;&nbsp;* 매월 둘째 주 월요일마다 후원 받은 금액이&nbsp;</div>
				<div style="float: left;" class="textOrange" >포인트로  자동 충전</div>
				<div style="float: left;" class="textSilver" >됩니다.&nbsp;반드시&nbsp;</div>
				<div style="float: left;" class="textOrange" >포인트 환급 신청&nbsp;</div>
				<div style="float: left;" class="textSilver" >바랍니다. </div>
				<!-- <h5>&nbsp;&nbsp;
				* 매월 둘째 주 월요일마다 후원 받은 금액이 포인트로  자동 충전됩니다. 반드시 포인트 환급 신청 바랍니다.
				</h5> -->
			</div>
			<span>마이페이지 &gt; 정기 후원 현황</span>
		</div>
		<br>
		
		<table class="boardList mt30">
			<caption>문의내역 리스트입니다.</caption>
			<colgroup>
				<col style="width:6%;"><!-- No -->
				<col style="width:14%;"><!--  -->
				<col style="width:30%;"><!--  -->
				<col style="width:15%;"><!--  -->
				<col style="width:10%;"><!--  -->
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">나눔두리</th>
				<th scope="col">후원금액</th>
				<th scope="col">후원 시작 날짜</th>
			</tr>
			</thead>
			<tbody>
				<c:if test="${!empty directFundList }">
				<c:forEach items="${directFundList}" var="directList">
					<tr>
						<td><c:out value="${directList.rnum}"/></td>
						<td><c:out value="${directList.dh_name_give}&nbsp;님" escapeXml="false"/></td>
						<td><c:out value="${directList.dhvalue}"/></td>
						<td><c:out value="${directList.dhstartdate}&nbsp;~" escapeXml="false"/></td>
					</tr>
				</c:forEach>
				</c:if>
				
				<c:if test="${ empty directFundList }">
					<tr>
						<td colspan = "4"> 정기 후원 내역이 없습니다.  </td>
					<tr>
				</c:if>
			</tbody>
		</table>

		<div class="numbox pt40 pb50"> 
			<c:if test="${pi.currentPage <= 1 }">
			<span><a class="num" href="#">&lt;</a></span>
			</c:if>
			<c:if test="${pi.currentPage > 1 }">
				<c:url var="listBack" value="longDonate.happy">
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
					<c:url var="listCheck" value="longDonate.happy">
						<c:param name="currentPage" value="${page }"></c:param>
					</c:url>
					<span><a class="num" href="${ listCheck}">${page }</a></span>
				</c:if>
			</c:forEach>
			
			<c:if test="${pi.currentPage >= pi.maxPage }">
				<span><a class="num" href="#">&gt;</a></span>
			</c:if>
			<c:if test="${pi.currentPage < pi.maxPage}">
				<c:url var="listEnd" value="longDonate.happy">
					<c:param name="currentPage" value="${ pi.currentPage + 1}"></c:param>
				</c:url>
				<span><a class="num" href="${ listEnd}">&gt;</a></span>
			</c:if>
		</div>
		
		
		<div style="height: 100px;"></div>
		
		<div id="button" class="textSilver">
			* 정기후원은 자기소개를 바탕으로 진행되므로 변경할 내용이 있을 시 수정해주세요.<br><br>
			<button onclick="location.href='myIntroModify.happy'"class="massive ui instagram button">자기소개 수정하기</button>
		</div>

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>
</body>
</html>