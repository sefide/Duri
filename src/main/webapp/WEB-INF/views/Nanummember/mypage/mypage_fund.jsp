<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="2";
%>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/common.jsp" %>
<title> 나눔두리 마이페이지 - 정기후원현황</title>
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
	tr:hover{
		cursor: pointer;
		background : #f2f1ed;
	}
	.categotyBtn{
		width: 80px;
		height: 30px;
		text-align: center;
		display: table-cell;
        vertical-align: middle; 
		background-color: #FFEDBF; 
		/* border-top: 3px solid #FE9D35;
		border-left: 3px solid #FE9D35; */
		/* border-right: 1px solid #FE9D35; */	 
		color: #FE9D35;
		font-weight:bold;
		/*margin-left : 10px;
		margin-right: 10px;		
		padding-left: 10px;
		padding-right: 10px;  */
		cursor:pointer;
		text-align: center;
	}
	.categotyBtn:hover{
		color:  rgb(50, 147, 63);
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
				<div id="myTitle"><i class="child icon"></i> 진행중인 정기후원현황</div>
				<table>
					<thead>
						<tr>
							<th style="width: 20%;">행복두리</th>
							<th style="width: 20%;">후원금액</th>
							<th style="width: 20%;">누적 후원기간</th>
							<th style="width: 20%;">누적 후원금액</th>
							<th style="width: 20%;">후원 일시</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${fundIngList}" var = "fundIngList">
							<tr onclick="goFund(${fundIngList.mNo});">
								<td><c:out value="${fundIngList.mNickName}"/></td>
								<td><fmt:formatNumber value = "${ fundIngList.value }" type="currency" currencySymbol=" "/> 원</td>
								<td><c:out value="${fundIngList.cnt}"/> 달 째</td>					
								<td><fmt:formatNumber value = "${ fundIngList.sum }" type="currency" currencySymbol=" "/> 원</td>
								<td><c:out value="${fundIngList.dhdDate}"/> </td>
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
								<c:url var="blistBack" value="mypageFund.nanum">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p == pi.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi.currentPage }">
									<c:url var="blistCheck" value="mypageFund.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="mypageFund.nanum">
									<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>

			<!-- 종료된 정기 후원 -->
						<div class="tableArea">
				<div id="myTitle"><i class="child icon"></i>종료된 정기후원</div>
				<table>
					<thead>
						<tr>
							<th style="width: 25%;">행복두리</th>
							<th style="width: 25%;">후원금액</th>
							<th style="width: 25%;">누적 후원기간</th>
							<th style="width: 25%;">누적 후원금액</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${fundEndList}" var = "fundEndList" varStatus="">
								<tr onclick="goFund(${fundEndList.mNo});">
									<td><c:out value="${fundEndList.mNickName}"/></td>
									<td><fmt:formatNumber value = "${ fundEndList.value }" type="currency" currencySymbol=" "/> 원</td>
									<td><c:out value="${fundEndList.cnt}"/> 달 </td>
									<td><fmt:formatNumber value = "${ fundEndList.sum }" type="currency" currencySymbol=" "/> 원</td>				
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
								<c:url var="blistBack" value="mypageFund.nanum">
									<c:param name="currentPage" value="${ pi2.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi2.startPage }" end="${ pi2.endPage }">
								<c:if test="${ p == pi2.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi2.currentPage }">
									<c:url var="blistCheck" value="mypageFund.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi2.currentPage >= pi2.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi2.currentPage < pi2.maxPage }">
								<c:url var="blistEnd" value="mypageFund.nanum">
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
	<script>
		// 상세로 가기
		function goFund(mNo) {	
			var mNo = mNo ;
			location.href="long_donate_detail.bo?longDetail="+mNo;
		}
	</script>
</body>
</html>