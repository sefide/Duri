<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../Nanummember/include/common.jsp" />
<title>둘이두리</title>
<jsp:include page="../common/css.jsp"/>
<style>
	#box-right{
		line-height : 0px !important;
	}
	
	#myTitle{
		margin-bottom: 20px;
		font-size:25px;
		color: rgba(250, 143, 61);
		font-weight: bold;	
	}
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
	}
	th {
		color : black;
		font-weight : 400;
		font-size : 20px;
		width: 144px;
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
		margin: 300px 1% 1% 1%;
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
		display : inline-block;
		
	}
	.txtright{
		font-size : 18px;
		color :black;
		font-weight : 400;
		display : inline-block;
	}
	#totalValue{
		display : inline-block;
		width: 45%;
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
	.row tr:nth-child(even) {
	    background: none;
	}
	#checkAccount{
		display : inline-block;
		text-decoration : none;
		font-size : 18px;
		color : #FE9D35;
		cursor : pointer;
	}
	
	#checkAccount:hover{
		text-decoration : underline;
		color : black;
		cursor : pointer;
	}
	.check{
		text-decoration : none;
		font-size : 24px;
		color : gray;
	}
	
	
</style>
</head>
<body>
	<!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
	
	<jsp:include page="../Nanummember/include/header.jsp" />	
	
	<br><br><br><br>
	
	<c:if test = "${ empty sessionScope.loginUser2 }">
 		<jsp:forward page="total.nanum"/>
 	</c:if>
 	
	<div class="contBox inner">
		<jsp:include page="include/tabMypage_point.jsp"/>	
	</div>
    
    <section class="ftco-section">
    	<div class="container">
    		<div class="row d-flex">
    			<div id="myTitle"> <i class="bookmark outline icon"></i>후원포인트 환불하기 </div>
    		</div>
    		<div id = "bar1"></div>
    		<div class ="row d-flex"> 
    			<div class = "d-flex-left">
 	  			<h4 class ="" id = "subTitle">> 환불포인트</h4>
 	  			
 	  			<form id = "returnHappyForm" action = "execPointReturnHappy.pm" method = "post" >
 	  			<input type = "hidden" value = "n" name = "memberType">
    				<table>
    					<tr>
    						<th>보유포인트</th>
    						<td id = "myPoint"> <fmt:formatNumber value = "${ sessionScope.loginUser2.mPoint }" type="currency" currencySymbol=" "/>원</td>
    						<input type = "hidden" id = "myPointInput" value = "${ sessionScope.loginUser2.mPoint }">
    					</tr>
    					<tr>
    						<th>환불 금액</th>
    						<td><input class="form-control" type = "text" name = "returnValue" id = "returnValue">원
    							<div class="form-check">
							  <input class="form-check-input" type="checkbox" value="" id="allPoint">
							  <label class="form-check-label" for="allPoint" id = "txtAllPoint">
							 	  모든 포인트 환불하기
							  </label>
							</div>
    						</td>
    					</tr>
    				</table>
    				
    				<div id = "bar2"></div>
    				<h4 class ="" id = "subTitle">> 환불받을 계좌</h4>
    				
    				<table>
    					<tr>
    						<th>은행</th>
    						<td>
    							<select class="form-control inputTxt" id="returnBank">
    								<option>은행을 선택해주세요 .</option>
    								<option value = "004">국민은행</option>
    								<option value = "020">우리은행</option>
    								<option value = "011">농협</option>
    								<option value = "012">지역농협</option>
    								<option value = "088">신한은행</option>
    								<option value = "003">기업은행</option>
    								<option value = "081">KEB하나은행</option>
    								<option value = "031">대구은행</option>
    								<option value = "032">부산은행</option>
    								<option value = "005">외환은행</option>
    							</select>
    							<input type = "hidden" id = "Bank" name = "Bank" >
    						</td>
    					</tr>
    					<tr>
    						<th>계좌번호</th>
    						<td id = "td_account"><input class="form-control inputTxt" type = "text" name = "returnAccount" id = "returnAccount">
    						<a id = "check">* '-' 를 제외하고 입력해주세요.</a>
    						</td>
    						
    					</tr>
    					<tr>
    						<th>생년월일</th>
    						<td id = "birthDaytxt"><input class="form-control inputTxt" type = "text" name = "birthDay" id = "birthDay">
    						<a id = "check">* 주민번호 앞자리만 입력해주세요. "950822"</a>
    						</td>
    						
    					</tr>
    					<tr>
    						<th>예금주명</th>
    						<td><input class="form-control inputTxt" type = "text" name = "accountName" id = "accountName" placeholder = "이름을 입력해주세요.">
    						<div id = "checkAccount" onclick = "fnSearchAccessToken();">계좌 인증하기</div>
    						</td>
    					</tr>
    				</table>
   				</form>
   				
    			</div>
    			
    			<div class = "d-flex-right">
    				<div class = "back-right">
    					<input type ="checkbox" id= "chkinfo1"><label for = "chkinfo1">수수료 약관동의</label> <br>
	    				<a>포인트 결제 시 부과했던 후원 수수료는 환불되지 않습니다. </a><br><br> 
						<p style = "margin-left : 1%;"> *환불받을 계좌 정보를 정확히 입력해주세요. <br> 
						계좌번호와 예금주명이 다를 경우 환불이 제대로 되지 않을 수 있습니다.  </p>
	    				<div class= "flexBox valueBox">
	    					<div class = "d-left">현재 보유포인트 </div><div class = "d-right" id = "txtChargeValue"><fmt:formatNumber value = "${ sessionScope.loginUser2.mPoint }" type="currency" currencySymbol=" "/>원</div>
	    					<div id = "txtTotalValue">환불 금액</div><div class = "txtColor_o d-right" id = "totalValue">0</div><p class = "txtright">원</p>
	    					<div id = "bar3"></div>
	    					<div class = "d-left">잔여포인트 </div><div class = "d-right" id = "txtFees"><fmt:formatNumber value = "${ sessionScope.loginUser2.mPoint }" type="currency" currencySymbol=" "/>원</div>
	    					<input type = "hidden" id = "txtFreesInput" value = "0">
	    				</div>
    				</div>
    				<div id = "back-btn">
    					<a id = "btnPay">환불받기 </a>
    				</div>
    			</div>
    		</div>
    		<div id = "bar2"></div>
    		
    	</div>
    </section>
    <br><br><br><br>
    
    <!-- footer  -->
    <jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- loader -->
	<jsp:include page="../common/loader.jsp"></jsp:include>
	
	<script>
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
	var reqDate = new Date();
	var year = reqDate.getFullYear() +"";
	var month = (reqDate.getMonth() + 1) > 10?reqDate.getMonth() + 1 + "":"0" + (reqDate.getMonth() + 1);
	var date = (reqDate.getDate() > 10?reqDate.getDate() + "":"0" + reqDate.getDate());
	var hour = reqDate.getHours() > 9?reqDate.getHours() + "":"0" + reqDate.getHours();
	var min = reqDate.getMinutes() > 10?reqDate.getMinutes() + "":"0" + reqDate.getMinutes();
	var sec = reqDate.getSeconds() > 10?reqDate.getSeconds() + "":"0" + reqDate.getSeconds();
	
	console.log(hour);
	console.log(min);
	console.log(sec);
	var currentTime = year + month + date + hour + min + sec;
	console.log(currentTime);
	
	var checkAcc = 0; // 계좌인증 확인여부 
	// 1이면 체크함
	// 0이면 체크 안함 
	
	$(document).ready(function() {
		/* 후원 포인트 입력 시 */
		$("#returnValue").change(function(){
			var value = Number($("#returnValue").val());
			$("#totalValue").text(numberWithCommas(value));
			changeFreePoint();
		}).on("keyup", function() {
			$("#allPoint").prop("checked", false);
		});
		
		
		/* 모든 포인트 쓰기 선택 할 시  */
		$("#allPoint").change(function(){
			var mypoint = $("#myPointInput").val();
			
			if($("#allPoint").is(":checked")){
				$("#returnValue").val(mypoint);
				$("#returnValue").text(mypoint);
				$("#returnValue").change();
			}
			changeFreePoint();
		});
		
		function changeFreePoint() {
			var mPoint = ${ sessionScope.loginUser2.mPoint }; /* 현재 보유포인트 */
			var returnValue = $("#returnValue").val(); /* 환불금액 */
			
			$("#txtFees").text(numberWithCommas(mPoint-returnValue)+"원");
			$("#txtFreesInput").val(mPoint-returnValue);
		}
		
		
		$("input:text[numberOnly]").on("keyup", function() {
		    $(this).val($(this).val().replace(/[^0-9]/g,""));
		});
		
	});
	
	var tokenStr = "";
	var user_seq_no;
	function fnSearchAccessToken() {
		//$("#bank_code_std").val($("#bankcode").val());
		//$("#account_num").val($("#accnum").val());
		var client_id = "l7xx5a2b2c2836b54004ba419824d3a84b3f";
		var client_secret = "39ed8dfb10d145a189376c95addd2986";
		var grant_type = "client_credentials";
		var scope = "oob";
		$.ajax({
			url : "https://testapi.open-platform.or.kr/oauth/2.0/token",
			type : "POST",
			//cache: false,
			contenType : "application/json",
			data : {
				"client_id" : "l7xx5a2b2c2836b54004ba419824d3a84b3f",
				"client_secret" : "39ed8dfb10d145a189376c95addd2986",
				"grant_type" : grant_type,
				"scope" : scope
			},
			dataType : "json",
			success : function(data, data2, data3) {
				console.log("토큰 발급 성공 ");
				console.log(data);
				console.log(data2);
				console.log(data3);
				var list = JSON.parse(data3.responseText);
				tokenStr = list.access_token;
				//user_seq_no = list.user_seq_no;
				//console.log("tokenStr : "+ tokenStr);
				//console.log("user_seq_no : "+ user_seq_no);
				fnSearchRealName();
			},
			error : function(data, data2, data3) {
				alert('error!!!');
			}
		});
	}
	/* 계좌실명조회API */
	function fnSearchRealName() {
		//var account_holder_name = ${ loginUser2.mName};
		var bank_code_std = $("#returnBank").val();
		var bank_Name = $("#returnBank option:selected").text();
		var account_num = $("#returnAccount").val();
		var account_holder_info = $("#birthDay").val();
		var tran_dtime = currentTime;
		var access_token = "Bearer " + tokenStr;
		var resData = {
			"bank_code_std" : bank_code_std,
			"account_num" : account_num,
			"account_holder_info" : account_holder_info,
			//"account_holder_name" : account_holder_name,
			"tran_dtime" : tran_dtime
		};
		console.log("returnBank : "+ bank_code_std);
		console.log("account_num : "+ account_num);
		console.log("account_holder_info : "+ account_holder_info);
		console.log("tran_dtime : "+ tran_dtime);
		console.log("access_token : "+ access_token);
		console.log("bank_Name : "+ bank_Name);
		$.ajax({
			url : "https://testapi.open-platform.or.kr/v1.0/inquiry/real_name",
			beforeSend : function(request) {
				request.setRequestHeader("Authorization",
						access_token);
			},
			type : "POST",
			data : JSON.stringify(resData),
			dataType : "json",
			success : function(data, data2, data3) { 
				console.log("서버 통신 성공");
				console.log(data)
				console.log($("#accountName").val());
				if (data.account_holder_name == $("#accountName").val()) {
					alert('인증 성공!!!');
					$("#checkAccount").hide();
					$("#accountName").attr("readonly","readonly");
					$("#returnAccount").attr("readonly","readonly");
					$("#returnBank").not(":selected").attr("disabled", "disabled");
					checkAcc = 1;
					$("#Bank").val(bank_Name);

				} else {
					alert('인증 실패');
					checkAcc = 0;
				}
			},
			error : function(data, data2, data3) {
				alert('error!!!');
			}
		});
	}
	
	/* 환불하기 버튼 */
	$("#back-btn").click(function(){
		/* 유효성 검사 */
		if(!$("#chkinfo1").is(':checked')){
			alert("수수료 약관 동의 해주십시오.");
			return false;
		}
		if(checkAcc == 0){
			alert("계좌 인증을 해주세요.");
			return false;
		}
		var numberTest = /[^0-9]/g; /* 숫자로만 이뤄지기 */
		var returnPoint = $("#returnValue").val();
		var accountNum = $("#returnAccount").val();
		console.log(returnPoint);
		console.log(accountNum);
		console.log(numberTest.test(returnPoint)); //false
		
		if(checkAcc == 0){
			alert("환급 계좌 정보를 정확히 입력해주세요.");
			return false;
		} else if( numberTest.test(returnPoint)){
			alert("환불금액을 숫자로만 입력해주세요.");
			return false;
		}else if( numberTest.test(accountNum)){
			alert("계좌번호를 숫자로만 입력해주세요.");
			return false;
		}else if(Number($("#txtFreesInput").val()) < 0){
			alert("환불 금액이 부족합니다.");
			return false;
		}else {
			$("#returnHappyForm").submit();
		}
		
		
	});
	
	
	</script>
</body>
</html>