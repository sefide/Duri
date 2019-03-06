<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <title>둘이두리 - 일시후원</title>

    <meta charset="utf-8">
       <!-- 공통 css 부분 -->
      <jsp:include page="../common/css.jsp"/>
  </head>
  <style>
  	a{
  		font-size:20px;
  		font-weight:bold;
  	}
  	
  	b{
  		color:gray;
  	}
  	
	#money:hover,#thing:hover{
		background:orange;
		color:white;
		/* margin:10px; */
		padding:3px 3px;
		border-radius:8px;
	}
	
	#imgs:hover{
		background-image:none;
		
	}
	
	#goThDetail{
		background:white;
		font-weight:bold;
		font-size:20px;
		color:black;
		border:1px solid white;
		cursor:pointer;
		
	}
  </style>
  <body>
    
 		<!-- 네비바 -->
 		<jsp:include page="../common/navi.jsp"/>




	<c:set var="alphabet">/duri/resources/board/images/ebul.jpg , /duri/resources/board/images/ssal.jpg , /duri/resources/board/images/nuddle.jpg , /duri/resources/board/images/sengredae.jpg , /duri/resources/board/images/ssal.jpg , /duri/resources/board/images/yeon.jpg
	,/duri/resources/board/images/ssal.jpg , /duri/resources/board/images/ebul.jpg , /duri/resources/board/images/ssal.jpg , /duri/resources/board/images/sengredae.jpg , /duri/resources/board/images/nuddle.jpg , /duri/resources/board/images/yeon.jpg
	</c:set>
    <section class="ftco-section">
      <div class="container">
		<div class="row" style=" width:100% !important; height:70px !important">
		
        <h3 style="width:100%; text-align:center"><a href="money_donate.bo" id="money" style="font-size:25px;margin:10px;padding:10px; ">금액후원</a><b>|</b><a href="thing_donate.bo" id="thing" style="font-size:25px;margin:10px;padding:10px; ">물품후원</a></h3>

      </div>
		<div class="row">
			<c:forEach var="th" items="${thList}" varStatus="status1">
			
				<div class="col-md-4 ftco-animate">
					<div class="cause-entry">
					<c:forTokens items="${alphabet}" delims="," var="letter" varStatus="status2">
					<c:if test = "${ status1.index eq status2.index }">
						<a class="img" id="imgs"style="background-image: url(${letter});"></a>
						</c:if>
					</c:forTokens>
						<form action="cloud_thing_datail.bo" name="sub1" id="moneyForm"
							method="POST">
							<div class="text p-3 p-md-4">
								<input type="hidden" name="fno" id="fno" value="${th.fno}" />
								<h3>
									<input type="submit" id="goThDetail" value="${th.fTitle }" />
								</h3>
								<p>'${th.mNick }' 행복두리의 사연</p>
								<span class="donation-time mb-3 d-block" style="color: black;">${th.mFundType }</span>
								<fmt:formatNumber value = "${thList3[status1.index].sumValue }" type = "number" var = "sumValueEx"/>
									<fmt:formatNumber value = "${thList3[status1.index].sum }" type = "number" var = "sumEx"/>
									<c:set var="sum" value="0" />
								<c:forEach var="th3" items="${thList3}" varStatus = "status2">
								<c:if test="${th.fno eq th3.fno}">
									
									
									<c:if test="${not empty sum}">
									<c:set var="sum" value="${(sumValueEx/sumEx)*100}" />
										<%-- <div class="progress custom-progress-success">
											<div class="progress-bar bg-primary" role="progressbar"
												style="width: ${sum}%" aria-valuenow="${sum}" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div> --%>
									</c:if>
								</c:if>
								
			                	<c:if test = "${status2.last}">
				                	<div class="progress custom-progress-success">
											<div class="progress-bar bg-primary" role="progressbar"
												style="width: ${sum}%" aria-valuenow="${sum}" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
			                	</c:if>
									</c:forEach>
									
									<c:choose>
									<c:when test="${not empty sum}">
										<a><fmt:formatNumber value="${sum}" pattern=" " />%</a>
									</c:when>
									<c:otherwise>
										<a><fmt:formatNumber value="0" pattern=" " />%</a>
									</c:otherwise>
									</c:choose>
								<c:forEach var="th2" items="${thList2}" varStatus = "status2">
									<c:if test="${th.fno eq th2.fno}">
										<a style="float: right; font-size: 18px">${th2.iName } &nbsp;  </a>
									</c:if>
								</c:forEach>
						
									
							</div>
						</form>
				
					</div>
				</div>

		</c:forEach>
		</div>
	
		
			</div>
			
<br><br>
        <div class="col text-center">
					<div class="block-27">
							<ul>
							<c:if test="${ pi.currentPage <= 1 }">
							<li><a href="#">&lt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="blistBack" value="thing_donate.bo">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p == pi.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi.currentPage }">
									<c:url var="blistCheck" value="thing_donate.bo">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="thing_donate.bo">
									<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>						
						</ul>
					</div>
				</div>
      </div>
    </section>

  <!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   <jsp:include page="../common/loader.jsp"></jsp:include>
    
  </body>
</html>