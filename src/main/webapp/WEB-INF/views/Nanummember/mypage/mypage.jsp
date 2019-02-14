<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="1";
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	tr:hover{
		cursor: pointer;
		background : #f2f1ed;
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
<br><br><br><br>
	<div class="contBox inner">
				<%@ include file="../include/tabMypage.jsp"%>
			
			<!-- 진행중인 금액 크라우드 펀딩  -->
			<div class="tableArea" id="MoneyCloudIng" style="display : block; ">
				<div id="myTitle"> <i class="hourglass half icon"></i>진행중인 금액 크라우드 펀딩</div>
				<div style="width: 96%; margin: 0 auto;">
				<div id="mBtn" class="categotyBtn" onclick="MoneyCloudIng()" style="margin-right: 30px; color: green;">금액</div>
				<div id="iBtn" class="categotyBtn" onclick="ItemCloudIng()">물품</div>
				</div>
				<table id="MoneyCloudTbl">
					<thead>
						<tr>
							<th style="width: 40%;">제목</th>
							<th style="width: 15%;">진행현황</th>
							<th style="width: 15%;">내가 후원한 호인트</th>
							<th style="width: 15%;">후원 일시</th>
							<th style="width: 15%;">100%달성여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${moneyList}" var = "moneyList" varStatus="">
							<tr>
							<td><c:out value="${moneyList.fTitle}"/></td>
							<td></td>
							<td><c:out value="${moneyList.fhValue}"/></td>
							
							<td><c:out value="${moneyList.fhDate}"></c:out></td>
							<c:choose>
								<c:when test="${moneyList.fStatus eq 'GOAL'}">
									<td>O</td>
								</c:when>
								<c:otherwise>
									<td>X</td>
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
			
			<!-- 진행중인 물품 크라우드 펀딩  -->
			<div class="tableArea" id="ItemCloudIng" style="display: none; ">
				<div id="myTitle"> <i class="hourglass half icon"></i>진행중인 물품 크라우드 펀딩</div>
				<div style="width: 96%; margin: 0 auto;">
				<div id="mBtn" class="categotyBtn" onclick="MoneyCloudIng()" style="margin-right: 30px;">금액</div>
				<div id="iBtn" class="categotyBtn" onclick="ItemCloudIng()">물품</div>
				</div>
				<table id="">
					<thead>
						<tr>
							<th style="width: 40%;">제목</th>
							<th style="width: 15%;">진행현황</th>
							<th style="width: 15%;">내가 후원한 호인트</th>
							<th style="width: 15%;">후원 일시</th>
							<th style="width: 15%;">100%달성여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${itemList}" var = "itemList" varStatus="">
							<tr>
							<td><c:out value="${itemList.fTitle}"/></td>
							<td></td>
							<td><c:out value="${itemList.fhValue}"/></td>
							
							<td><c:out value="${itemList.fhDate}"></c:out></td>
							<c:choose>
								<c:when test="${itemList.fStatus eq 'GOAL'}">
									<td>O</td>
								</c:when>
								<c:otherwise>
									<td>X</td>
								</c:otherwise>
							</c:choose>						
						</tr>
						</c:forEach>
					</tbody>
				</table>				
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<c:if test="${ pi3.currentPage <= 1 }">
								<li><a href="#"> &lt; </a></li>
							</c:if>
							<c:if test="${ pi3.currentPage > 1 }">
								<c:url var="blistBack" value="mypage.nanum">
									<c:param name="currentPage" value="${ pi3.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi3.startPage }" end="${ pi3.endPage }">
								<c:if test="${ p == pi3.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi3.currentPage }">
									<c:url var="blistCheck" value="mypage.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi3.currentPage >= pi3.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi3.currentPage < pi3.maxPage }">
								<c:url var="blistEnd" value="mypage.nanum">
									<c:param name="currentPage" value="${ pi3.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
						</div>
				</div>
			</div>
			

			<!-- 종료된 금액 크라우드 펀딩 -->
			<div class="tableArea" id="MoneyCloudEnd" style="display : block;">
				<div id="myTitle"><i class="hourglass end icon"></i>종료된 금액 크라우드 펀딩</div>
				<div style="width: 96%; margin: 0 auto;">
				<div id="emBtn" class="categotyBtn" onclick="MoneyCloudEnd()" style="margin-right: 30px; color: green;" >금액</div>
				<div id="eiBtn" class="categotyBtn" onclick="ItemCloudEnd()">물품</div>
				</div>
				<table>
					<thead>					
						<tr>
							<th style="width: 40%;">제목</th>
							<th style="width: 15%;">진행현황</th>
							<th style="width: 15%;">내가 후원한 호인트</th>
							<th style="width: 15%;">후원 일시</th>
							<th style="width: 15%;">100%달성여부</th>
						</tr>					
					</thead>
					<tbody>
						<c:forEach items="${endMoneyList}" var = "endMoneyList" varStatus="">
							<tr>
							<td><c:out value="${endMoneyList.fTitle}"/></td>
							<td></td>
							<td><c:out value="${endMoneyList.fhValue}"/></td>
							
							<td><c:out value="${endMoneyList.fhDate}"></c:out></td>
							<c:choose>
								<c:when test="${endMoneyList.fStatus eq 'GOAL'}">
									<td>O</td>
								</c:when>
								<c:otherwise>
									<td>X</td>
								</c:otherwise>
							</c:choose>						
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
			
			<!-- 종료된 물품 크라우드 펀딩 -->
			<div class="tableArea" id="ItemCloudEnd" style="display: none; ">
				<div id="myTitle"><i class="hourglass end icon"></i>종료된 물품 크라우드 펀딩</div>
				<div style="width: 96%; margin: 0 auto;">
				<div id="emBtn" class="categotyBtn" onclick="MoneyCloudEnd()" style="margin-right: 30px; ">금액</div>
				<div id="eiBtn" class="categotyBtn" onclick="ItemCloudEnd()">물품</div>
				</div>
				<table>
					<thead>					
						<tr>
							<th style="width: 40%;">제목</th>
							<th style="width: 15%;">진행현황</th>
							<th style="width: 15%;">내가 후원한 호인트</th>
							<th style="width: 15%;">후원 일시</th>
							<th style="width: 15%;">100%달성여부</th>
						</tr>					
					</thead>
					<tbody>
						<c:forEach items="${endItemList}" var = "endItemList" varStatus="">
							<tr>
							<td><c:out value="${endItemList.fTitle}"/></td>
							<td></td>
							<td><c:out value="${endItemList.fhValue}"/></td>
							
							<td><c:out value="${endItemList.fhDate}"></c:out></td>
							<c:choose>
								<c:when test="${endItemList.fStatus eq 'GOAL'}">
									<td>O</td>
								</c:when>
								<c:otherwise>
									<td>X</td>
								</c:otherwise>
							</c:choose>						
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
								<c:url var="blistBack" value="mypage.nanum">
									<c:param name="currentPage" value="${ pi4.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi4.startPage }" end="${ pi4.endPage }">
								<c:if test="${ p == pi4.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi4.currentPage }">
									<c:url var="blistCheck" value="mypage.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi4.currentPage >= pi4.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi4.currentPage < pi4.maxPage }">
								<c:url var="blistEnd" value="mypage.nanum">
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
			// 진행중인 금액 크라우드 버튼 클릭시  
			function MoneyCloudIng() {	
				var mno = ${ sessionScope.loginUser2.mno };		
				$.ajax({
					url:"mypage.nanum",
					type:"post",
					data:{mno:mno},
					success:function(data){
						 $("#MoneyCloudIng").show(); 
						 $("#ItemCloudIng").hide();
						 $("#mBtn").css("color","green");
					},
					error:function(status){
						console.log(status);
					}				
				});
			}	
			//진행중인 물품 크라우드 버튼 클릭시
			function ItemCloudIng() {	
				var mno = ${ sessionScope.loginUser2.mno };					
				$.ajax({
					url:"mypage.nanum",
					type:"post",
					data:{mno:mno},
					success:function(data){
						 $("#MoneyCloudIng").hide(); 
						 $("#ItemCloudIng").show();
						 $("#ItemCloudIng").find("#iBtn").css("color","green");					 
					},
					error:function(status){
						console.log(status);
					}				
				});
			}	
			
			//종료된 금액 크라우드 버튼 클릭시 
			function MoneyCloudEnd() {	
				var mno = ${ sessionScope.loginUser2.mno };		
				$.ajax({
					url:"mypage.nanum",
					type:"post",
					data:{mno:mno},
					success:function(data){
						 $("#MoneyCloudEnd").show(); 
						 $("#ItemCloudEnd").hide();
						 $("#emBtn").css("color","green");
					},
					error:function(status){
						console.log(status);
					}				
				});
			}	
			//종료된 물품 크라우드 버튼 클릭시
			function ItemCloudEnd() {	
				var mno = ${ sessionScope.loginUser2.mno };			
				$.ajax({
					url:"mypage.nanum",
					type:"post",
					data:{mno:mno},
					success:function(data){
						 $("#MoneyCloudEnd").hide(); 
						 $("#ItemCloudEnd").show();
						 $("#ItemCloudEnd").find("#eiBtn").css("color","green");						 
					},
					error:function(status){
						console.log(status);
					}				
				});
			} 
			
		</script>	
</body>
</html>