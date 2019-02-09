<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<jsp:include page="../Nanummember/include/common.jsp" />
<title> 나눔두리 마이페이지</title>
<jsp:include page="../common/css.jsp" />
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
	#back-btn{
		background: #FE9D35;
		width : 320px;
		height : 50px;
		border-radius : 5px;
		text-align : center;
		padding-top : 8px;
		cursor : pointer;
	}
	#btnReturnPage{
		border-radius : 4px;
		font-weight : 600;
		color : white;
		font-size : 19px;
		cursor : pointer;
	}
	.active{
    	background: #fcc4a8;
	    color: #f86f2d;
	    border: 1px solid transparent;
    }
</style>
</head>
<body>
	<jsp:include page="../common/navi.jsp" />
	<jsp:include page="../Nanummember/include/header.jsp" />
	
	<br><br><br><br>	
	<div class="contBox inner">
		<jsp:include page="include/tabMypage_point.jsp"/>

		<div class="tableArea">
			<div id="myTitle"> <i class="reply icon"></i>후원포인트 환불신청 </div>
   			<!-- ftco-animate -->
   			<p>둘이두리에서는 결제 기부하신 기부자님들께 연말정산 소득공제를 위한 기부금영수증 발급을 지원합니다. <br>
			소득세법 제 160조의 3에 따라 기부금 영수증을 발행하고 있으며, 개인정보(고유식별정보) 수집 및 이용에
			동의를 해주셔야 기부금 영수증 발급이 가능합니다. </p>
			<div id = "back-btn">
				<a href = "pointReturn.pm" id = "btnReturnPage">환불 신청하러가기</a>
   			</div>
   			
   			<br><br><br><br>
			
			<div id="myTitle"><i class="reply all icon"></i>포인트 환불 처리 내역</div>
			<table>
				<thead>
					<tr>
						<th>요청일시</th>
						<th>요청금액</th>
						<th>예금주명 </th>
						<th>은행</th>
						<th>계좌번호</th>
						<th>처리상태</th>
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
								환불 처리중
							</c:if>
							<c:if test = "${ rf.rStatus == 'Y' }">
								환불 완료
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
			
			<div class="col text-center">
				<div class="block-27">
					<ul>
						<c:if test="${ pi.currentPage <= 1 }">
						<li><a href="#">&lt;</a></li>
						</c:if>
						<c:if test="${ pi.currentPage > 1 }">
							<c:url var="blistBack" value="pointReturnList.pm">
								<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
							</c:url>
							<li><a href="${ blistBack }">&lt;</a></li>
						</c:if>
						
						<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
							<c:if test="${ p eq pi.currentPage }">
								<li><a class="active" href="${ blistCheck }">${ p }</a></li>
							</c:if>
							<c:if test="${ p ne pi.currentPage }">
								<c:url var="blistCheck" value="pointReturnList.pm">
									<c:param name="currentPage" value="${p}"/>
								</c:url>
								<li><a href="${ blistCheck }">${ p }</a></li>
							</c:if>
						</c:forEach>
						
						<c:if test="${ pi.currentPage >= pi.maxPage }">
							<li><a href="#">&gt;</a></li>
						</c:if>
						<c:if test="${ pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="pointReturnList.pm">
								<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
							</c:url>
							<li><a href="${ blistEnd }">&gt;</a></li>
						</c:if>
						
					</ul>
				</div>
			</div>
		</div>

	
	</div>								
			
			
	<script>
		$("#back-btn").click(function(){
			location.href = "pointReturn.pm";
		});
	</script>

	<jsp:include page="../Nanummember/include/myNav.jsp" />
	<br><br>
    
    <!-- footer  -->
    <jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- loader -->
	<jsp:include page="../common/loader.jsp"></jsp:include>
	
</body>
</html>