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


<meta charset="UTF-8">
<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<jsp:include page="../Nanummember/include/common.jsp" />
<title>둘이두리</title>
<jsp:include page="../common/css.jsp"/>
<style>
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
   		padding-left : 2%;
   		padding-right : 2%;
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
		margin: 3% 0 2% 2%;
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
	
	/* FAQ */
	#bar2{
   		width:100%; 
   		margin: 0% auto; 
   		border-bottom:1px solid #B8B8B8;
   		height : 10px;
   		margin-top : 15px;
   	}
   	#accordion .card .card-header {
    	padding: 7px;
    }
    #accordion .card {
    	border :none;
    }
    .btn-link{
    	color : black;
    	border : none;
    	font-weight : bold;
    }
    .btn-link:hover{
    	color : #FE9D35;
    	text-decoration: none;
    }

    .calen {
    	color: rgba(250, 143, 61);
    }
	
	tr:nth-child(even) {background:#f9f9f9;}
	tr:nth-child(even) {background: rgba(230,230,230,0.3);}
	tr, td, th {
		text-align : center;
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
 		<jsp:include page="include/tabMypage_receipt.jsp"/>	
		
	    <section class="ftco-section">
	    	<div class="container">
	    		<div class="row d-flex">
	    			<div id="myTitle"> <i class="file alternate outline icon"></i>기부금 영수증 </div>
	    			<!-- ftco-animate -->
	    			<p>둘이두리에서는 결제 기부하신 기부자님들께 연말정산 소득공제를 위한 기부금영수증 발급을 지원합니다. <br>
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
	    						<input type = "month" class = "month-pick" id = "startMonth">
		        				~
	        					<input type = "month" class = "month-pick" id = "endMonth">
		        				
		        				<div class = "search-div"><a>검색</a></div>
		    				</div>
		    			</div>
	    			</div>
	    		</div>
	    		
	    		
	    		<div class ="contents_search"> 
	    		
	    		<c:if test = "${ !empty drList }">
	    		<%-- <fmt:parseDate var="beforeDate" value="${now}" pattern="yyyy.MM"/> --%>
	    			<% 
	    			beforeDate = format.parse((String)pageContext.getAttribute("now")); 
	    			%>
					
	    			<c:forEach var="dr" items="${drList}" varStatus="status">
	    				<fmt:formatDate var="newDate" type = "date" value="${dr.drApplyDate}" pattern="yyyy-MM"/>
	    				<c:set var ="Applydate" value = "${newDate}"/>
	    				<% newDate = format.parse((String)pageContext.getAttribute("newDate")); 
	    				%>
	    				<c:if test = "${ status.index eq 0}">
		    				<div id = "month01">
							<div class = "month-view">
		    					<div class = "month-bar-left"></div>
		    					<div class = "month">${newDate}</div>
		    					<div class = "month-bar-right"></div>
		    				</div>
		    				<div class = "cont-view">
	    					<table>
	    						<tr class = "thth">
	    							<th>No</th>
	    							<th>기부자명</th>
	    							<th>기부금액</th>
	    							<th>기부일시</th>
	    							<th>발급 신청일</th>
	    						</tr>
	    				</c:if>	
	    				<%if(newDate.compareTo(beforeDate) < 0){%>
	    				<c:if test = "${ dr.rnum != 1}">
		    					</table>
			    				</div>
			    			</div>
	    				</c:if>	
	    				<c:if test = "${ status.index ne 0}">	
	    				<div id = "month01">
							<div class = "month-view">
		    					<div class = "month-bar-left"></div>
		    					<div class = "month">${newDate}</div>
		    					<div class = "month-bar-right"></div>
		    				</div>
		    				<div class = "cont-view">
	    					<table>
	    						<tr class = "thth">
	    							<th>No</th>
	    							<th>기부자명</th>
	    							<th>기부금액</th>
	    							<th>기부일시</th>
	    							<th>발급 신청일</th>
	    						</tr>
	    				</c:if>
	    				<% } %>
	    						<tr class = "">
	    							<td>${dr.rnum}</td>
	    							<td>${dr.dr_mNo}</td>
	    							<td>${dr.drValue}원</td>
	    							<td>${dr.drDonateDate}</td>
	    							<td>${dr.drApplyDate}</td>
	    						</tr>
		    		
	    				<% 
						beforeDate = format.parse((String)pageContext.getAttribute("Applydate")); %>
	    			</c:forEach>
	    					</table>
	    				</div>
	    			</div>
	    		</c:if>
				
				<!-- 발급 내역 없을 경우 -->
 				<c:if test = "${ empty drList }">
 				<div id = "month01">
    				<div class = "month-view">
    					<div class = "month-bar-left"></div>
    					<div class = "month"> ~ ${ now } </div>
    					<div class = "month-bar-right"></div>
    				</div>
    				<div class = "cont-view">
    					<table>
    						<tr class = "thth">
    							<th>기부자명</th>
    							<th>기부금액</th>
    							<th>기부일시</th>
    							<th>발급 신청일</th>
    						</tr>
    					
	    					<tr class = "">
 								<td colspan = "4" style = "text-align:center">발급 내역이 없습니다.</td>
							</tr>
	    				</table>
	    			</div>
	    		</div>
 				</c:if>	
 				
	    		</div>
	    		
	    		<!-- 페이징 처리 -->
	    		 <div class="row mt-4">
		          <div class="col text-center">
					<div class="block-27">
						<ul>
							<c:if test="${ pi.currentPage <= 1 }">
							<li><a href="#">&lt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage > 1 }">
								<c:url var="blistBack" value="pointReturnList.pm">
									<c:param name="currentPage" value="${ pi.currentPage - 1}"/>
								</c:url>
								<li><a href="${ blistBack }">&lt;</a></li>
							</c:if>
							
							<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
								<c:if test="${ p eq pi.currentPage }">
									<li><a class="active" href="${ blistCheck }">${ p }</a></li>
								</c:if>
								<c:if test="${ p ne pi.currentPage }">
									<c:url var="blistCheck" value="pointReturnList.pm">
										<c:param name="currentPage" value="${p}"/>
									</c:url>
									<li><a href="${ blistCheck }">${ p }</a></li>
								</c:if>
							</c:forEach>
							
							<c:if test="${ pi.currentPage >= pi.maxPage }">
								<li><a href="#">&gt;</a></li>
							</c:if>
							<c:if test="${ pi.currentPage < pi.maxPage }">
								<c:url var="blistEnd" value="pointReturnList.pm">
									<c:param name="currentPage" value="${ pi.currentPage + 1}"/>
								</c:url>
								<li><a href="${ blistEnd }">&gt;</a></li>
							</c:if>
							
						</ul>
						</div>
					</div>
				</div>
		        
	    		<div id = "bar1"></div>
	    				
	    	
	    	<br><br>
	    	
	    	<div class="container">
				<div class="row d-flex">
					<h3 class = "" id = "pTitle">FAQ </h3>
	 					
					<br>
					
					<div id = "bar2"></div>
					
					<div id="accordion">
					  <div class="card">
					    <div class="card-header" id="headingOne">
					      <h5 class="mb-0">
					        <button class=" btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          Q. 소득 공제가 가능한 기부금은 어떤건가요 ?
					        </button>
					      </h5>
					    </div>
					
					    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
					      <div class="card-body">
							둘이두리에서는 정기후원을 제외한 모든 후원에서 기부금 영수증 발급 서비스를 제공하고 있습니다.
							따라서 소득 공제가 가능한 기부금으로는 크라우드 펀딩을 통한 물품후원, 금액후원금이 있습니다. 소득 공제를 원하실 경우에는 후원 절차를 받을 때와 그 해의 연말정산 기간이 시작되기 전까지 발급 신청을 본 페이지에서 완료하면 공제 받을 수 있습니다.
					      </div>
					    </div>
					  </div>
					  <div class="card">
					    <div class="card-header" id="headingTwo">
					      <h5 class="mb-0">
					        <button class=" btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
					          Q. 기부금 영수증에 주민등록번호가 꼭 필요한가요?
					        </button>
					      </h5>
					    </div>
					    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
					      <div class="card-body">
					      	주민등록번호는 기부하신 분의 신원을 확인하는 고유한 값으로, 주민등록번호 13자리가 정확하게 입력되어 있어야 국세청 연말정산 간소화 서비스에 정상적으로 등록될 수 있습니다. 마이페이지 또는 후원자상담센터를 통해 기부자의 주민번호를 반드시 입력해주세요. 국세청 연말정산 간소화 서비스에서 제 내역이 확인되지 않습니다. 12월 31일까지 개인정보(후원자명, 기부금액, 주민등록번호 13자리까지)가 올바르게 입력되지 완료되지 않은 경우 연말정산 간소화 서비스에서는 내역을 확인하실 수 없습니다. 이런 경우 마이페이지에서 후원자님의 기부금 영수증을 직접 출력해주세요.
					      </div>
					    </div>
					  </div>
					  <div class="card">
					    <div class="card-header" id="headingThree">
					      <h5 class="mb-0">
					        <button class=" btn-link collapsed" data-toggle="collapse" data-target="#collapseThree#collapseThree" aria-expanded="false" aria-controls="collapseThree">
					          Q. 입력한 개인정보는 어떻게 처리하나요 ?
					        </button>
					      </h5>
					    </div>
					    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
					      <div class="card-body">
					      	둘이두리에서는 기부금 영수증 발급명세서 작성 및 연말정산용 기부금 영수증의 발급을 목적으로 소득세법 제160조의3, 소득세법 시행령 제118조의7, 제208조의3, 소득세법 시행규칙 제58조 등에 의거하여 주민등록번호를 처리합니다.수집한 주민등록번호는 기부금 영수증 발급을 위해서만 사용되며, 관련 법령에 따라 5년간 보관됩니다.
					      	주민등록번호는 기부하신 분의 신원을 확인하는 고유한 값으로, 주민등록번호 13자리가 정확하게 입력되어 있어야 국세청 연말정산 간소화 서비스에 정상적으로 등록될 수 있습니다. 마이페이지 또는 후원자상담센터를 통해 기부자의 주민번호를 반드시 입력해주세요. 국세청 연말정산 간소화 서비스에서 제 내역이 확인되지 않습니다. 12월 31일까지 개인정보(후원자명, 기부금액, 주민등록번호 13자리까지)가 올바르게 입력되지 완료되지 않은 경우 연말정산 간소화 서비스에서는 내역을 확인하실 수 없습니다. 이런 경우 마이페이지에서 후원자님의 기부금 영수증을 직접 출력해주세요.
					      </div>
					    </div>
					  </div>
					  
					  <div class="card">
					    <div class="card-header" id="headingFour">
					      <h5 class="mb-0">
					        <button class=" btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
					          Q. 후원자명과 기부금영수증 발급자 명이 달라도 발급이 가능한가요 ?
					        </button>
					      </h5>
					    </div>
					    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
					      <div class="card-body">
					         기부금 영수증은 후원자 본인 명의로 발급받으실 수 있습니다. 기본공제 대상자인 배우자, 직계존속, 직계비속 및 형제 자매(연간 소득금액 1백만원 이하)가 지출한 기부금도 공제가 가능하며, 연말정산시 정산을 하시는 본인의 소속기관에 가족연말정산 통합신청을 하셔야 합니다.
					      </div>
					    </div>
				  	  </div>
					</div>
					
				</div>
			
				
			</div>
	   	</section>
	   	
	</div>
    
    <br><br>
    
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
			location.href = "searchDonateReceipt.pm?startMonth="+startMonth +"&endMonth=" + endMonth;
		});
	</script>
	
	
</body>
</html>