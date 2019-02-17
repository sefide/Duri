<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="3";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
	a {color: #333;}
	#button{text-align: center;}
	.textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;}
</style>

<title>물품 배송현황</title>
<!--  배송현황 목록 -->
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
			<div style="float: left;"><h1><i class="chevron right icon"></i>물품 배송 현황</h1></div>
			<div style="float: left; vertical-align: middle;" class="ptag">
				<div style="float: left;" class="textSilver" >&nbsp;&nbsp;&nbsp;* 배송받을&nbsp;</div>
				<div style="float: left;" class="textOrange" >주소가 변경 되었을 시&nbsp;</div>
				<div style="float: left;" class="textSilver" >반드시&nbsp;</div>
				<div style="float: left;" class="textOrange" >수정해주세요.&nbsp; </div>
				<div style="float: left;" class="textSilver" >내 정보수정에서도 수정할 수 있습니다. </div>
				<!-- <h5>&nbsp;&nbsp;
				* 배송받을 주소가 변경 되었을 시 반드시 수정해주세요.  내 정보 수정에서도 수정할 수 있습니다.
				</h5> -->
			</div>
			<span>마이페이지 &gt; 물품 배송 현황</span>
		</div>
		<br>

		<table class="boardList mt30">
			<caption>전체공고 리스트입니다.</caption>
			<colgroup>
				<col style="width:7%;"><!-- No -->
				<col style="width:20%;"><!--  -->
				<col style="width:9%;"><!--  -->
				<col style="width:13%;"><!--  -->
				<col style="width:13%;"><!--  -->
				<!-- <col style="width:%;">
				<col style="width:%;">
				<col style="width:%;">
				<col style="width:%;"> -->
			</colgroup>
			<thead>
				<tr>
					<th scope="col">No</th>
					<th scope="col">물품명</th>
					<th scope="col">개수</th>
					<th scope="col">배송신청일</th>
					<th scope="col">배송현황</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${ !empty deliveryList}">
				<c:forEach items="${deliveryList }" var="deliveryList">
					<tr>
						<td><c:out value="${deliveryList.rnum }"/></td>
						<td><c:out value="${deliveryList.dd_name }"/></td>
						<td><c:out value="${deliveryList.ddvalue }"/></td>
						<td><c:out value="${deliveryList.dd_date }"/></td>
						<td>
							<a id="deliveryBtn" class="sbtn gy" href="#"/>배송상태 보기</a>
						</td>	
					</tr>
				</c:forEach>
				</c:if>
				
				<c:if test="${ empty deliveryList}">
					<tr>
						<td colspan = "5"> 물품 배송 내역이 없습니다.  </td>
					</tr>
				</c:if>
			</tbody>
		</table>
		
		<div class="numbox pt40 pb50"> 
			<c:if test="${pi.currentPage <= 1 }">
				<span><a class="num" href="#">&lt;</a></span>
			</c:if>
			<c:if test="${pi.currentPage > 1 }">
				<c:url var="listBack" value="selectDeliveryList.happy">
					<c:param name="currentPage" value="${pi.currentPage - 1 }"></c:param>
				</c:url>
				<span><a class="num" href="${ listBack}">&lt;</a></span>
			</c:if>
			
			<c:forEach var="page" begin="${pi.startPage }" end="${pi.endPage }">
				<c:if test="${page eq pi.currentPage }">
					<span><a class="num on" href="${listCheck }">${page }</a></span>
				</c:if>
				<c:if test="${page ne pi.currentPage }">
					<c:url var="listCheck" value="selectDeliveryList.happy">
						<c:param name="currentPage" value="${page }"></c:param>
					</c:url>
					<span><a class="num" href="${listCheck }">${page }</a></span>
				</c:if>
			</c:forEach>
			
			<c:if test="${pi.currentPage >= pi.maxPage }">
				<span><a class="num" href="#">&gt;</a></span>
			</c:if>
			<c:if test="${pi.currentPage < pi.maxPage }">
				<c:url var="listEnd" value="selectDeliveryList.happy">
					<c:param name="currentPage" value="${pi.currentPage + 1 }"></c:param>
				</c:url>
				<span><a class="num" href="${listEnd }">&gt;</a></span>
			</c:if>
		</div>
		
		<div style="height: 100px;"></div>
		
		<div id="button" class="textSilver">
			<button onclick="location.href='myInfoModifyHappy.happy'" class="massive ui instagram button">배송지 수정하러 가기</button>
		</div>

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>

<script>
	$("#deliveryBtn").hover(function(){
		$("#deliveryBtn").text("택배접수 완료");
	},function(){
		$("#deliveryBtn").text("배송상태 보기")
	});
	
	
</script>
</body>
</html>