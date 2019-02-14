<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="../happymember/include/common.jsp" /> 


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
		font-size : 29px;
		font-weight : 700;
		margin-left : -20px;
		
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
		width :  200px;
		display : inline-block;
		margin-right : 2%;
	}
	.inputAcc{
		height :40px !important;
		border-radius : 5px;
		width :  90px;
		display : inline-block;
		margin-right : 1%;
	}
	table{
		width : 96%;
		margin: 2%;
		color : #333;
	}
	th {
		color : black;
		font-weight : 600;
		font-size : 18px;
	}
	tr{
		height : 85px;
		background : white !important;
	}
	td{
		font-size : 18px;
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
		background: #2e3a4a;
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
		margin: 245px 1% 1% 1%;
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
		position : relative;
		top : 0;
		overflow : visible;
	}
	h1, h2, h3, h4  {
		color: #333;
	}

</style>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="../happymember/include/header.jsp" />	
	
	<jsp:include page="../happymember/include/myNav.jsp" />
	
	 <div id="subContainer">
		<div class="contBox inner"><!-- inner S -->
		 
			<jsp:include page="include/tabMypage.jsp" />
	    	
		    <section class="ftco-section">
		    	<div class="container">
		    		<div class="row d-flex">
		    			<h3 class = "" id = "pTitle">후원포인트 환급받기</h3>
		    		</div>
		    		<div id = "bar1"></div>
		    		<div class ="row d-flex"> 
		    			<div class = "d-flex-left"> <br>
		 	  			<!-- <h4 class ="" id = "subTitle">> 환급포인트</h4> -->
					    <div style="float: left; margin : 20px 0"><h1><i class="chevron right icon"></i>환급포인트</h1></div>
					    
		 	  			<form id = "returnHappyForm" action = "execPointReturnHappy.pm" method = "post" >
		 	  			<input type = "hidden" value = "h" name = "memberType">
		    				<table>
		    					<tr>
		    						<th>현재 보유포인트</th>
		    						<td id = "myPoint">${ sessionScope.loginUser.mPoint }원</td>
		    					</tr>
		    					<tr>
		    						<th>환급 금액</th>
		    						<td><input class="form-control" type = "text" name = "returnValue" id = "returnValue" numberOnly>원
		    							<div class="form-check">
									  <input class="form-check-input" type="checkbox" value="" id="allPoint">
									  <label class="form-check-label" for="allPoint" id = "txtAllPoint">
									 	  모든 포인트 환급받기
									  </label>
									</div>
		    						</td>
		    					</tr>
		    				</table>
		    				
		    				<div id = "bar2"></div>
		    				<!-- <h4 class ="" id = "subTitle">> 환급받을 계좌</h4> -->
		    				<div style="float: left; margin : 20px 0;"><h1><i class="chevron right icon"></i>환급받을 계좌</h1></div>
		    				<table>
		    					<tr>
		    						<th>은행</th>
		    						<td>
		    							<select name = "returnBank" class="form-control inputTxt" id="returnBankSelect">
		    								<option>은행을 선택해주세요 .</option>
		    								<option value = "농협">농협</option>
		    								<option value = "국민은행">국민은행</option>
		    								<option value = "신한은행">신한은행</option>
		    								<option value = "우리은행">우리은행</option>
		    								<option value = "기업은행">기업은행</option>
		    								<option value = "KEB하나은행">KEB하나은행</option>
		    								<option value = "대구은행">대구은행</option>
		    								<option value = "부산은행">부산은행</option>
		    								<option value = "우체국">우체국</option>
		    							</select>
		    						</td>
		    					</tr>
		    					<tr>
		    						<th>계좌번호</th>
		    						<td id = "td_account">
		    							<input class="form-control inputAcc" type = "text" name = "returnAccount" id = "returnAccount" maxlength = "3" numberOnly> - 
		    							<input class="form-control inputAcc" type = "text" name = "returnAccount" id = "returnAccount" maxlength = "3" numberOnly> - 
		    							<input class="form-control inputAcc" type = "text" name = "returnAccount" id = "returnAccount" maxlength = "6" numberOnly>
		    						</td>
		    					</tr>
		    					<tr>
		    						<th>예금주명</th>
		    						<td><input class="form-control inputTxt" type = "text" name = "accountName" id = "accountName" placeholder = "이름을 입력해주세요."></td>
		    					</tr>
		    				</table>
		 	  			</form>
		    				
		    			</div>
		    			
		    			<div class = "d-flex-right">
		    				<div class = "back-right">
								<p style = "margin-left : 1%; font-size: 14px; line-height : 2; text-align : left;"> *환급받을 계좌 정보를 정확히 입력해주세요. <br> 
								계좌번호와 예금주명이 다를 경우 환급이 제대로 되지 않을 수 있습니다.  </p>
			    				<div class= "flexBox valueBox">
			    					<div class = "d-left">현재 보유포인트 </div><div class = "d-right" id = "txtChargeValue">${ sessionScope.loginUser.mPoint }원</div><br><br>
			    					<div id = "txtTotalValue">환급 금액</div><div class = "txtColor_o d-right" id = "totalValue">0</div>원
			    					<div id = "bar3"></div>
			    					<div class = "d-left">잔여포인트 </div><div class = "d-right" id = "txtFees">${ sessionScope.loginUser.mPoint }원</div>
			    					
			    				</div>
		    				</div>
		    				<div id = "back-btn">
		    					<a id = "btnPay">환급신청하기 </a>
		    				</div>
		    			</div>
		    		</div>
		    		<div id = "bar2"></div>
		    		
		    	</div>
	    	</section>
    	</div>
   	</div>
   	
   	<br><br><br><br><br>
    
    <!-- footer  -->
    <jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- loader -->
	<jsp:include page="../common/loader.jsp"></jsp:include>
	
	<script>
	$(document).ready(function() {
		/* 후원 포인트 입력 시 */
		$("#returnValue").change(function(){
			var value = Number($("#returnValue").val());
			$("#totalValue").text(value);
			changeFreePoint();
		}).on("keyup", function() {
			$("#allPoint").prop("checked", false);
		});
		
		
		/* 모든 포인트 쓰기 선택 할 시  */
		$("#allPoint").change(function(){
			var mypoint = $("#myPoint").text();
			var pointlength = mypoint.length-1;
			mypoint = mypoint.substring(0,pointlength);
			
			/*mypoint = mypoint.split(",");
			console.log(mypoint); 
		    var mypointt = mypoint.join();
			console.log(mypointt);*/
			
			if($("#allPoint").is(":checked")){
				$("#returnValue").val(mypoint);
				$("#returnValue").text(mypoint);
				$("#returnValue").change();
			}
			changeFreePoint();
		});
		
		function changeFreePoint() {
			var mPoint = ${ sessionScope.loginUser.mPoint }; /* 현재 보유포인트 */
			var returnValue = $("#returnValue").val(); /* 환급금액 */
			
			$("#txtFees").text(mPoint-returnValue);
		}
		
		/* 은행 종류에 따라 계좌번호 형식 바꾸기 */
		/* td_account */
		$("#returnBankSelect").change(function(){
			var bankName = $("#returnBankSelect option:selected").val();
			var contents = "";
			if(bankName == "신한은행"){
				$("#td_account").html("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '3' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '3' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly>" ;
			}else if(bankName == "국민은행"){
				$("#td_account").html("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '2' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly>" ;
			}else if(bankName == "농협"){
				$("#td_account").html("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '4' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '2' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly>" ;
			}else if(bankName == "우리은행"){
				$("#td_account").text("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '4' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '3' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly>" ;
			}else if(bankName == "기업은행"){
				$("#td_account").text("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '3' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '2' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '3' numberOnly>" ;
			}else if(bankName == "KEB하나은행"){
				$("#td_account").text("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '3' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '5' numberOnly>" ;
			}else if(bankName == "대구은행"){
				$("#td_account").text("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '3' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '2' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '1' numberOnly>" ;
			}else if(bankName == "부산은행"){
				$("#td_account").text("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '3' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '4' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '4' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '2' numberOnly>" ;
			}else if(bankName == "우체국"){
				$("#td_account").text("");
				contents = "<input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '2' numberOnly> - <input class='form-control inputAcc' type = 'text' name = 'returnAccount' id = 'returnAccount' maxlength = '6' numberOnly>" ;
			}
			$("#td_account").html(contents);

			
		});
		
		$("input:text[numberOnly]").on("keyup", function() {
		    $(this).val($(this).val().replace(/[^0-9]/g,""));
		});
		
	});
	
	$("#back-btn").click(function(){
		/* 유효성 검사 */
		var numberTest = /[^0-9]/g; /* 숫자로만 이뤄지기 */
		var returnPoint = $("#returnValue").val();
		var accountNum = $("#returnAccount").val();
		console.log(returnPoint);
		console.log(accountNum);
		console.log(numberTest.test(returnPoint)); //false
		if( numberTest.test(returnPoint)){
			alert("환급금액을 숫자로만 입력해주세요.");
		}else if( numberTest.test(accountNum)){
			alert("계좌번호를 숫자로만 입력해주세요.");
		}else if(Number($("#txtFees").text()) < 0){
			alert("환급 금액이 부족합니다.");
		}else {
			$("#returnHappyForm").submit();
		}
		
		
	});
	
	
	/* $("input:text[numberOnly]").on("focus", function() {
	    var x = $(this).val();
	    x = removeCommas(x);
	    $(this).val(x);
	}).on("focusout", function() {
	    var x = $(this).val();
	    if(x && x.length > 0) {
	        if(!$.isNumeric(x)) {
	            x = x.replace(/[^0-9]/g,"");
	        }
	        x = addCommas(x);
	        $(this).val(x);
	    }
	})
 */

	</script>
</body>
</html>