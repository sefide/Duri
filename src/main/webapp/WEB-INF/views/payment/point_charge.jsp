<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../Nanummember/include/common.jsp" />
<title>둘이두리</title>
<jsp:include page="../common/css.jsp"/>
<style>
	#myTitle{
		margin-bottom: 20px;
		font-size:25px;
		color: rgba(250, 143, 61);
		font-weight: bold;	
	}
	.ftco-section {
    	padding: 1em 0;
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
   	.d-flex-left{
		width : 64%;
		height : 100%;
	}
	.d-flex-right{
		width : 35%;
		height : 100%;
	}
   	#bar1{
   		width:98%; 
   		margin: 0% auto; 
   		border-bottom:1px solid #B8B8B8;
   		height : 10px;
   		margin-top : 15px;
   	}
   	#bar2{
   		width:98%; 
   		margin: 0% auto; 
   		border-top:1px solid #B8B8B8;
   		height : 10px;
   		margin-bottom : 15px;
   	}
	#bar3{
   		width:98%; 
   		border-top:1px solid #B8B8B8;
   		height : 10px;
   		margin: 5px auto;
   	}
   	
   	/* 좌측 flex */
   	#subTitle{
		margin: 20px 0;
    	font-size: 24px;
    	font-weight : 600;
    	color : #424242;
    	
	}
    #chargeValue{
		height :40px !important;
		border-radius : 5px;
		width :  160px;
		display : inline-block;
		margin-right : 2%;
	}
	table{
		width : 96%;
		margin: 2%;
	}
	th {
		color : black;
		font-weight : 400;
		font-size : 18px;
	}
	tr{
		height : 90px;
	}
	td{
		font-size : 18px;
		font-weight : 400;
	}
	
	/* 우측 flex */
	#seeTerms{
		font-size : 15px;
		cursor : pointer;
		text-decoration : underline;
	}
	#back-btn{
		background: #FE9D35;
		width : 100%;
		height : 75px;
		text-align : center;
		padding-top : 15px;
		cursor : pointer;
	}
	#btnPay{
		border-radius : 4px;
		color : #ffff;
		font-weight : 700;
		font-size : 28px;
		cursor : pointer;
	}
	.back-right{
		width : 100%;
		height : 80%;
		background : rgba(180,180,180,0.3);
		padding : 2%;
		color : #434343;
	}
	
	.flexBox{
		display:flex;
		flex-wrap : wrap;
		width : 97%;
		margin: 6% 1% 1% 1%;
	}
	.d-left{
		width : 49%;
		font-size : 18px;
		margin : 5px 0;
	}
	.d-right{
		width : 49%;
		text-align : right;
		font-size : 18px;
		margin : 5px 0;
	}
	.txtColor_o{
		color : #FE9D35;
		font-weight : 700;
		font-size : 32px;
	}
	#txtTotalValue{
		font-size : 20px;
		font-weight : 500;
		width : 46%;
	}
	
	label{
		font-weight : 400;
		margin-right : 10px;
		margin-top : 10px;
		position : relative;
		top : 0;
		overflow : visible;
	}
	/* 하단 */
	#middle{
		width : 99%;
		margin : 0 auto;
		text-align : center;
	}
	#lastMent{
		font-size : 30px;
		font-weight : 700;
	}
	.row tr:nth-child(even) {
	    background: none;
	}

</style>
</head>
<body>
	 <!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
	<jsp:include page="../Nanummember/include/header.jsp" />	
	
	<br><br><br><br>	
	<div class="contBox inner">
		<jsp:include page="include/tabMypage_point.jsp"/>	
		
		 <section class="ftco-section">
	    	<div class="container">
	    		<div class="row d-flex">
	    			<div id="myTitle"> <i class="bookmark icon"></i>후원포인트 충전하기 </div>
	    		</div>
	    		<div id = "bar1"></div>
	    		<div class ="row d-flex"> 
	    			<div class = "d-flex-left">
	 	  			<h4 class ="" id = "subTitle">> 충전포인트</h4>
	    				<table>
	    					<tr>
	    						<th>현재 보유포인트</th>
	    						<td>1200원</td>
	    					</tr>
	    					<tr>
	    						<th>충전 금액</th>
	    						<td><input class="form-control" type = "text" name = "chargeValue" id = "chargeValue">원</td>
	
	    					</tr>
	    					<tr>
	    						<th>회원등급
		    						<a href="#">
						          <span class="glyphicon glyphicon-question-sign"></span>
						        </a>
					        </th>
	    						<td>열매 나눔두리 (후원수수료 3%)</td>
	    					</tr>
	    				</table>
	    			</div>
	    			
	    			<div class = "d-flex-right">
	    				<div class = "back-right">
	    					<input type ="checkbox" id= "chkinfo1"><label for = "chkinfo1">수수료 약관동의</label> <br>
		    				<a>둘이두리에서는 포인트 결제 시 후원포인트 외에 
							후원 수수료와 카드 수수료를 부과합니다. 
							후원 수수료와 100% 후원에 사용되며 
							다른 이윤목적으로는 절대 사용하지 않음을 알립니다.
							또한 후원 포인트는 환급이 불가능합니다.</a><br>
						<input type ="checkbox" id= "chkinfo2"><label for = "chkinfo2">유료이용 약관동의 </label> 
		    				<a id = "seeTerms"> > 전문보기 </a> 
		    				
		    				<div class= "flexBox valueBox">
		    					<div class = "d-left">충전액 </div><div class = "d-right" id = "txtChargeValue">0원</div>
		    					<div class = "d-left">후원 수수료 </div><div class = "d-right" id = "txtFees">3000원</div>
		    					<div id = "bar3"></div>
		    					<div id = "txtTotalValue">총 결제금액</div><div class = "txtColor_o d-right" id = "totalValue">103,000</div>원
		    					
		    				</div>
	    				</div>
	    				<div id = "back-btn">
	    					<a id = "btnPay">결제하기 </a>
	    				</div>
	    			</div>
	    		</div>
	    		<div id = "bar2"></div>
	    		<div id = "middle">
		    		<div id = "lastMent">" 나눔두리의 소중한 마음으로 놀라운 변화가 일어납니다. "</div>
		    		<div>투명한 기부 후기로 그 변화를 소개하고 보답하겠습니다!</div>
	    		</div>
	    	</div>
	   	</section>
		
		
	</div>
    
   
    <br><br><br><br>
    <!-- footer  -->
    <jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- loader -->
	<jsp:include page="../common/loader.jsp"></jsp:include>
	
	<script>
	$(document).ready(function() {
		$("#chargeValue").change(function(){
			var value = Number($("#chargeValue").val());
			var fees = $("#txtFees").text();
			fees = Number(fees.substring(0, fees.length-1));
			$("#txtChargeValue").text(value+"원");
			$("#totalValue").text(value+fees);
		});
		
		
	});
	
	$("#back-btn").click(function(){
		alert("결제 진행 ");
	});
	
	
	</script>
</body>
</html>