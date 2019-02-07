<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<script src="semantic/dist/semantic.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">

<meta charset="UTF-8">
<jsp:include page="../Nanummember/include/common.jsp" />
<title>둘이두리</title>
<jsp:include page="../common/css.jsp"/>
<style>
	.ftco-section {
    	padding: 4em 0;
    }
	.mb50 {
	     margin-bottom: 0px !important; 
	}
	#myTitle{
		margin-bottom: 20px;
		font-size:25px;
		color: rgba(250, 143, 61);
		font-weight: bold;	
	}	
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
  		padding-top: 5px;
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
   		height : 35px;
   		background : white;
   		border-radius : 5px;
   		margin :8px;
   		text-align : center;
   	}
   	
   	.month-view{
		width : 100%;
		margin-top: 3%;
   		margin-left: 3.5%;
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
	.month-date{
		font-weight : 400;
		font-size : 25px;
		color : #434343;
	}
	.cont-view{
		width : 100%;
	}
  	.month {
  		width : 100%;
  		margin : 0 auto;
  	}
	
	
	/* 후원 내역 내부  */
	.histContents{
		width : 95%;
		display :flex;
		flex-wrap : wrap;
		margin : 40px auto;
		border-bottom : 1px solid rgb(250,250,250);
	}
	.histLeft{
		width : 10%;
		margin : 1%;
	}
	.circle {
		width : 99%;
		height : 100%;
		background : rgba(220,220,220,0.5);
		border-radius : 50%;
		text-align: center;
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
		width : 17%;
		margin : 1%;
		padding-top : 30px;
		text-align : right;
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
  	.contents_search{
  		margin:0 auto;
  	}

    .calen {
    	color: rgba(250, 143, 61);
    }
</style>
</head>
<body>
	 <!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
 
	<jsp:include page="../Nanummember/include/header.jsp" />
    <!-- <div id ="nav_back" data-stellar-background-ratio="0.5">
    </div>  -->
    <div id="wrap">		
		<div class="contBox inner">
			<jsp:include page="include/tabMypage_point.jsp"/>
			
			
			<section class="ftco-section">
    			<div class="container">
		    		<div class="row d-flex">
		    			<div id="myTitle"> <i class="history icon"></i>포인트 히스토리</div>
		    		</div>
		    		<br>
		    		<div>
		    			<div class = "top-bar">
			    			<div class = "back-top-bar">
			    				<div class ="top-bar-text">
			    					<div >조회기간 </div>
			    					<div class = "date-div">2019.12 
										<a href="#" id = "startMonth" class = "calen">
											<i class="calendar alternate outline big icon"></i>
				        				</a>
			        				</div>
			        				~
			        				<div class = "date-div">2019.01 
			    						<a href="#" id = "endMonth" class = "calen">
			    							<i class="calendar alternate outline big icon"></i>
			        					</a>
			        				</div>
			        				
			        				<div class = "search-div"><a>검색</a></div>
			    				</div>
			    			</div>
		    			</div>
		    		</div>
		    		
		    		<c:if test = "${ !empty phList }">
						
		    		<div class ="contents_search"> 
		    			<div id = "month01" class = "month">
		    			<div class = "month-view">
	    					<div class = "month-bar-left"></div>
	    					<div class = "month-date">All</div>
	    					<div class = "month-bar-right"></div>
	    				</div>
	    				
		    			<c:forEach var="ph" items="${phList}">
		    				
		    				
		    				
		    				<div class = "cont-view">
		    					<div class = "histContents">
		    						<div class = "histLeft">
		    							<div class = "circle">${ ph.pReason }</div>
		    						</div>
		    						<div class = "histCenter">
		    							<div class = "fMonth">${ ph.pDate }</div>	
		    							
		    							<c:if test = "${ ph.pReason == '정기후원'}">
		    								<div class = "fTitle"> 정기후원 ${ ph.p_d_c }차</div>
		    								<div class = "fName">${ ph.p_d_m } 행복두리</div>
		    							</c:if>
		    							<c:if test = "${ ph.pReason == '펀딩'}">
		    								<div class = "fTitle"> ${ ph.p_f_title }</div>
		    								<div class = "fName">${ ph.p_f_m } 행복두리</div>
		    							</c:if>
			 							<c:if test = "${ ph.pReason == '결제'}">
		    								<div class = "fTitle"> 포인트 충전</div>
		    								<div class = "fName"> - </div>
		    							</c:if>
		    							<c:if test = "${ ph.pReason == '환급'}">
		    								<div class = "fTitle"> 포인트 환불</div>
		    								<div class = "fName"> - </div>
		    							</c:if>
			 							
		    						</div>
		    						<div class = "histRight">
		    							<c:if test = "${ ph.pType == 'U'}">
		    								<div class = "fValue">-${ ph.pValue }</div>
		    							</c:if>
		    							<c:if test = "${ ph.pType == 'A'}">
		    								<div class = "fValue">+${ ph.pValue }</div>
		    							</c:if>
		    							<div class = "txtValue">원</div>
		    							
		    						</div>
		    					</div>
		    				</div>
		    				
    					</c:forEach>
		    			</div>
		    		</div>
		    		
		    		</c:if>
		    		
	    		<!-- 페이징 처리 -->
	    		 <div class="row mt-3">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
		        </div>
		        
    			<div id = "bar2"></div>
    		
    		</div>
    	</section>
		</div>
	</div>
 
    
    <!-- footer  -->
    <jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- loader -->
	<jsp:include page="../common/loader.jsp"></jsp:include>
	
	<script>
	
	
	
	</script>
</body>
</html>