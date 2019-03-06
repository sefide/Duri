<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.kh.duri.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <title>둘이두리 - 금액후원 상세페이지</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
    	<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
 <link rel="stylesheet" href="/SRC2/infinityscroll/styles.css">
      <!-- 공통 css 부분 -->
      <jsp:include page="../common/css.jsp"/>
      
  </head>
  
  <style>
  	#goHo{
  		width:250px;
  		height:37px;
  	}
  	
  	#bar{
  		width:300px;
  		background-color:white;
  	}
  	#bar2{
  		background-color:yellowgreen;
  	}
  	.number{
  		font-size:10px;
  	}
 
 #wishlist:hover{
 	background:white !important; 
 	color:orange !important;
 	border:2px solid orange;
 	cursor:pointer;
 }
 
 
.als-container {
	position: relative;
	width: 100%;
	margin: 0px auto;
	z-index: 0;
}

.als-viewport {
	position: relative;
	overflow: hidden;
	margin: 0px auto;
}

.als-wrapper {
	position: relative;
	list-style: none;
}

.als-item {
	position: relative;
	display: block;
	text-align: center;
	cursor: pointer;
	float: left;
}

.als-prev, .als-next {
	position: absolute;
	cursor: pointer;
	clear: both;
}
/*************************************
 * specific styling for #demo2
 ************************************/

#demo2 {
	margin: 40px auto;
}

#demo2 .als-item {
	margin: 0px 5px;
	padding: 4px 0px;
	min-height: 120px;
	min-width: 100px;
	text-align: center;
}

#demo2 .als-item img {
	display: block;
	margin: 0 auto;
	vertical-align: middle;
}

#demo2 .als-prev, #demo2 .als-next {
	top: 40px;
}

#demo2 .als-prev {
	left: 200px;
}

#demo2 .als-next {
	right: 200px;
}
  </style>
  <body>
    
 		<!-- 네비바 -->
 		<jsp:include page="../common/navi.jsp"/>
 		
 		
 		

    
    <section class="ftco-section">
    	<div class="container">
    		<div class="row d-flex">
    			<c:if test="${moneyDetail.fValueType eq '생활비' }">
	    			<div class="col-md-6 d-flex ftco-animate">
	    				<div class="img img-about align-self-stretch" style="background-image: url(/duri/resources/fundFiles/funding_ex_img04.jpg); width: 100%;"></div>
	    			</div>
    			</c:if>
    			<c:if test="${moneyDetail.fValueType eq '교육비' }">
    				<div class="col-md-6 d-flex ftco-animate">
	    				<div class="img img-about align-self-stretch" style="background-image:url(/duri/resources/fundFiles/funding_ex_img_school.jpg); width: 100%;"></div>
	    			</div>
    			</c:if>
    			<c:if test="${moneyDetail.fValueType eq '의료비' }">
    				<div class="col-md-6 d-flex ftco-animate">
	    				<div class="img img-about align-self-stretch" style="background-image:url(/duri/resources/fundFiles/funding_ex_img_doctor.jpg); width: 100%;"></div>
	    			</div>
    			</c:if>
    			<div class="col-md-6 pl-md-5 ftco-animate">
    				<h2 class="mb-4">'${moneyDetail.mNick }' 행복두리님의 사연</h2>
    				<h3 class="mb-4">${moneyDetail.fTitle }</h3>
    				<p>${moneyDetail.fContent}</p>
    				<p>지역  : ${moneyDetail.mAddress }</p>
    				<form action="wishList.me" method="POST">
		        		<input type="hidden" id="fno" value="${moneyDetail.fno}" name="fno"/>
		        		<input type="hidden" id="mno2" value="${sessionScope.loginUser2.mno}" name="mno2"/>
		        		<input type="hidden" id="mNick" value="${moneyDetail.mNick}" name="mNick"/>
        	  	
    				<p>남은기간  : <b>${moneyDetail.fStartDate } ~ ${moneyDetail.fEndDate }</b></p>
    				<button type="submit" id="wishlist" style="font-weight:bold; border:2px solid orange; background:orange;color:white; border-radius:5px; padding:10px;">찜하기
    				<img src="/duri/resources/common/images/pop_wishist.png" style="width:30px;height:30px"/>
    				</button>
    				
    				</form>	
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-counter ftco-intro ftco-intro-2" id="section-counter">
    	<div class="container">
    		<div class="row no-gutters">
    			<div class="col-md-5 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-1 align-items-stretch">
              <div class="text">
             
            
              	<span>현재 모금 금액 : <b><fmt:formatNumber value = "${b1}" type="currency" currencySymbol=" "/>원</b></span>
				<span>총 목표금액 : <b><fmt:formatNumber value = "${moneyDetail.fValue}" type="currency" currencySymbol=" "/>원</b></span>

              <br>
              	<!-- <div class="progress custom-progress-success" style="background-color:white"> -->
  	      			<!-- <div id="bar2" class="progress-bar" role="progressbar" style="width:43%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div> -->
  	      			 <c:set var="sum" value="${(b1*100)/moneyDetail.fValue}"/>
  	      			<div class="progress" style="height:30px">
 		 				<div class="progress-bar" role="progressbar" style="width: ${sum}%; font-size:15px; background-color:yellowgreen" aria-valuenow="${sum}" aria-valuemin="0" aria-valuemax="100"><fmt:formatNumber value = "${sum}" type="currency" currencySymbol=" "/>%</div>
					</div>
        		<!-- </div> -->
               	<%-- <strong class="number" style="font-size:20px"><fmt:formatNumber value = "${b1}" type="currency" currencySymbol=" "/>원</strong> --%>
                <span>${b2} 명의 나눔두리가 후원하였습니다.</span>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-2 align-items-stretch">
                    <div class="text">
              	<h3 class="mb-4">후원유형</h3>
              	<p style="font-weight:bold;">다양한 형태의 후원유형<br>행복두리가 선택한 후원유형</p>
              	<p class="bg-white px-3 py-2 mt-4" style="font-weight:bold;" align="center">${moneyDetail.fValueType}</p>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-3 align-items-stretch">
              <div class="text">
             <c:choose>
             	<c:when test="${not empty sessionScope.loginUser2}">
             		<h3 class="mb-4">후원하기</h3>
             		<p style="font-weight:bold;">행복두리에게 올 한해 따뜻하게 </br>지낼 수 있는 행복을 선물하세요.</p>
             		<p><a href="fundMoney.pm?fno=${moneyDetail.fno}" class="btn btn-white px-3 py-2 mt-2" style="font-weight:bold;">후원하러가기</a></p>
             	</c:when>
             	<c:when test="${empty sessionScope.loginUser && empty sessionScope.loginUser2}">
             		<h3 class="mb-4">후원하기</h3>
             		<p style="font-weight:bold;">행복두리에게 올 한해 따뜻하게 </br>지낼 수 있는 행복을 선물하세요.</p>
             		<p><a href = "nanumLogin.me" class="btn btn-white px-3 py-2 mt-2" style="font-weight:bold;">로그인 후 후원이 가능합니다.</a></p>
             	</c:when>
             </c:choose> 
             <!-- 행복두리가 상세페이지로 들어왔을 경우 -->
            <c:if test="${not empty sessionScope.loginUser}">
             	<c:choose>
             		<c:when test="${moneyDetail.fStatus eq 'END' or moneyDetail.fStatus eq 'GOAL'}">
             			<h3 class="mb-4">${moneyDetail.mNick}님!</h3>
		              	<p>후원이 종료되면  </br>후원해주신 나눔두리들께 </br>감사편지를 보내주세요!</p>
		              	<p><a href="crowdfundingLetter.happy?ftitle=${moneyDetail.fTitle}&fno=${moneyDetail.fno}&fWriter=${moneyDetail.fWriter}" 
		              	class="btn btn-white px-3 py-2 mt-2">감사편지쓰러가기</a></p>
             		</c:when>
             		<c:otherwise>
             			<h3 class="mb-4">${moneyDetail.mNick}님!</h3>
		              	<p>후원이 종료되면  </br>후원해주신 나눔두리들께 </br>감사편지를 보내주세요!</p>
             		</c:otherwise>
             	</c:choose>
             </c:if>
              </div>
            </div>
          </div>
    		</div>
    	</div>
    </section>




     <section class="ftco-section bg-light">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">'${moneyDetail.mNick}' 행복두리의 후원내역</h2>
            <p>지금까지 행복두리가 많은 나눔두리들에게 나눔받은 후원내역입니다. </p>
          </div>
        </div>
        <c:choose>
        <c:when test="${not empty b3}">
        
        <div class="row">
        <c:forEach var="b3" items="${b3}">
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex mb-4">
        				<div class="img" style="background-image: url(/duri/resources/common/images/girl.png);"></div>
        				<div class="info ml-4" style="width:180px; height:60px; margin:10px">
        					<h3><a href="teacher-single,jsp">${b3.mNick}</a></h3>
        					<span class="position"></span>
        					<div class="text">
		        				<p style="width:200px">${b3.dh_valueType} <span>${b3.dhValue}원</span> 기부중</p>
		        			
		        			</div>
        				</div>
        			</div>
        		</div>
        	</div>
         </c:forEach>
        </div>
      
        </c:when>
        <c:otherwise>
        <div class="col-md-7 heading-section ftco-animate text-center">
            <p style="width:1000px; font-size:30px; font-weight:bold">아직 받고있는 정기후원이 없습니다.</p>
          </div>
        </c:otherwise>
        </c:choose>
      </div>
    </section> 

   <!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   <jsp:include page="../common/loader.jsp"></jsp:include>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 <script type="text/javascript" src="/SRC2/infinityscroll/slider.jquery.js"></script>

  </body>

</html>