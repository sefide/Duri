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
<br><br><br><br>	
		<div class="contBox inner" id="fundIng" >
				<%@ include file="../include/tabMypage.jsp"%>
				
			<!-- 진행중인 정기후원 편지 -->
			<div class="tableArea" id="fundIngDiv">
				<div id="myTitle"><i class="envelope icon"></i></i>진행 중인 정기 행복두리 편지</div>
				<div style="width: 96%; margin: 0 auto;">
				<div id="fundIngBtn" class="categotyBtn" onclick="fundIng()" style="margin-right: 30px; color: green;">진행중</div>
				<div id="fundEndBtn" class="categotyBtn" onclick="fundEnd()">종료</div>
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
						<c:forEach items="${fundLetter}" var = "fundLetter" >
							<tr onclick="goLetterDetail(${fundLetter.leNo});">
								<td><c:out value="${fundLetter.mNick}"/></td>
								<td><c:out value="${fundLetter.leTitle}"/></td>							
								<td><c:out value="${fundLetter.leWriteDate}"></c:out></td>					
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
								<c:url var="blistBack" value="mypageLetter.nanum">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p == pi.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi.currentPage }">
									<c:url var="blistCheck" value="mypageLetter.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="mypageLetter.nanum">
									<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>

			<!-- 종료된 정기후원 편지 -->
			<div class="tableArea" id="fundEndDiv"  style="display: none;">
				<div id="myTitle"><i class="envelope icon"></i></i>종료된 정기 행복두리 편지</div>
				<div style="width: 96%; margin: 0 auto;">
				<div id="fundIngBtn" class="categotyBtn" onclick="fundIng()" style="margin-right: 30px;">진행중</div>
				<div id="fundEndBtn" class="categotyBtn" onclick="fundEnd()">종료</div>
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
						 <c:forEach items="${endFundLetter}" var = "endFundLetter" >
							<tr onclick="goLetterDetail(${endFundLetter.leNo});">
								<td><c:out value="${endFundLetter.mNick}"/></td>
								<td><c:out value="${endFundLetter.leTitle}"/></td>							
								<td><c:out value="${endFundLetter.leWriteDate}"></c:out></td>					
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
								<c:url var="blistBack" value="mypageLetter.nanum">
									<c:param name="currentPage" value="${ pi2.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi2.startPage }" end="${ pi2.endPage }">
								<c:if test="${ p == pi2.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi2.currentPage }">
									<c:url var="blistCheck" value="mypageLetter.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi2.currentPage >= pi2.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi2.currentPage < pi2.maxPage }">
								<c:url var="blistEnd" value="mypageLetter.nanum">
									<c:param name="currentPage" value="${ pi2.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>

			<!-- 금액 크라우드 편지  -->
			<div class="tableArea" id="moneyDiv">
				<div id="myTitle"><i class="envelope outline icon"></i> 금액 크라우드펀딩 행복두리 편지</div>
				<div style="width: 96%; margin: 0 auto;">
				<div id="moneyBtn" class="categotyBtn" onclick="moneyLetter()" style="margin-right: 30px; color: green;">금액</div>
				<div id="itemBtn" class="categotyBtn" onclick="itemLetter()">물품</div>
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
						<c:forEach items="${moneyCloudLetter}" var = "moneyCloudLetter" varStatus="">
							<tr onclick="goLetterDetail(${moneyCloudLetter.leNo});">
								<td><c:out value="${moneyCloudLetter.mNick}"/></td>
								<td><c:out value="${moneyCloudLetter.leTitle}"/></td>							
								<td><c:out value="${moneyCloudLetter.leWriteDate}"></c:out></td>					
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<c:if test="${ pi3.currentPage <= 1 }">
							<li><a href="#">&lt;</a></li>
							</c:if>
							<c:if test="${ pi3.currentPage > 1 }">
								<c:url var="blistBack" value="mypageLetter.nanum">
									<c:param name="currentPage" value="${ pi3.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi3.startPage }" end="${ pi3.endPage }">
								<c:if test="${ p == pi3.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi3.currentPage }">
									<c:url var="blistCheck" value="mypageLetter.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi3.currentPage >= pi3.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi3.currentPage < pi3.maxPage }">
								<c:url var="blistEnd" value="mypageLetter.nanum">
									<c:param name="currentPage" value="${ pi3.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>
			
			<!-- 물품 크라우드 편지  -->
			<div class="tableArea" id="itemDiv" style="display: none; ">
				<div id="myTitle"><i class="envelope outline icon"></i> 물품 크라우드펀딩 행복두리 편지</div>
				<div style="width: 96%; margin: 0 auto;">
				<div id="moneyBtn" class="categotyBtn" onclick="moneyLetter()" style="margin-right: 30px;">금액</div>
				<div id="itemBtn" class="categotyBtn" onclick="itemLetter()">물품</div>
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
						<c:forEach items="${itemCloudLetter}" var = "itemCloudLetter" varStatus="">
							<tr onclick="goLetterDetail(${itemCloudLetter.leNo});">
								<td><c:out value="${itemCloudLetter.mNick}"/></td>
								<td><c:out value="${itemCloudLetter.leTitle}"/></td>							
								<td><c:out value="${itemCloudLetter.leWriteDate}"></c:out></td>					
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<c:if test="${ pi4.currentPage <= 1 }">
							<li><a href="#">&lt;</a></li>
							</c:if>
							<c:if test="${ pi4.currentPage > 1 }">
								<c:url var="blistBack" value="mypageLetter.nanum">
									<c:param name="currentPage" value="${ pi4.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi4.startPage }" end="${ pi4.endPage }">
								<c:if test="${ p == pi4.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi4.currentPage }">
									<c:url var="blistCheck" value="mypageLetter.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi4.currentPage >= pi4.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi4.currentPage < pi4.maxPage }">
								<c:url var="blistEnd" value="mypageLetter.nanum">
									<c:param name="currentPage" value="${ pi4.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>
			
			

		</div>
		
	<%@ include file="../include/myNav.jsp" %>
	
	
		<script type="text/javascript">
		// 진행중인 정기 후원 편지  버튼 클릭시  
		function fundIng() {	
			var mno = ${ sessionScope.loginUser2.mno };		
			$.ajax({
				url:"mypageLetter.nanum",
				type:"post",
				data:{mno:mno},
				success:function(data){
					 $("#fundIngDiv").show(); 
					 $("#fundEndDiv").hide();
					 $("#fundIngBtn").css("color","green");
				},
				error:function(status){
					console.log(status);
				}				
			});
		}	
		//종료된  정기 후원 편지  버튼 클릭시
		function fundEnd() {	
			var mno = ${ sessionScope.loginUser2.mno };					
			$.ajax({
				url:"mypageLetter.nanum",
				type:"post",
				data:{mno:mno},
				success:function(data){
					 $("#fundIngDiv").hide(); 
					 $("#fundEndDiv").show();
					 $("#fundEndDiv").find("#fundEndBtn").css("color","green");					 
				},
				error:function(status){
					console.log(status);
				}				
			});
		}	
		
		// 금액 크라우드   버튼 클릭시  
		function moneyLetter() {	
			var mno = ${ sessionScope.loginUser2.mno };		
			$.ajax({
				url:"mypageLetter.nanum",
				type:"post",
				data:{mno:mno},
				success:function(data){
					 $("#moneyDiv").show(); 
					 $("#itemDiv").hide();
					 $("#moneyBtn").css("color","green");
				},
				error:function(status){
					console.log(status);
				}				
			});
		}	
		// 물품 크라우드   버튼 클릭시 
		function itemLetter() {	
			var mno = ${ sessionScope.loginUser2.mno };					
			$.ajax({
				url:"mypageLetter.nanum",
				type:"post",
				data:{mno:mno},
				success:function(data){
					 $("#moneyDiv").hide(); 
					 $("#itemDiv").show();
					 $("#itemDiv").find("#itemBtn").css("color","green");					 
				},
				error:function(status){
					console.log(status);
				}				
			});
		}	
		//편지 상세 보기로 가기
		function goLetterDetail(leNo) {	
			var leNo = leNo ;
			location.href="mypageLetterDetail.nanum?leNo="+leNo;
		}
		
		
		
		</script>
		
</body>
</html>