<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
      <!-- 공통 css 부분 -->
    <jsp:include page="../common/css.jsp"/>
      
    <style>
   		#nav_back{
   			background: #FFBB50; 
   			height:83px; 
   			box-shadow:0 0 6px 0 #B8B8B8; 
   		}
   		
   		#bar1{
   			width:98%; 
   			margin: 2% auto; 
   			border-top:1px solid #B8B8B8;
   			height : 10px;
   		}
   		
   		table {
   			width : 95%;
   			margin: 1%;
   		}
   		
   		tr{
   			height: 55px;
   		}
   		th{
   			font-weight : 400;
   			font-size : 20px;
   			font-family: "Dosis", Arial, sans-serif;
   		}
   		td{
   			font-weight : 300;
   			font-size : 20px;
   		}
   		
   		#sType{
   			display: block;
   			width : 100%;
   			font-size : 20px;
   		}
   		#sTitle{
   			display: block;
   			font-size : 30px;
   			font-weight : 500;
   		}
   		
   		.d-flex{
   			padding-left : 5%;
   			margin: 1% 0;
   		}
   		
   		.item{
   			height :40px !important;
   			border-radius : 5px;
   			width :  160px;
   			display : inline-block;
   			margin-right : 2%;
   		}
   		
   		#ipinFirst, #ipinSecond{
   			height : 40px !important;
   			border-radius : 5px;
   			width : 150px;
   			display : inline;
   		}
   		
   		#totalBox{
   			width : 82%; 
   			background: rgba(220,220,220,0.3); 
   			margin : 2% auto; 
   			padding: 4% 2%;
   		}
   		
   		#txtSponValue{
   			display : inline-block;
   			font-weight : 500;
   			font-size: 24px;
   			margin-right : 20px;
   		}
   		#sponValue{
   			display : inline-block;
   			color : #FE9D35;
   			font-weight : 500;
   			font-size: 36px;
   			margin-right : 10px;
   		}
   		#txtLeftValue{
   			display : inline-block;
   			margin-right : 22px;
   		}
   		.txtValue{
   			display : inline-block;
   			font-size: 22px;
   			margin-right : 10px;
   		}
   		
   		#seeTerms{
   			font-size : 17px;
   			font-weight : 500;
   			cursor : pointer;
   			color : orangered;
   		}
   		#seeTerms:hover{
   			cursor : pointer;
   			color : black;
   		}
   		
   		#btnBox{
   			width : 99%;
   			text-align : center;
   		}
   		
   		#btnSpon{
   			padding : 0.4em 4em;
   			border-radius : 4px;
   			background: #FE9D35;
   			color : #ffff;
   			font-weight : 700;
   			font-size : 28px;
   			cursor : pointer;
   		}
   		
   		.itemValue{
   			color : #FE9D35;
   			font-weight : 600;
   			font-size : 25px;
   			margin-right : 3px;
   			display : inline-block;
   		}
   		.txtWon{
   			display : inline-block;
   			font-size : 25px;
   			font-weight : 500;
   		}
   		
   		.txtItemValue{
   			font-size : 20px;
   			display : inline-block;
   		}
   		
   		.txtitem{
   			color : black;
   			font-weight : 500;
   			font-size : 23px;
   		}
   		
   		#tdRight{
   			text-align : right;
		    /* padding-left: 30%; */
   			padding-right : 3%;
   		}
   		
   		.bar2{
   			border-top : 1px solid #D1D1D1;
   			height : 20px;
   		}
   		.bar3{
   			height : 20px;
   		}
   		#leftItemValue{
   			color : #FE9D35;
   			font-size : 18px;
   			font-weight : 400;
   			margin-left : 5px;
   		}
    	
    	/* 약관 팝업창 */
   		.pop{
   			position : absolute;
   			background : rgb(240,240,240);
   			padding : 23px 17px;
   			width : 550px;
   			z-index : 200;
   			/* text-align : center; */
   			top : 40%;
   			left : 30%;
   			visibility : hidden;
   			border : 1px solid lightgray;
   		}
   		.pop_inner{
   			font-size : 15px;
   		}
    		
   		.pop_title{
   			font-weight : bold;
   			font-size : 18px;
   		}
   		
   		.pop_box{
   			height : 200px;
   			padding : 5px;
   			background : rgb(254,254,254);
   			overflow-y : scroll;
   		}
   		
   		#pop_close{
   			padding : 5px;
   			background : rgb(254,254,254);
   			border-radius : 7px;
   			width : 75px;
   			cursor : pointer;
   		}	
   		
   		.itemPriceTxt{
   			color : #AFAFAF;
   			font-size : 20px;
   		}
   		
   		.checks {position: relative;} 
		.checks input[type="checkbox"] { 
		/* 실제 체크박스는 화면에서 숨김 */ position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip:rect(0,0,0,0); border: 0 } .checks input[type="checkbox"] + label { display: inline-block; position: relative; cursor: pointer; -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; } 
		.checks input[type="checkbox"] + label:before { /* 가짜 체크박스 */ content: ' '; display: inline-block; width: 21px; /* 체크박스의 너비를 지정 */ height: 21px; /* 체크박스의 높이를 지정 */ line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */ margin: -2px 8px 0 0; text-align: center; vertical-align: middle; background: #fafafa; border: 1px solid #cacece; border-radius : 3px; box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05); } 
		.checks input[type="checkbox"] + label:active:before, .checks input[type="checkbox"]:checked + label:active:before { box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1); } 
		.checks input[type="checkbox"]:checked + label:before { /* 체크박스를 체크했을때 */ content: '\2714'; /* 체크표시 유니코드 사용 */ color: #FE9D35; text-shadow: 1px 1px #fff; background: #e9ecee; border-color: #adb8c0; box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1); }
		
		.firstMyPoint{
			font-size : 18px;
			color : #434343;
   			margin-left : 56%;
		}
		
   		#barBox{
   			background-color : rgb(240,240,240);
   			width : 93%;
   			height : 3em;
   		 }
		#progressbar{
   		 	background-color : #FE9D35;
   		 	font-size : 17px;
   		 }
    </style>
</head>
<body>
    <!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
   
   	<c:set var = "giveM" value = "${ sessionScope.loginUser2 }"/>
	<c:set var = "leftV" value = "0"/>
	
	<c:if test = "${ empty sessionScope.loginUser2 }">
 		<jsp:forward page="thing_donate.bo"/>
 	</c:if>
    <!-- 약관 팝업창 -->
     <div class = "pop" id = "pop_div">
    	<div class = "pop_inner">
    		<div class = "pop_title">기부금 영수증 발행을 위한 개인정보 제공 약관 </div>
    		<div class = "pop_box">
				&nbsp;&nbsp;'둘이두리'에서는 회원께서 포인트를 충전해 기부하셨을 경우 
				소득세법에 따라 기부금 영수증을 받으실 수 있도록 등록 대행을 하고 있습니다. <br><br>
				&nbsp;&nbsp;회원님께서 '둘이두리' 펀딩에 기부한 내역은 소득세법 등 기부금 관련 법제에 따라 연말 기부금 
				영수증 발행 및 기부내역의 신고 등을 위해 최소한의 개인정보(아이디, 성명, 기부금액, 
				주민등록번호)가 국세청과 회원님이 기부한 둘이두리 펀딩에 제공됩니다.  <br><br>
				&nbsp;&nbsp;개인정보는 오로지 기부금 영수증 발행과 기부내역의 신고에만 사용되며, 국세청과 
				기부금 영수증 발행기관에서 관련 법률에 따라 보관 후 파기합니다.
				연말정산 간소화 시스템을 통해 기부금 영수증을 받으시려면 개인정보 제공에 동의 후 입력해 
				주시기 바랍니다.
    		</div><br>
			<input type = "checkbox" id = "checkla01"><label for = "checkla01">개인정보 제공 약관에 동의합니다.</label>
			<hr>
			<div class = "pop_title">소득세법에 따른 주민등록번호 수집 안내 </div>
			<div class = "pop_box"> 
				&nbsp;&nbsp;'둘이두리'에서는 기부금 영수증 발급명세서 작성 및 연말정산용 기부금 영수증의 발급을 목적으로 
				소득세법 제160조의3, 소득세법 시행령 제113조 제1항, 제208조의3, 소득세법 
				시행규칙 제 58조 등에 의거하여 주민등록번호를 처리합니다. <br><br>
				&nbsp;&nbsp; 수집한 주민등록번호는 기부금 영수증 발급을 위해서만 사용되며, <strong>'둘이두리'에서는 직접 보관하지 않습니다. </strong>
				하지만 필요 시에는 관련 법령에 따라 5년간 보관됩니다. 
				주민등록번호를 입력하지 않을 경우 기부금 영수증 발급이 제한될 수 있습니다. 
			</div><br>
			<input type = "checkbox" id = "checkla02"><label for = "checkla02">주민등록번호 수집에 동의합니다.</label>
			<br>
			<div  align = "center">
				<div onclick = "closePop();" id = "pop_close">종료하기</div>
			</div>
    	</div>
    </div>
    
     <section class="ftco-section">
    	<div class="container">
    		<div class="row d-flex">
    			<div class = "ftco-animate" id = "sType">물품후원</div>  
    			<h3 class = "ftco-animate" id = "sTitle">${b.fTitle}</h3>
    		</div>
    		<div id = "bar1"></div>
    		<div class ="row d-flex"> 
    			<h4 class ="ftco-animate">> 후원 물품</h4>
    			<p class = "firstMyPoint">▶ 현재 보유 포인트 : <fmt:formatNumber value = "${ giveM.mPoint }" type="currency" currencySymbol=" "/>원</p>
    		</div>
    		<div class ="row d-flex"> 
    		<form id = "fundItemform" action = "execfundItem.pm" method = "post" style ="width: 100%;">
    			<table>
    			<c:if test = "${ !empty biList }">
	    			<c:forEach var="biList" items="${ biList }" varStatus="status">
	    			
	    			<c:if test ="${ empty biList.sumItemValue }">
    					<c:set var = "leftV" value = "${biList.fdValue}"/>
    				</c:if>
    				<c:if test ="${ !empty biList.sumItemValue }">
    					<c:set var = "leftV" value = "${ biList.fdValue - biList.sumItemValue }"/>
    				</c:if>
    				
	    			<tr class = "bar3">
    					<td colspan = "4"></td>
    				</tr>
	    			<tr>
    					<td style = "">
    						<div class="form-check checks etrans"> 
	    					<c:if test ="${leftV eq 0}">
	    						<input class="form-check-input chkItem" type="checkbox" name = "itemNo" value = "${ biList.iNo }" id="chkitem${ status.index }" disabled>
	    					</c:if>
		    				<c:if test ="${leftV ne 0}">
	    						<input class="form-check-input chkItem" type="checkbox" name = "itemNo" value = "${ biList.iNo }" id="chkitem${ status.index }" >
		    				</c:if>
						  
						  <label class="form-check-label txtitem" for="chkitem${ status.index }" >
						 	  ${ biList.iName }
						  </label>
							</div>
    					</td>
    					<td></td>
    					<td id = "tdRight">
	    					<input class="form-control item" type = "text" name = "itemNum" id = "item${ status.index }" value = "0">개
	    					<input type = "hidden" name = "price${ status.index }" value = "${ biList.iPrice }" id = "itemPrice">
    					</td>
    					<td style = "width: 200px;"><p class = "itemValue" id = "itemValue${ status.index }">0</p>
    					<p class = "txtItemValue">원</p></td>
    				</tr>
    				<input type = "hidden" name = "itemSumPrice" value = "0" id = "itemSumPrice${ status.index }"> <!-- 물품 총 후원값 -->
    				<tr>
    					<td  style = "padding-left: 20px;" colspan = "3"><p id = "leftItemValue${ status.index }">남은 수량 : ${leftV}개 </p></td>
    					<td> <p  class = "itemPriceTxt" id = "itemPriceTxt${ status.index }"><fmt:formatNumber value = "${ biList.iPrice }" type="currency" currencySymbol=" "/> x 0 </p></td>
    				</tr>
   					<input type = "hidden"  name = "leftValue" id = "leftValue${ status.index }" value ="${leftV}"> <!-- 물품별 남은 수량 -->
    				
    				<c:if test="${!status.last}">
    				<tr class = "bar3">
    					<td colspan = "4"></td>
    				</tr>
    				<tr class = "bar2">
    					<td colspan = "4"></td>
    				</tr>
    				</c:if>
    				<c:if test="${status.last}">
    					<input type = "hidden" name = "fno" value ="${biList.fno}">
    				</c:if>
	    			</c:forEach>
    			</c:if>
    				
    			</table>
    			<input type = "hidden" name = "totalValue" value = "0" id = "totalValue" >
    			<input type = "hidden" name = "checkDonate" value ="0" id = "checkDonate">
    			<input type = "hidden" name = "fWriter" value ="${b.fWriter}" id = "fWriter">
    		</form>
    			
    		</div>
    		
    		<div id = "bar1"></div>
    		
    		<div class ="row d-flex"> 
    			<h4 class ="ftco-animate" id = "">> 후원 정보</h4>
    			<p style = "margin-left : 1%;"> * 후원자 정보 수정을 원한다면 회원정보 수정을 해주세요. </p>
    		</div>
    		<div class ="row d-flex"> 
    			<table>
    				<tr>
    					<th>행복두리</th>
    					<td colspan = "2" >${b.mNick}</td>
    				</tr>
    				<tr>
    					<th>후원 펀딩</th>
    					<td colspan = "2" >${b.fTitle}</td>
    				</tr>
    				<tr>
    					<th>펀딩 진행률</th>
    					<td colspan = "2" >
    						<div class="progress custom-progress-success" id = "barBox" >
				    			<div id="progressbar" class="progress-bar" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100">
				    				<fmt:formatNumber value = "${progress}" pattern = ""/>%
				    			</div>
				   			</div>
    					</td>
    				</tr>
    				<tr>
    					<th>후원 기간</th>
    					<td colspan = "2" >${b.fStartDate} ~ ${b.fEndDate}</td>
    				</tr>
    				<tr>
    					<th>나눔두리</th>
    					<td colspan = "2" >${giveM.mNickName}(${giveM.mName})</td>
    				</tr>
    				<tr>
    					<th>기부금영수증</th>
    					<td colspan = "2" >
    						<div class="form-check form-check-inline">
	    						<input class="form-check-input" type="radio" name="sponReceip" id="yesReceip" value="Y">
	 		 					<label class="form-check-label" for="yesReceip">발급</label>
 		 					</div>
 		 					<div class="form-check form-check-inline">
 		 						<input class="form-check-input" type="radio" name="sponReceip" id="noReceip" value="N" checked>
 		 						<label class="form-check-label" for="noReceip">미발급</label>
    						</div>
    					</td>
    				</tr>
    				<tr class = "ipin"> 
    					<th>주민등록번호</th>
    					<td colspan = "2"><input class="form-control" type = "text" maxlength = "6" id = "ipinFirst" name = "ipin1"> - 
    						<input class="form-control" type = "text" maxlength = "7" id = "ipinSecond" name = "ipin2"></td>
    				</tr>
    				<tr class = "ipin">
    					<td></td>
    					<td><a id = "seeTerms">* 기부금 영수증 발급 관련 약관에 동의해주세요 (클릭!) </a></td>
    				</tr>
    			</table>
    		</div>
    		<div id ="bar1"></div>
    		
    		
    		<div id = "totalBox">
    			<div align = "right">
    				<div id = "txtSponValue">총 후원 포인트 </div> <div id = "sponValue">0 </div> <div class = "txtWon"> 원</div>
    			</div>
    			<div id = "bar1"></div>
    			<div align = "right">
    				<div id = "txtLeftValue">현재 보유포인트 </div> <div class ="txtValue" id = "myValue"><fmt:formatNumber value = "${ giveM.mPoint }" type="currency" currencySymbol=" "/>원 </div>
    			</div>
    			<div align = "right">
    				<div id = "txtLeftValue">후원 후 잔여포인트 </div> <div class ="txtValue" id = "leftValue"><fmt:formatNumber value = "${ giveM.mPoint }" type="currency" currencySymbol=" "/>원 </div>
    				<input type = "hidden" id = "leftValueInput" value = "${giveM.mPoint}">
    			</div>
    		</div>
    		<div id = "btnBox">
	    		<a id = "btnSpon">후원하기 </a>
    		</div>
    	
    	</div>
    </section>
    <section class="ftco-section">
    	<div class="container">
    		
    	</div>
    </section>
   <!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   	<jsp:include page="../common/loader.jsp"></jsp:include>
  	<script>
		function numberWithCommas(x) {
		    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}
		
		var checkUsing = 1;  /* 기부금영수증 발급 약관 확인 변수 */
		var checkIpin = 0; /* 기부금영수증 발급인지 아닌지 확인 변수 */
	  
		$(document).ready(function() {
			/* 주민등록번호 입력창 숨겨두기 */
			$(".ipin").css("display","none");
			var percents = ${progress};
			$("#progressbar").css("width", percents+"%");
			
			/* 기부금 영수증 발급 시 주민등록번호 입력창 보이기 */
			$("input[name=sponReceip]").change(function(){   // 발급
				if($("#yesReceip").is(":checked")){
					$(".ipin").css("display","");
					checkUsing = 0;
					checkIpin = 1; 
					$("#checkDonate").val("1");
				}else {  // 미발급
					$(".ipin").css("display","none");
					checkUsing = 1;
					checkIpin = 0; 
					$("input:checkbox").prop("checked", false);
					$("#checkDonate").val("0");
				}
				
			});
			
		});
  
  		/* 물품후원갯수 선택 시 */
  		$(".item").blur(function(){
  			var thisId = $(this).attr("id");
  			var Idlength = thisId.length;
  			thisId = thisId.substring(Idlength-1,Idlength);
  			
  			var itemCount = $(this).val();  // 갯수
  			var itemPrice = $(this).next().val() // 금액
  			var leftCount = $("#leftValue" + thisId).val();
  			
  			if(Number(itemCount) > Number(leftCount)){
  				$(this).val("1");
  			}else {
  				$("#itemPriceTxt"+ thisId).text(numberWithCommas(itemPrice) +" x " + itemCount);
  	  			$("#itemValue"+ thisId).text(numberWithCommas(itemPrice*itemCount));
  	  			$("#itemSumPrice"+ thisId).val(itemPrice*itemCount);
  			}

  			console.log("후원갯수 선택 blur");
  			calValue();
  		});
  		
  		/* 물품 체크박스 선택 시 */
  		$(".chkItem").change(function(){
  			console.log("체크박스 선택 ");
  			calValue();
  		});
  		
		/* 후원포인트, 잔여포인트 계산 및 표시 */
		function calValue(){
			var total = 0;
			$("input:checked").each(function() {
				var thisId = $(this).attr("id");
	  			var Idlength = thisId.length;
	  			thisId = thisId.substring(Idlength-1,Idlength);
	  			
	  			if($("#itemSumPrice"+thisId).val() != null){
	  				var value = Number($("#itemSumPrice"+thisId).val());
	  				total += value;
	  			}else {
	  				console.log("얍 ");
	  				$("#item"+thisId).val("0");
	  			}
	  			
	  			
			});
			
			var mPoint = ${giveM.mPoint};
			var leftValue = mPoint - total;
			$("#totalValue").val(total);
			$("#sponValue").text(numberWithCommas(total));
			$("#leftValue").text(numberWithCommas(leftValue) +"원");
			$("#leftValueInput").val(leftValue);
			
		}
		
		/* 약관 팝업창 보여주기 */
		$("#seeTerms").click(function(){
			$("#pop_div").css("visibility", "visible");
		});
		
		/* 기부금 영수증 관련 약관 1 */
		$("#checkla01").change(function(){
			if($("#checkla01").is(":checked") && $("#checkla02").is(":checked")){
				checkUsing = 1;
				$("#pop_div").css("visibility", "hidden");
			}
		});
		
		/* 기부금 영수증 관련 약관 2 */
		$("#checkla02").change(function(){
			if($("#checkla01").is(":checked") && $("#checkla02").is(":checked")){
				checkUsing = 1;
				$("#pop_div").css("visibility", "hidden");
			}
		});
		
		/* 약관창 닫기 */
		function closePop(){
			$("#pop_div").css("visibility", "hidden");
			$("input:checkbox").prop("checked", false);
		}
		
		
		/* 후원하기 버튼 클릭 시  */
		$("#btnSpon").click(function(){
			var numberTest = /[^0-9]/g; /* 숫자로만 이뤄지기 */
			var resultValue = $("#sponValue").val();
			
			var ipinTest01 = /\d{6}/; /* 숫자로만 6글자 이뤄지기 */
			var ipinTest02 = /\d{7}/; /* 숫자로만 7글자 이뤄지기 */
			var ipinFirst = $("#ipinFirst").val();
			var ipinSecond = $("#ipinSecond").val();
			
			var leftValue = $("#leftValueInput").val();

			var totalValue = Number($("#totalValue").val());
			
			if(totalValue == 0){
				alert("후원물품을 선택해주세요.");
			}else if(checkUsing == 1 && checkIpin == 1 && !ipinTest01.test(ipinFirst)) {
				alert("주민번호 앞자리를 제대로 입력해주세요.");
			}else if(checkUsing == 1 && checkIpin == 1 && !ipinTest02.test(ipinSecond)) {
				alert("주민번호 뒷자리를 제대로 입력해주세요.");
			}else if(leftValue < 0){
				alert("포인트가 부족합니다. 충전해주세요.");
			}else if(checkUsing == 0){
				alert("기부금 영수증 관련 약관에 동의해주세요.");
				$("#seeTerms").focus();
			}else {
				$("#fundItemform").submit();
			}
		});
	
	</script>
  
</body>
</html>