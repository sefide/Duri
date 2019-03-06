<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		padding:10px 3px;
	
		border-radius:6px;
	}
	
	#goMoDetail{
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





    <section class="ftco-section">
      <div class="container" >
      <div class="row" style=" width:100% !important; height:70px !important">

        <h3 style="width:100%; text-align:center"><a href="money_donate.bo" id="money" style="font-size:25px;margin:10px;padding:10px; ">금액후원</a><b>|</b><a href="thing_donate.bo" id="thing" style="font-size:25px;margin:10px;padding:10px; ">물품후원</a></h3>

      </div>		
      	<div class="row">
      	   <c:forEach var="mo" items="${moList}">
<%--       	    <c:set var="sum" value="${(moList2*100)/mo.fValue}"/> --%>
      		<div class="col-md-4 ftco-animate" >
      			<div class="cause-entry">
      			<!-- style="background-image: url(/duri/resources/common/images/cause-1.jpg);" -->
      			<c:if test="${mo.fValueType eq '생활비' }">
    					<a href="#" class="img" style="background-image: url(/duri/resources/fundFiles/bg_01.jpg);"></a>
    			</c:if>
    			<c:if test="${mo.fValueType eq '교육비' }">
    					<a href="#" class="img" style="background-image: url(/duri/resources/fundFiles/school2.jpg);"></a>
    			</c:if>
    			<c:if test="${mo.fValueType eq '의료비' }">
    					<a href="#" class="img" style="background-image: url(/duri/resources/fundFiles/doctor.jpg);"></a>
    			</c:if>
    			<form action="cloud_money_datail.bo" name="sub1" id="moneyForm" method="POST">
    				<div class="text p-3 p-md-4">
    					<input type="hidden" name="fno" id="fno" value="${mo.fno}"/>
    					<h3><input type="submit" id="goMoDetail" value="${mo.fTitle }"/></h3>
    					<p>' ${mo.mNick} ' 행복두리의 사연</p>
    					<span class="donation-time mb-3 d-block" style="color:black">${mo.mFundType}</span>
	                	<div class="progress custom-progress-success">
	                	<c:forEach var="mo3" items="${moList2}">
	                	<c:choose>
	                	<c:when test="${mo.fno eq mo3.fno}">
	                	<c:set var="sum1" value="${(mo3.sumFhValue/mo.fValue)*100}"/>
	                	</c:when>
	                	<c:otherwise>
	                	<c:set var="sum1" value="0"/>
	                	</c:otherwise>
	                	</c:choose>
	                	<div class="progress-bar bg-primary" role="progressbar" style="width: ${sum1}%" aria-valuenow="${sum1}" aria-valuemin="0" aria-valuemax="100"></div>
	                	</c:forEach>
	                    
	                	</div>
	                	<c:set var="sum2" value="0"/>
	                	<c:forEach var="mo2" items="${moList2}" varStatus = "status">
	                		 
	                		          
	                		<c:if test="${mo.fno eq mo2.fno}">
			                	<c:set var="sum2" value="${(mo2.sumFhValue/mo.fValue)*100}"/>
		                	</c:if>
		                	
		                	<c:if test = "${status.last}">
			                	<a><fmt:formatNumber value="${sum2}" pattern=" " />%</a><a style="float:right"><fmt:formatNumber value = "${mo.fValue}" type="currency" currencySymbol=" "/>원</a>
		                	</c:if>
		                		
	                	</c:forEach>
	                	
	               		
	    			</div>
	    		</form>
    			</div>
      		</div>
      		</c:forEach>
      	
        </div>
        
        <br><br>
        <div class="col text-center">
					<div class="block-27">
							<ul>
							<c:if test="${ pi.currentPage <= 1 }">
							<li><a href="#">&lt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="blistBack" value="money_donate.bo">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p == pi.currentPage }">
									<li class="active"><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi.currentPage }">
									<c:url var="blistCheck" value="money_donate.bo">
										<c:param name="currentPage" value="${p}"/>									
									</c:url>
									 <li><a href="${ blistCheck }">${ p }</a></li> 									
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="money_donate.bo">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
    <script>
    function goMoneyDetail(){
    	$("#moneyForm").submit();	
    	
    }
    
    $(document).ready(function(){
    	var check = "${check}";
    	console.log(check);
    });
    </script>
  </body>
</html>