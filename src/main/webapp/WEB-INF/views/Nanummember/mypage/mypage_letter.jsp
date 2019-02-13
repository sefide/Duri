<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="3";
%>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<%@ include file="../include/common.jsp" %>
<title> 나눔두리 마이페이지</title>
<%@ include file="../../common/css.jsp" %>
<style>
.mb50 {
     margin-bottom: 0px !important; 
}
#myTitle{
	margin-bottom: 20px;
	font-size:25px;
	color: rgba(250, 143, 61);
	font-weight: bold;
	
}	
.tableArea{
	width : 95%;
	margin : 0 auto;
	padding-top: 50px;
	padding-bottom: 20px;
/* 	margin-left: 20px;
	margin-right: 20px;   */
}
	table {
		width : 96%;
		margin : 0 auto;
		color : #434343;
		border-top : 4px solid #FE9D35; 
		text-align:center;	
		margin-bottom: 10px;
	}
	th{				
		color :  rgba(250, 143, 61);
		background : #FFEDBF;
		font-weight: bold;
		font-size: 17px;
	}
	tr{
		height : 50px;
	}
	td{
		font-size: 16px;
	}
	.categotyBtn{
		width: 80px;
		height: 30px;
		text-align: center;
		display: table-cell;
        vertical-align: middle; 
		background-color: #FFEDBF;  
		color: #FE9D35;
		font-weight:bold;
		cursor:pointer;
		text-align: center;
		
	}
.categotyBtn:hover{
		color:  rgb(50, 147, 63);
	}

tr:hover{
		cursor: pointer;
		background : #f2f1ed;
	}
</style>
</head>
<body>
<%@ include file="../../common/navi.jsp" %>
<%@ include file="../include/header.jsp" %>
<!-- #wrap {position:relative; width:100%;} -->
<br><br><br><br>	
			<div class="contBox inner">
				<%@ include file="../include/tabMypage.jsp"%>

			<div class="tableArea">
				<div id="myTitle"><i class="envelope icon"></i></i>정기 행복두리 편지</div>
				<div style="width: 96%; margin: 0 auto;">
				<div class="categotyBtn" onclick="#" style="margin-right: 30px;">진행중</div>
				<div class="categotyBtn" onclick="#">종료</div>
				</div>
				<table>
					<thead>
						<tr>
							<th style="width: 20%;">행복두리</th>
							<th style="width: 60%;">감사편지 제목</th>
							<th style="width: 20%;">작성일</th>
						</tr>
					</thead>
					<tbody>
						<!-- <tr class="hoverTr" onclick="location.href='mypageLetterDetail.nanum'"> -->						
						<c:forEach items="${dlList}" var = "dl" varStatus="">
							<tr>
							<td><c:out value="${dl.mNick}"/></td>
							<td><c:out value="${dl.leTitle}"/></td>							
							<td><c:out value="${dl.leWriteDate}"></c:out></td>					
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
								<c:url var="blistBack" value="mypage.nanum">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p == pi.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi.currentPage }">
									<c:url var="blistCheck" value="mypage.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="mypage.nanum">
									<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>

			<div class="tableArea">
				<div id="myTitle"><i class="envelope outline icon"></i>크라우드펀딩 행복두리 편지</div>
				<div style="width: 96%; margin: 0 auto;">
				<div class="categotyBtn" onclick="#" style="margin-right: 30px;">금액</div>
				<div class="categotyBtn" onclick="#">물품</div>
				</div>
				<table>
					<thead>
						<tr>
							<th style="width: 20%;">행복두리</th>
							<th style="width: 60%;">감사편지 제목</th>
							<th style="width: 20%;">작성일</th>															
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${mclList}" var = "mcl" varStatus="">
							<tr>
							<td><c:out value="${mcl.mNick}"/></td>
							<td><c:out value="${mcl.leTitle}"/></td>							
							<td><c:out value="${mcl.leWriteDate}"></c:out></td>					
						</tr>
						</c:forEach>
						
					</tbody>
				</table>
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<c:if test="${ pi2.currentPage <= 1 }">
							<li><a href="#">&lt;</a></li>
							</c:if>
							<c:if test="${ pi2.currentPage > 1 }">
								<c:url var="blistBack" value="mypage.nanum">
									<c:param name="currentPage" value="${ pi2.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi2.startPage }" end="${ pi2.endPage }">
								<c:if test="${ p == pi2.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi2.currentPage }">
									<c:url var="blistCheck" value="mypage.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi2.currentPage >= pi2.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi2.currentPage < pi2.maxPage }">
								<c:url var="blistEnd" value="mypage.nanum">
									<c:param name="currentPage" value="${ pi2.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>
		</div>	

			
			
	

	<%@ include file="../include/myNav.jsp" %>

</body>
</html>