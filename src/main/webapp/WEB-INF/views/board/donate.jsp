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
      	<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
  </head>
  <style>
  	.hero{
  		opacity:0.5;
  	}
  	
  	#join{
	border:1px solid yellowgreen !important;
	background: #FFFFFF !important;
  	color: yellowgreen !important;
	border-radius:5px !important;
	width:120px !important;
	padding:5px 5px !important;
	cursor:pointer !important;
}

#join:hover{
	border:1px solid white !important;
	background: yellowgreen !important;
  	color: #FFFFFF !important;
  	border-radius:5px !important;
}

form{
	width : 25%;
}
@media (min-width: 1200px){
.container {
    max-width: 1230px !important;
}
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
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 56 }">정기후원자 목록</h1>
          </div>
        </div>
      </div>
    </div>
    </div>


    <section class="bg-light" style="">
      <div class="container">
        <div class="row" style="width:100%;">
        <c:forEach var="do" items="${doList}">
        <form name="sub1" action="long_donate_detail.bo" method="POST" id = "directFundDetailFrom">
        <input type="hidden" id="mno" name="mno" value="${do.mno}">
        	<div class="ui cards" style="margin:10px">
        	
      
		  <div class="card">
			    <div class="content">
			      <img class="right floated mini ui image" src="/duri/resources/common/images/girl.png">
			      <div class="header">
			        ${do.mNickName}
			      </div>
			      <div class="meta">
			        ${do.mFundtype}
			      </div>
			      <div class="description">
			        ${do.mAddress}
			      </div>
			    </div>
			    <div class="extra content">
			      <div class="ui two buttons">
        				<div class="ui basic button" id="join" style="height:40px; font-size:15px; font-weight:bold; text-align:center; " onclick = "goDonate();">후원하러가기</div>  
			      </div>
			    </div>
			  </div>
			</div>
			</form>
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

  <br><br>

  <!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   <jsp:include page="../common/loader.jsp"></jsp:include>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
    <script>
    	function goDonate(){
    		$("#directFundDetailFrom").submit();
    		//document.sub1.submit();	
    	}
    </script>

  </body>
</html>