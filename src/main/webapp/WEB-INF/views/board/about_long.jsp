<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <title>Welfare - Free Bootstrap 4 Template by Colorlib</title>
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
 		
 		
 		
    
    <div class="hero-wrap" style="background-image: url('/duri/resources/common/images/bg_7.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
             <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="/duri/index.jsp">Home</a></span> <span>정기후원하기</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">정기후원하기</h1>
          </div>
        </div>
      </div>
    </div>

    
    <section class="ftco-section">
    	<div class="container">
    		<div class="row d-flex">
    			<div class="col-md-6 d-flex ftco-animate">
    				<div class="img img-about align-self-stretch" style="background-image: url(/duri/resources/common/images/bg_3.jpg); width: 100%;"></div>
    			</div>
    			<div class="col-md-6 pl-md-5 ftco-animate">
    				<h2 class="mb-4">WEWE1596 행복두리님의 자기소개</h2>
    				<p>“엄마와 아빠는 항상 싸우기만 했어요…” 수현이의 기억 속 부모님은 항상 싸우는 사람들이었습니다. 극도의 공포감에 울음을 터뜨리면 어김없이 뺨에 날아오던 손바닥. 부모님이 싸우는 날이면 혹시나 아무것도 모르는 동생들도 매를 맞을까 봐 두근거리는 심장을 붙잡고 숨죽이며 지내야 했습니다. 계속되는 폭력은 수현이의 몸과 마음을 멍들게 했고, 사랑스러움이 가득하던 아이의 얼굴에서 웃음을 빼앗았습니다. 가장 안전해야 할 집이 가장 두려운 공간이 된 수현이는 매일 하교 시간만 되면 마음이 무거워집니다.</p>
    				<p>지역  : 경기도 시흥시 정왕동</p>
    				<p>유형  : 기초생활수급자</p>
    				<p>남은기간  : <b>2019-01-01 ~ 2019-04-27</b></p>
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
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-2 align-items-stretch">
                    <div class="text">
              	<h3 class="mb-4">후원유형선택</h3>
              	<p>다양한 형태로 후원받을수 있습니다.<br>후원유형을 선택해주세요!</p>
              	<select class="btn btn-white px-3 py-2 mt-2"  id="goHo">
              		<option>선택</option>
              		<option>교육비</option>
              		<option>의료비</option>
              		<option>생활비</option>
              	</select>
              </div>
            </div>
          </div>
          <div class="col-md d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 color-3 align-items-stretch">
              <div class="text">
              	<h3 class="mb-4">후원하기</h3>
              	<p>행복두리에게 올 한해 따뜻하게 </br>지낼 수 있는 행복을 선물하세요.</p>
              	<p><a href="#" class="btn btn-white px-3 py-2 mt-2">후원하러가기</a></p>
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
            <h2 class="mb-4">'wewe1596' 행복두리의 후원내역</h2>
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