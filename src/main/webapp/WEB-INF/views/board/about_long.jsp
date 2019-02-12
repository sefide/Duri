<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.kh.duri.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <title>둘이두리 - 정기후원상세</title>
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

#intro{

	border-radius:5px;
}
b{
	color:red;
}

#longDetail{
	background:#FFFFA1;
	padding:10px 10px;
	border-radius:10px;
	height:180px;
}
#mpr{
	height:150px;
	border: 1px solid orange;
	border-radius:8px;
	padding:5px 5px; 
}
  </style>
  <body>
    
 		<!-- 네비바 -->
 		<jsp:include page="../common/navi.jsp"/>
 		
 		
 		
    

    
    <section class="ftco-section" style="padding:112px 0px 60px 0px">
    	<div class="container">
    		<div class="row d-flex">
    			<!-- <div class="col-md-6 d-flex ftco-animate">
    				<div class="img img-about align-self-stretch" style="background-image: url(/duri/resources/common/images/bg_33.jpg); width: 100%;"></div>
    			</div>  -->
    			<div style="float:left" class="col-md-12 pl-md-7 ftco-animate" id="intro">
    				<h2 class="mb-4">'${longDetail.mNickName}' 행복두리님의 자기소개</h2>
    				<p id="longDetail">${longDetail.mpr}</p>
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
               	<strong class="number" data-number="1432805">0</strong>
                <span>2명의 나눔두리가 정기후원중입니다.</span>
              </div>
            </div>
          </div>
          
          <form action="directFund.pm" method="POST">
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-2 align-items-stretch">
                    <div class="text">
              	<h3 class="mb-4">후원유형선택</h3>
              	<p>다양한 형태로 후원받을수 있습니다.<br>후원유형을 선택해주세요!</p>
              	<select class="btn btn-white px-3 py-2 mt-2"  id="goHo" name = "valueType">
              		<option>선택</option>
              		<option value ="교육비">교육비</option>
              		<option value ="의료비">의료비</option>
              		<option value ="생활비">생활비</option>
              	</select>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-3 align-items-stretch">
              <div class="text">
              	<h3 class="mb-4">후원하기</h3>
              	<p>행복두리에게 올 한해 따뜻하게 </br>지낼 수 있는 행복을 선물하세요.</p>
              	
              	<input type="hidden"  name="mno_take" value="${longDetail.mno}">
              	<input type="hidden"  name="mnickname_take" value="${longDetail.mNickName}">
              	<input type="hidden"  name="maddress_take" value="${longDetail.mAddress}">
              	<p>
              	<!-- <input type="submit" style="width:200px" value="후원하기" class="btn btn-white px-3 py-2 mt-2"> -->
              	<button onclick = "return direct();" style = "width:200px" class="btn btn-white px-3 py-2 mt-2">후원하기</button></p>
              	
              </div>
            </div>
          </div>
          </form>
          
    		</div>
    	</div>
    </section>

    <section class="ftco-section bg-light">
      <div class="container">
      	<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate text-center">
            <h2 class="mb-4">'${longDetail.mNickName}' 행복두리의 후원내역</h2>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 

    <script>
    	function direct(){
    		<% if(((Member)request.getSession().getAttribute("loginUser2")) != null){%>
    			document.sub1.submit();	
    		<% } else {%>
    			alert("회원만 후원이 가능합니다. 로그인해주세요 :)");
    			return false;
    		<% } %>
    	}
    </script>
  </body>

</html>