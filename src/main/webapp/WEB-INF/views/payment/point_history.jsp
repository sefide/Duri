<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../common/css.jsp"/>
<style>
	#nav_back{
    		background: #FFBB50; 
    		height:83px; 
    		box-shadow:0 0 6px 0 #B8B8B8; 
    	}
	#pTitle{
		display: block;
		font-size : 30px;
		font-weight : 700;
		color : #434343;
	}
	.d-flex{
    		padding-left : 5%;
    		margin: 0% 0;
    	}
    
    	#bar1{
    		width:98%; 
    		margin: 0% auto; 
    		border-bottom:1px solid #B8B8B8;
    		height : 10px;
    		margin-top : 15px;
    	}
    	.top-bar{
    		display : block;
    		witdh : 99%;
    		margin : 0 auto;
    	}
    	.back-top-bar{
    		width : 95%;
    		background : rgba(220,220,220,0.3);
    		margin : 0 auto;
    	}
    	.top-bar-text{
    		text-align : right;
    		color : #424242;
    		font-size : 20px;
    		font-weight : 400;
    	}
   	.top-bar-text div {
   		display : inline-block;
   	}
   	.date-div{
   		width : 120px;
   		height : 40px;
   		background : white;
   		border-radius : 5px;
   		border : 1px solid lightgray;
   		margin :8px;
   		text-align : left;
   		font-size : 18px;
    		padding-left :3px;
   	}
   	.search-div{
   		width : 70px;
   		height : 40px;
   		background : white;
   		border-radius : 5px;
   		margin :8px;
   		text-align : center;
   	}
   	
   	.month-view{
		width : 100%;
		display :flex;
		flex-wrap : wrap;
	}
	.month-bar-left{
		width : 41%;
		height : 23px;
		margin-right : 20px;
		border-bottom : 1px solid #434343;
	}
	.month-bar-right{
		width : 41%;
		height : 23px;
		margin-left : 20px;
		border-bottom : 1px solid #434343;
	}
	.month{
		font-weight : 400;
		font-size : 25px;
		color : #434343;
	}
	.cont-view{
		width : 100%;
	}
	
	/* 후원 내역 내부  */
	.histContents{
		width : 95%;
		display :flex;
		flex-wrap : wrap;
		margin : 25px auto;
	}
	.histLeft{
		width : 10%;
		margin : 1%;
	}
	.circle {
		width : 99%;
		height : 95%;
		background : rgba(220,220,220,0.5);
		border-radius : 50%;
		padding-left : 32%;
		padding-top : 35%;
		color : #434343;
		font-weight : 400;
		font-size : 20px;
	}
	.histCenter{
		width : 64%;
		margin : 1%;
	}
	.histRight{
		width : 15%;
		margin : 1%;
		padding-top : 30px;
	}
    	.fMonth {
		font-size : 18px;
		font-weight : 400;	
  	}
  	.fTitle {
  		font-weight : 600;
		font-size : 28px;
		color : #434343;
  	}
	.fName {
		font-size : 18px;
		font-weight : 400;
	}
  	.fValue {
  		color : #FE9D35;
		font-weight : 600;
		font-size : 28px;
		display : inline-block;
  	}	
  	.txtValue{
  		display : inline-block;
  		font-size : 18px;
		font-weight : 500;
  	}

</style>
</head>
<body>
	 <!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
   
    <div id ="nav_back" data-stellar-background-ratio="0.5">
    </div> 
    
    <section class="ftco-section">
    	<div class="container">
    		<div class="row d-flex">
    			<h3 class = "ftco-animate" id = "pTitle">포인트 히스토리</h3>
    		</div>
    		<br>
    		<div>
    			<div class = "top-bar">
	    			<div class = "back-top-bar">
	    				<div class ="top-bar-text">
	    					<div >조회기간 </div>
	    					<div class = "date-div">2019.12 
							<a href="#" id = "startMonth">달력
	         		 		<span class="glyphicon glyphicon-calendar"></span>
	        					</a>
	        				</div>
	        				~
	        				<div class = "date-div">2019.01 
	    						<a href="#" id = "endMonth">달력
	         		 		<span class="glyphicon glyphicon-calendar"></span>
	        					</a>
	        				</div>
	        				
	        				<div class = "search-div"><a>검색</a></div>
	    				</div>
	    			</div>
    			</div>
    		</div>
    		
    		
    		<div class =""> 
    			<div id = "month01">
    				<div class = "month-view">
    					<div class = "month-bar-left"></div>
    					<div class = "month">2019.01</div>
    					<div class = "month-bar-right"></div>
    				</div>
    				<div class = "cont-view">
    					<div class = "histContents">
    						<div class = "histLeft">
    							<div class = "circle">펀딩</div>
    						</div>
    						<div class = "histCenter">
    							<div class = "fMonth">2019.01.11</div>
 							<div class = "fTitle">크라우드 펀딩 제목</div>
 							<div class = "fName">행복두리 닉네임</div>
    						</div>
    						<div class = "histRight">
    							<div class = "fValue">-30000</div>
    							<div class = "txtValue">원</div>
    						</div>
    					</div>
    					
    					<div class = "histContents">
    						<div class = "histLeft">
    							<div class = "circle">펀딩</div>
    						</div>
    						<div class = "histCenter">
    							<div class = "fMonth">2019.01.11</div>
 							<div class = "fTitle">크라우드 펀딩 제목</div>
 							<div class = "fName">행복두리 닉네임</div>
    						</div>
    						<div class = "histRight">
    							<div class = "fValue">-30000</div>
    							<div class = "txtValue">원</div>
    						</div>
    					</div>
    					
    					
    					<div class = "histContents">
    						<div class = "histLeft">
    							<div class = "circle">펀딩</div>
    						</div>
    						<div class = "histCenter">
    							<div class = "fMonth">2019.01.11</div>
 							<div class = "fTitle">크라우드 펀딩 제목</div>
 							<div class = "fName">행복두리 닉네임</div>
    						</div>
    						<div class = "histRight">
    							<div class = "fValue">-30000</div>
    							<div class = "txtValue">원</div>
    						</div>
    					</div>
    				</div>
    			</div>
    			
    			<div id = "month01">
    				<div class = "month-view">
    					<div class = "month-bar-left"></div>
    					<div class = "month">2019.01</div>
    					<div class = "month-bar-right"></div>
    				</div>
    				<div class = "cont-view">
    					<div class = "histContents">
    						<div class = "histLeft">
    							<div class = "circle">펀딩</div>
    						</div>
    						<div class = "histCenter">
    							<div class = "fMonth">2019.01.11</div>
 							<div class = "fTitle">크라우드 펀딩 제목</div>
 							<div class = "fName">행복두리 닉네임</div>
    						</div>
    						<div class = "histRight">
    							<div class = "fValue">-30000</div>
    							<div class = "txtValue">원</div>
    						</div>
    					</div>
    					
    					<div class = "histContents">
    						<div class = "histLeft">
    							<div class = "circle">펀딩</div>
    						</div>
    						<div class = "histCenter">
    							<div class = "fMonth">2019.01.11</div>
 							<div class = "fTitle">크라우드 펀딩 제목</div>
 							<div class = "fName">행복두리 닉네임</div>
    						</div>
    						<div class = "histRight">
    							<div class = "fValue">-30000</div>
    							<div class = "txtValue">원</div>
    						</div>
    					</div>
    					
    					
    					<div class = "histContents">
    						<div class = "histLeft">
    							<div class = "circle">펀딩</div>
    						</div>
    						<div class = "histCenter">
    							<div class = "fMonth">2019.01.11</div>
 							<div class = "fTitle">크라우드 펀딩 제목</div>
 							<div class = "fName">행복두리 닉네임</div>
    						</div>
    						<div class = "histRight">
    							<div class = "fValue">-30000</div>
    							<div class = "txtValue">원</div>
    						</div>
    					</div>
    				</div>
    			</div>
    			
    		</div>
    		
    		<div id = "bar2"></div>
    		
    	</div>
    	</section>
    
    <!-- footer  -->
    <jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- loader -->
	<jsp:include page="../common/loader.jsp"></jsp:include>
	
	<script>
	
	
	
	</script>
</body>
</html>