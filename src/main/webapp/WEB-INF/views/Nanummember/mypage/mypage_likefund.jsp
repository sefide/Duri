<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="5";
%>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<%@ include file="../include/common.jsp" %>
<title> 나눔두리 마이페이지 - 하고싶은 후원</title>
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
		margin : 0 auto;
		color : #434343;
		border-top : 4px solid #FE9D35; 
		text-align:center;	
		margin-bottom: 10px;
	}
	th{						
		background : rgba(200,200,200,0.5);
		font-weight: bold; 
	}
	tr:hover{
		cursor: pointer;
		background: rgba(230,230,230,0.3);
	}
	tr{
		height : 50px;
	}
	tr, td, th {
		text-align : center;
	}
	.categotyBtn{
		width: 80px;
		height: 30px;
		text-align: center;
		display: table-cell;
        vertical-align: middle; 
		background-color: rgba(200,200,200,0.5);
		font-weight:bold;
		cursor:pointer;
		text-align: center;	
	}
	.categotyBtn:hover{
		color:  #FE9D35;
	}
	p {
    margin: 0 0 1em;
    line-height: 1.4285em;
	}
	#bar1 {
    width: 98%;
    margin: 0% auto;
    border-bottom: 1px solid #B8B8B8;
    height: 10px;
    margin-top: 15px;
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
			<br>
			<!-- 찜한 정기행복두리  -->
			<div class="tableArea">
				<div id="myTitle"><i class="heart icon"></i>보고싶은 정기 행복두리</div>
				<p>"<c:out value="${ sessionScope.loginUser2.mName }"/>"님이 찜한 후원입니다.<br>
				다시 한번 더 보고싶은 행복두리들입니다. <br>
				많은 행복두리에게 빛나는 마음을 널리 퍼트려 주세요.
				</p>
				<br>
				<table>
					<thead>
						<tr>
							<th style="width: 15%;">행복두리</th>
							<th style="width: 70%;">자기소개</th>		
							<th style="width: 15%;">찜한 일시</th>						
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${likeDirectList}" var = "likeDirectList" varStatus="">
							<tr onclick="goDirect(${likeDirectList.mNo});">
								<td><c:out value="${likeDirectList.mNick}"/></td>
								<td title="${likeDirectList.mpr}"><c:out value="${likeDirectList.mpr}"/></td>						
								<td><c:out value="${likeDirectList.flDate}"></c:out></td>											
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
								<c:url var="blistBack" value="mypageLikefund.nanum">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p == pi.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi.currentPage }">
									<c:url var="blistCheck" value="mypageLikefund.nanum">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="mypageLikefund.nanum">
									<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>
			
			<div id="bar1"></div>
			
			<!-- 찜한 금액 크라우드 펀딩 -->
			<div class="tableArea" id="MoneyCloud" style="display : block;">
				<div id="myTitle"><i class="heart icon"></i>보고싶은 금액 크라우드 펀딩</div>
				<p>"<c:out value="${ sessionScope.loginUser2.mName }"/>"님이 찜한 후원입니다.<br>
				다시 한번 더 보고싶은 금액 크라우드 펀딩 입니다. <br>
				도음이 많이 필요한 행복두리에게 소중한 마음을 선물해주세요.
				</p>
				<br>
				<div style="margin: 0 auto;">
				<div  id="mBtn" class="categotyBtn" onclick="MoneyCloud();" style="margin-right: 30px; color: #FE9D35;">금액</div>
				<div  id="iBtn" class="categotyBtn" onclick="ItemCloud();">물품</div>
				</div>
				<table>
				<thead>
						<tr>
							<th style='width: 25%;'>행복두리</th>
							<th style='width: 60%;'>크라우드 펀딩 제목</th>
							<th style='width: 15%;'>찜한 일시</th>								
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${likeMoneyList}" var = "likeMoneyList" varStatus="">
							<tr onclick="goFund(${likeMoneyList.fNo});">
							<td><c:out value="${likeMoneyList.mNick}"/></td>
							<td ><c:out value="${likeMoneyList.fTitle}"/></td>						
							<td><c:out value="${likeMoneyList.flDate}"></c:out></td>											
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
								<c:url var="blistBack" value="mypageLikefund.nanum">
									<c:param name="currentPage2" value="${ pi2.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>
							<c:forEach var="p2" begin="${ pi2.startPage }" end="${ pi2.endPage }">
								<c:if test="${ p2 == pi2.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p2 }</a></li>
								</c:if>
								<c:if test="${ p2 != pi2.currentPage }">
									<c:url var="blistCheck" value="mypageLikefund.nanum">
										<c:param name="currentPage2" value="${p2}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p2 }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi2.currentPage >= pi2.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi2.currentPage < pi2.maxPage }">
								<c:url var="blistEnd" value="mypageLikefund.nanum">
									<c:param name="currentPage2" value="${ pi2.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
			</div>
			
			<!-- 찜한 물품 크라우드 펀딩 -->
			<div class="tableArea" id="ItemCloud" style="display: none;">
				<div id="myTitle"><i class="heart icon"></i>보고싶은 물품 크라우드 펀딩</div>
				<p>"<c:out value="${ sessionScope.loginUser2.mName }"/>"님이 찜한 후원입니다.<br>
				다시 한번 더 보고싶은 물품 크라우드 펀딩 입니다. <br>
				도음이 많이 필요한 행복두리에게 소중한 마음을 선물해주세요.
				</p>
				<br>
				<div style=" margin: 0 auto;">
				<div  id="mBtn" class="categotyBtn" onclick="MoneyCloud();" style="margin-right: 30px;">금액</div>
				<div  id="iBtn" class="categotyBtn" onclick="ItemCloud();">물품</div>
				</div>
				<table>
					<thead>
						<tr>
							<th style="width: 25%;">행복두리</th>
							<th style="width: 60%;">크라우드 펀딩 제목</th>
							<th style="width: 15%;">찜한 일시</th>								
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${likeItemList}" var = "likeItemList" varStatus="">
							<tr onclick="goItemFund(${likeItemList.fNo});">
								<td><c:out value="${likeItemList.mNick}"/></td>
								<td ><c:out value="${likeItemList.fTitle}"/></td>						
								<td><c:out value="${likeItemList.flDate}"></c:out></td>											
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
								<c:url var="blistBack" value="mypageLikefund.nanum">
									<c:param name="currentPage3" value="${ pi3.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p3" begin="${ pi3.startPage }" end="${ pi3.endPage }">
								<c:if test="${ p3 == pi3.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p3 }</a></li>
								</c:if>
								<c:if test="${ p3 != pi3.currentPage }">
									<c:url var="blistCheck" value="mypageLikefund.nanum">
										<c:param name="currentPage3" value="${p3}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p3 }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi3.currentPage >= pi3.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi3.currentPage < pi3.maxPage }">
								<c:url var="blistEnd" value="mypageLikefund.nanum">
									<c:param name="currentPage3" value="${ pi3.currentPage + 1}"/>
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
	// 금액 크라우드 버튼 클릭시  
	function MoneyCloud() {	
		var mno = ${ sessionScope.loginUser2.mno };		
		$.ajax({
			url:"mypage.nanum",
			type:"post",
			data:{mno:mno},
			success:function(data){
				 $("#MoneyCloud").show(); 
				 $("#ItemCloud").hide();
				 $("#mBtn").css("color","#FE9D35");
			},
			error:function(status){
				console.log(status);
			}				
		});
	}	
	//물품 크라우드 버튼 클릭시
	function ItemCloud() {	
		var mno = ${ sessionScope.loginUser2.mno };					
		$.ajax({
			url:"mypage.nanum",
			type:"post",
			data:{mno:mno},
			success:function(data){
				 $("#MoneyCloud").hide(); 
				 $("#ItemCloud").show();
				 $("#ItemCloud").find("#iBtn").css("color","#FE9D35");					 
			},
			error:function(status){
				console.log(status);
			}				
		});
	}	
	// 정기상세로 가기
	function goDirect(mNo) {	
		var mNo = mNo ;
		location.href="long_donate_detail.bo?longDetail="+mNo;
	}
	//금액 후원 상세로 가기
	function goFund(fno) {	
		var fno = fno ;
		location.href="cloud_money_datail.bo?moneyDatail="+fno;
	}
	//물품 후원 상세로 가기
	function goItemFund(fno) {	
		var fno = fno ;
		location.href="cloud_thing_datail.bo?itemDatail="+fno;
	}
	</script>

</body>
</html>