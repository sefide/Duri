<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
    <title>둘이두리-정기후원상세</title>
    <meta charset="utf-8">
      <!-- 공통 css 부분 -->
      <jsp:include page="../common/css.jsp"/>
  </head>
  <style>
  	.hero{
  		opacity:0.5;
  	}
  	
  	#join{
	border:1px solid yellowgreen;
	background: #FFFFFF;
  	color: yellowgreen;
	border-radius:5px;
	width:120px;
	padding:5px 5px;
	cursor:pointer;
}

#join:hover{
	border:1px solid white;
	background: yellowgreen;
  	color: #FFFFFF;
  	border-radius:5px;
}
  </style>
  <body>
    
 		<!-- 네비바 -->
 		<jsp:include page="../common/navi.jsp"/>
 		
 		
    
    <div id="hero" class="hero-wrap" style="background-image: url('/duri/resources/common/images/bg_33.jpg');"  data-stellar-background-ratio="0.5">
    <div id="hero" class="hero-wrap" style="background-color: rgba(0,0,0,0.3)"  data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-7 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
             <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="../index.jsp">Home</a></span> <span>정기후원</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">정기후원자 목록</h1>
          </div>
        </div>
      </div>
    </div>
    </div>


    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row">
        <c:forEach var="do" items="${doList}">
        	<div class="col-lg-4 d-flex mb-sm-4 ftco-animate">
        		<div class="staff">
        			<div class="d-flex">
        				<!--<div class="img" style="background-image: url(/duri/resources/common/images/heart_1.png); width:70px; height:70px"></div>-->
        				<div class="info ml-4" style="width:250px; height:70px; margin:30px">
        				
        				<form name="sub1" action="long_donate_detail.bo" method="POST">
        					<input type="hidden" id="mno" name="mno" value="${do.mno}">
        					<h3><a href="#" name="mNickName">${do.mNickName}</a></h3>
        					<span class="position">${do.mFundtype}</span>
        					<div class="text" style="width:50px">
		        				<p style="width:300px">현재 <span>2명</span> 참여중&nbsp;&nbsp;&nbsp;&nbsp;
		        				<input type="submit" value="후원하러가기" id="join"></p>
		        			</div>
		        		</form>
        				</div>
        			</div>
        		</div>
        	</div>
        	</c:forEach>
        
        </div>
        <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul>
                <li><a href="#">&lt;</a></li>
                <li class="active"><span>1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- <section class="ftco-section-3 img" style="background-image: url(/duri/resources/common/images/bg_3.jpg);">
    	<div class="overlay"></div>
    	<div class="container">
    		<div class="row d-md-flex">
    		<div class="col-md-6 d-flex ftco-animate">
    			<div class="img img-2 align-self-stretch" style="background-image: url(/duri/resources/common/images/bg_4.jpg);"></div>
    		</div>
    		<div class="col-md-6 volunteer pl-md-5 ftco-animate">
    			<h3 class="mb-3">Be a volunteer</h3>
    			<form action="#" class="volunter-form">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Your Name">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Your Email">
            </div>
            <div class="form-group">
              <textarea name="" id="" cols="30" rows="3" class="form-control" placeholder="Message"></textarea>
            </div>
            <div class="form-group">
              <input type="submit" value="Send Message" class="btn btn-white py-3 px-5">
            </div>
          </form>
    		</div>    			
    		</div>
    	</div>
    </section> -->

  <!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   <jsp:include page="../common/loader.jsp"></jsp:include>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
    <script>
    	function goDonate(){
    		document.sub1.submit();	
    	}
    </script>
  </body>
</html>