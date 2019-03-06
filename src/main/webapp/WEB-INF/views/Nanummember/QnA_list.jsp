<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<%@ include file="../common/css.jsp" %>
<%@ include file="../common/navi.jsp" %>
<%@ include file="include/common.jsp" %>
<style>
.head {
	width: 90%;
	margin: 0 auto;
	margin-top: 70px;
}
.QnA-nocie {
	width: 80%;
	margin: 0 auto;
	margin-top: 30px;
	/* border: 2px solid red; */
	position: static;
}

.QnA-list {
	width: 80%;
	margin: 0 auto;
	margin-top: 30px;
	/* border: 2px solid yellow; */
	position: static;
}
#myTitle{
	margin-bottom: 20px;
	font-size:25px;
	color: rgba(250, 143, 61);
	font-weight: bold;	
}	
.nontice{
	font-size:20px;
	color: rgba(250, 143, 61);
	margin-left: 30px;
}
.tableArea {
	width: 95%;
	margin: 0 auto;	
	padding-bottom: 20px;
}

table {
	width: 96%;
	margin: 0 auto;
	color: #434343;
	border-top: 4px solid #FE9D35;
	text-align: center;
	margin-bottom: 10px;
}

th {
	color: rgba(250, 143, 61);
	background: #FFEDBF;
	font-weight: bold;
	font-size: 17px;
}

tr {
	height: 50px;
}

td {
	font-size: 16px;
}
.writeBtn{
	width: auto;
	height : auto;
	background-color : rgba(250, 143, 61);
	color : white;
	font-weight : bold;
	margin-right: 20px;
}
tr:hover{
	background-color : rgb(249, 246, 234);
	cursor: pointer;
}
</style>
</head>
<body>
	<!-- if 로그인이 되어있다면 로그아웃추가..?-->
	<div class="head">
		<hr>		
	</div>
	<!-- QnA 공지사항 -->
	<div class="QnA-nocie">
		<div id="myTitle"><i class="question icon"></i>QnA</div>
		
		<ul>
			<li class="nontice">비방 / 욕설은 삼가 해 주세요.</li>
			<li class="nontice">모든 나눔두리들이 볼 수 있는 공간이니 매너는 필수입니다.</li>
		</ul>		
	</div>
	<!-- QnA 리스트 -->
	
	<div class="QnA-list">
		 <c:if test="${ !empty sessionScope.loginUser2 }">
		<button onclick="insertQnA();" 
			class="ui orange basic button" style="float: right; margin-right: 50px;" >글 작성하기</button>		 
		</c:if>
		<br><br>
		<div class="tableArea">
				<table>
					<thead>
						<tr >
							<th style="width: 10%;">글번호</th>
							<th style="width: 40%;">제목</th>
							<th style="width: 15%;">작성자</th>
							<th style="width: 15%;">작성일</th>
							<th style="width: 10%;">답변상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${QnAList}" var = "QnAList" varStatus="">
							<tr onclick="goQnADetail(${QnAList.qNo});">
							<td><c:out value="${QnAList.rnum}"/></td>
							<td><c:out value="${QnAList.qTitle}"/></td>							
							<td><c:out value="${QnAList.mNick}"></c:out></td>
							<td><c:out value="${QnAList.qDate}"></c:out></td>
							<c:choose>
								<c:when test="${QnAList.qAnswer == NULL }">
									<td>-</td>
								</c:when>
								<c:otherwise>
									<td>답변완료</td>
								</c:otherwise>
							</c:choose>			
						</tr>
						</c:forEach> 
					</tbody>	
				</table>
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<c:if test="${ pi.currentPage <= 1 }">
							<li><a href="#">&lt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="blistBack" value="QnAList.nanum">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p == pi.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi.currentPage }">
									<c:url var="blistCheck" value="QnAList.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="QnAList.nanum">
									<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
						</div>
			</div>	
	</div>
	<script>
	//편지 상세 보기로 가기
	function goQnADetail(qNo) {	
		var qNo = qNo ;
		location.href="QnADetail.nanum?qNo="+qNo;
	}
	function insertQnA() {
		location.href="QnAInsertForm.nanum";
	}
	</script>
	
</body>
</html>