<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.kh.duri.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <title>둘이두리 - 금액후원 상세페이지</title>
    <meta charset="utf-8">
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
    				<p>남은기간  : <b>${moneyDetail.fStartDate } ~ ${moneyDetail.fEndDate }</b></p>
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
              	<span>총 나눔두리 후원액</span>


                <br><br>
              	<div class="progress custom-progress-success" style="background-color:white">
  	      			<div id="bar2" class="progress-bar" role="progressbar" style="width:43%" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100"></div>
        		</div>
               	<strong class="number" data-number="${moneyDetail.fValue }" style="font-size:20px">0</strong>
                <span>190명의 나눔두리가 후원하였습니다.</span>
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
              	<h3 class="mb-4">후원하기</h3>
              	<p style="font-weight:bold;">행복두리에게 올 한해 따뜻하게 </br>지낼 수 있는 행복을 선물하세요.</p>
              	<% if(((Member)request.getSession().getAttribute("loginUser2")) != null){%>
              	<p><a href="fundMoney.pm?fno=${moneyDetail.fno}" class="btn btn-white px-3 py-2 mt-2" style="font-weight:bold;">후원하러가기</a></p>
              	<%}else{ %>
              	<p><a href = "nanumLogin.me" class="btn btn-white px-3 py-2 mt-2" style="font-weight:bold;">로그인 후 후원이 가능합니다.</a></p>
              	<%} %>
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
        <div class="row">
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex mb-4">
        				<div class="img" style="background-image: url(/duri/resources/common/images/person_1.jpg);"></div>
        				<div class="info ml-4">
        					<h3><a href="teacher-single,jsp">cjdrud123</a></h3>
        					<span class="position">Donated Just now</span>
        					<div class="text">
		        				<p>교육비 <span>200만원</span> 기부</p>
		        				<p> <a href="#">Children Needs Food</a></p>
		        			</div>
        				</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex mb-4">
        				<div class="img" style="background-image: url(/duri/resources/common/images/person_2.jpg);"></div>
        				<div class="info ml-4">
        					<h3><a href="teacher-single,jsp">Ivan Jacobson</a></h3>
        					<span class="position">Donated Just now</span>
        					<div class="text">
		        				<p>교육비 <span>200만원</span> 기부</p>
		        				<p> <a href="#">Children Needs Food</a></p>
		        			</div>
        				</div>
        			</div>
        		</div>
        	</div>
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex mb-4">
        				<div class="img" style="background-image: url(/duri/resources/common/images/person_3.jpg);"></div>
        				<div class="info ml-4">
        					<h3><a href="teacher-single,jsp">Ivan Jacobson</a></h3>
        					<span class="position">Donated Just now</span>
        					<div class="text">
		        				<p>Donated <span>$250</span> for <a href="#">Children Needs Food</a></p>
		        			</div>
        				</div>
        			</div>
        		</div>
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