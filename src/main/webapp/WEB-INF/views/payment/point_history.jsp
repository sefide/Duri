<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Date, java.text.SimpleDateFormat, java.text.ParseException" %>
<% 
	String isNew = "";
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
	Date beforeDate = null;
	Date newDate = null;
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
   	.month-pick{
		width : 130px;
   		height : 40px;
   		background : white;
   		border-radius : 5px;
   		border : 1px solid lightgray;
   		margin :8px;
   		font-size : 13px;
   		font-weight : bold;
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
    .active{
    	background: #fcc4a8;
	    color: #f86f2d;
	    border: 1px solid transparent;
    }
</style>
</head>
<body>
	 <!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
 
	<jsp:include page="../Nanummember/include/header.jsp" />

	<!-- 날짜 변수 선언 -->
 	<jsp:useBean id="now" class="java.util.Date" />
 	<fmt:formatDate value="${now}" pattern="yyyy-MM" var="now" />

	<br><br><br><br>	
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
		    					<input type = "month" class = "month-pick" id = "startMonth">
		        				~
	        					<input type = "month" class = "month-pick" id = "endMonth">
		        				
		        				<div class = "search-div"><a>검색</a></div>
		    				</div>
		    			</div>
	    			</div>
	    		</div>
	    		
	    		
	    		<div class ="contents_search"> 
	    		
	    		<c:if test = "${ !empty phList }">
				<% 
	    			beforeDate = format.parse((String)pageContext.getAttribute("now")); 
    			%>
				
	    			<c:forEach var="ph" items="${phList}">
	    				<fmt:formatDate var="newDate" type = "date" value="${ph.pDate}" pattern="yyyy-MM"/>
	    				<c:set var ="Applydate" value = "${newDate}"/>
	    				<c:if test = "${ ph.rnum == 1 }">
	    				<div id = "month01" class = "month">
			    			<div class = "month-view">
		    					<div class = "month-bar-left"></div>
		    					<div class = "month-date">${newDate}</div>
		    					<div class = "month-bar-right"></div>
		    				</div>
	    				</c:if>	 
	    				<% newDate = format.parse((String)pageContext.getAttribute("newDate")); 
	    				if(newDate.compareTo(beforeDate) < 0){%>
	    				<c:if test = "${ ph.rnum != 1 }">
		    			</div>
		    			<div id = "month01" class = "month">
			    			<div class = "month-view">
		    					<div class = "month-bar-left"></div>
		    					<div class = "month-date">${newDate}</div>
		    					<div class = "month-bar-right"></div>
		    				</div>
	    				</c:if>	
	    				
    					
	    				<%} %>
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
		    				<% 
						beforeDate = format.parse((String)pageContext.getAttribute("Applydate")); %>
	    			</c:forEach>
   				</c:if>
   				<!-- 포인트 이력이 없을 경우 -->
 				<%-- <c:if test = "${ empty drList }">
 					<h2>포인트 사용 내역이 없습니다.</h2>
 				</c:if> --%>
	    		</div>
	    		
	    	
				
	    		
    			<!-- 페이징 처리 -->
	    		 <div class="row mt-3">
		          <div class="col text-center">
					<div class="block-27">
						<ul>
							<c:if test="${ pi.currentPage <= 1 }">
							<li><a href="#">&lt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="blistBack" value="pointHistory.pm">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>

							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p == pi.currentPage }">
									<li><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p != pi.currentPage }">
									<c:url var="blistCheck" value="pointHistory.pm">
										<c:param name="currentPage" value="${p}"/>
									</c:url>
									<li><a href="${ blistCheck }">${ p }</a></li>
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="pointHistory.pm">
									<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>
							
						</ul>
						</div>
					</div>
				</div>
	        
   			<div id = "bar2"></div>
   		
   	</section>
   	
   	
   	<c:if test = " ${ empty sessionScope.loginUser }">
   		<h2>비회원 입장 불가 !!! </h2>
   	</c:if>
	</div>
	
    
    <!-- footer  -->
    <jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- loader -->
	<jsp:include page="../common/loader.jsp"></jsp:include>
	
	<script>
		Date.prototype.format = function(f) {
		    if (!this.valueOf()) return " ";
		 
		    var d = this;
		     
		    return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
		        switch ($1) {
		            case "yyyy": return d.getFullYear();
		            case "yy": return (d.getFullYear() % 1000).zf(2);
		            case "MM": return (d.getMonth() + 1).zf(2);
		            case "dd": return d.getDate().zf(2);
		            default: return $1;
		        }
		    });
		};
		String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
		String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
		Number.prototype.zf = function(len){return this.toString().zf(len);};
	
	
		$(document).ready(function(){
			/* 검색 날짜 기본값 지정 */
			let today = new Date().format('yyyy-MM');
			$("#startMonth").val(today);
			$("#endMonth").val(today);
	
		});
		
		$(".search-div").mouseover(function(){
			$(".search-div").css('background', '#FE9D35');
		}).mouseout(function(){
			$(".search-div").css('background', 'white');
		}).click(function(){
			var startMonth = $("#startMonth").val();
			var endMonth =  $("#endMonth").val();
			var term;
			if(startMonth > endMonth){
				term = startMonth;
				startMonth = endMonth;
				endMonth = term;
			}
			console.log("startMonth :" + startMonth + " , endMonth : " + endMonth);
			location.href = "searchPointHistory.pm?startMonth="+startMonth +"&endMonth=" + endMonth;
		});
	
	
	</script>
</body>
</html>