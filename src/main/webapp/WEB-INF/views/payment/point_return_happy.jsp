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
	.ftco-section {
    	padding: 1em 0;
    }
    .contBox {
		padding-bottom: 0px; 
		min-height: 0px; 
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
	}
    #returnValue{
		height :40px !important;
		border-radius : 5px;
		width :  160px;
		display : inline-block;
		margin-right : 2%;
	}
	.inputTxt{
		height :40px !important;
		border-radius : 5px;
		width :  180px;
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
		font-size : 20px;
	}
	tr{
		height : 85px;
	}
	td{
		font-size : 20px;
		font-weight : 400;
	}
	#txtAllPoint{
		font-size : 16px;
		color : 434343;
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
		background : rgba(210,210,210,0.3);
		padding : 2%;
		color : #434343;
	}
	
	.flexBox{
		display:flex;
		flex-wrap : wrap;
		width : 97%;
		margin: 323px 1% 1% 1%;
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
	}
	
	

</style>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
	
	<jsp:include page="../Nanummember/include/header.jsp" />	
	
 	<div id="wrap">		
		<div class="contBox inner">
			<jsp:include page="include/tabMypage_point.jsp"/>	
		</div>
	</div>
    
    <section class="ftco-section">
    	<div class="container">
    		<div class="row d-flex">
    			<h3 class = "ftco-animate" id = "pTitle">후원포인트 환급받기</h3>
    		</div>
    		<div id = "bar1"></div>
    		<div class ="row d-flex"> 
    			<div class = "d-flex-left">
 	  			<h4 class ="ftco-animate" id = "subTitle">> 환급포인트</h4>
    				<table>
    					<tr>
    						<th>현재 보유포인트</th>
    						<td>200350원</td>
    					</tr>
    					<tr>
    						<th>환급 금액</th>
    						<td><input class="form-control" type = "text" name = "returnValue" id = "returnValue">원
    							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="allPoint">
							  <label class="form-check-label" for="allPoint" id = "txtAllPoint">
							 	  모든 포인트 사용하기
							  </label>
							</div>
    						</td>
    					</tr>
    				</table>
    				
    				<div id = "bar2"></div>
    				<h4 class ="ftco-animate" id = "subTitle">> 환급받을 계좌</h4>
    				
    				<table>
    					<tr>
    						<th>은행</th>
    						<td>
    							<select name = "returnBank" class="form-control inputTxt" id="returnBankSelect">
    								<option>은행을 선택해주세요 .</option>
    								<option>은행을 선택해주세요 .</option>
    								<option>은행을 선택해주세요 .</option>
    								<option>은행을 선택해주세요 .</option>
    								<option>은행을 선택해주세요 .</option>
    							</select>
    						</td>
    					</tr>
    					<tr>
    						<th>계좌번호</th>
    						<td><input class="form-control inputTxt" type = "text" name = "returnAccount" id = "returnAccount">원</td>
    					</tr>
    					<tr>
    						<th>예금주명</th>
    						<td><input class="form-control inputTxt" type = "text" name = "accountName" id = "accountName" placeholder = "이름을 입력해주세요."></td>
    					</tr>
    				</table>
    				<p style = "margin-left : 1%;"> *환급받을 계좌 정보를 정확히 입력해주세요. <br> 
계좌번호와 예금주명이 다를 경우 환급이 제대로 되지 않을 수 있습니다.  </p>
    			</div>
    			
    			<div class = "d-flex-right">
    				<div class = "back-right">
    					<input type ="checkbox" id= "chkinfo1"><label for = "chkinfo1">수수료 약관동의</label> <br>
	    				<a>포인트 결제 시 부과했던 후원 수수료는 환급되지 않습니다. </a><br>
					
	    				<div class= "flexBox valueBox">
	    					<div class = "d-left">현재 보유포인트 </div><div class = "d-right" id = "txtChargeValue">0원</div>
	    					<div id = "txtTotalValue">환급 금액</div><div class = "txtColor_o d-right" id = "totalValue">103,000</div>원
	    					<div id = "bar3"></div>
	    					<div class = "d-left">잔여포인트 </div><div class = "d-right" id = "txtFees">3000원</div>
	    					
	    				</div>
    				</div>
    				<div id = "back-btn">
    					<a id = "btnPay">환급받기 </a>
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
	$(document).ready(function() {
		$("#returnValue").change(function(){
			var value = Number($("#returnValue").val());
			$("#totalValue").text(value);
		});
		
		
	});
	
	$("#back-btn").click(function(){
		alert("환급 진행 ");
	});
	
	
	</script>
</body>
</html>