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
	
	/* 테이블  */
	table {
		width : 96%;
		margin : 0 auto;
		color : #434343;
	}
	.thth{
		background : rgba(200,200,200,0.5);
		border-top : 4px solid #FE9D35;
	}
	tr{
		height : 60px;
	}
	.fir-tr{
		/* border-top : 1px solid gray; */
		background : rgba(230,230,230,0.3);
	}
	.sec-tr{
		/* border-top : 1px solid gray; */
	}
	#back-btn{
		background: #FE9D35;
		width : 320px;
		height : 50px;
		border-radius : 5px;
		text-align : center;
		padding-top : 8px;
		cursor : pointer;
	}
	#btnHomeTax{
		border-radius : 4px;
		font-weight : 400;
		color : #434343;
		font-size : 19px;
		cursor : pointer;
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
    			<h3 class = "ftco-animate" id = "pTitle">기부금 영수증 </h3>
    			<p>둘이두리에서는 결제 기부하신 기부자님들께 연말정산 소득공제를 위한 기부금영수증 발급을 지원합니다. 
			소득세법 제 160조의 3에 따라 기부금 영수증을 발행하고 있으며, 개인정보(고유식별정보) 수집 및 이용에
			동의를 해주셔야 기부금 영수증 발급이 가능합니다. </p>
			<div id = "back-btn">
				<a href = "https://www.hometax.go.kr/" id = "btnHomeTax">연말정산 간소화 서비스 바로가기</a>
    			</div>
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
    					<table>
    						<tr class = "thth">
    							<th>기부자명</th>
    							<th>기부내역</th>
    							<th>기부금액</th>
    							<th>기부일시</th>
    							<th>발급 신청일</th>
    						</tr>
    						<tr class = "fir-tr">
    							<td>기부자명</td>
    							<td>크라우드펀딩 이름</td>
    							<td>10000원</td>
    							<td>2019.01.11</td>
    							<td>2019.01.11</td>
    						</tr>
    						<tr class = "sec-tr">
    							<td>기부자명</td>
    							<td>크라우드펀딩 이름</td>
    							<td>10000원</td>
    							<td>2019.01.11</td>
    							<td>2019.01.11</td>
    						</tr>
    						<tr class = "fir-tr">
    							<td>기부자명</td>
    							<td>크라우드펀딩 이름</td>
    							<td>10000원</td>
    							<td>2019.01.11</td>
    							<td>2019.01.11</td>
    						</tr>
    						<tr class = "sec-tr">
    							<td>기부자명</td>
    							<td>크라우드펀딩 이름</td>
    							<td>10000원</td>
    							<td>2019.01.11</td>
    							<td>2019.01.11</td>
    						</tr>
    					</table>
    				</div>
    			</div>
    			
    		</div>
    		
    		<div id = "bar1"></div>
    		
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