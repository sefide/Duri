<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
   			width : 80%;
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
   		
   		#sponPoint{
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
   			padding: 5% 2%;
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
   		.txtWon{
   			display : inline-block;
   			font-size : 25px;
   			font-weight : 500;
   		}
   		
   		#txtLeftValue{
   			display : inline-block;
   			margin-right : 22px;
   		}
   		#leftValue{
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
   		.txtWon{
   			display : inline-block;
   			font-size : 19px;
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
    </style>
</head>
<body>
    <!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
    
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
    			<div class = "ftco-animate" id = "sType">금액후원</div>  
    			<h3 class = "ftco-animate" id = "sTitle">동생은 몸이 아프니까, 형이 대신 해줘야지...</h3>
    		</div>
    		<div id = "bar1"></div>
    		<div class ="row d-flex"> 
    			<h4 class ="ftco-animate">> 후원 금액</h4>
    		</div>
    		<div class ="row d-flex"> 
    			<table>
    				<tr>
    					<th>현재보유 포인트</th>
    					<td colspan = "2" ><span id = "myPoint">10000원</span></td>
    				</tr>
    				<tr>
    					<th>후원포인트</th>
    					<td><input class="form-control" type = "text" name = "point" id = "sponPoint">원</td>
    					<td>
    						<div class="form-check">
						  <input class="form-check-input" type="checkbox" value="" id="allPoint">
						  <label class="form-check-label" for="allPoint">
						 	  모든 포인트 사용하기
						  </label>
						</div>
    					</td>
    				</tr>
    			</table>
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
    					<td colspan = "2" >응디곤듀</td>
    				</tr>
    				<tr>
    					<th>후원 펀딩</th>
    					<td colspan = "2" >동생은 몸이 아프니까, 형이 대신 해줘야지...</td>
    				</tr>
    				<tr>
    					<th>후원 유형</th>
    					<td colspan = "2" >의료비</td>
    				</tr>
    				<tr>
    					<th>나눔두리</th>
    					<td colspan = "2" >천샤다힝</td>
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
    				<div id = "txtLeftValue">후원 후 잔여포인트 </div> <div id = "leftValue">10000원 </div>
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
  var checkUsing = 1; /* 기부금영수증 발급 약관 확인 변수 */
  
		$(document).ready(function() {
			/* 주민등록번호 입력창 숨겨두기 */
			$(".ipin").css("display","none");
			
			/* 모든 포인트 쓰기 선택 할 시  */
			$("#allPoint").change(function(){
				var mypoint = $("#myPoint").text();
				var pointlength = mypoint.length-1;
				mypoint = mypoint.substring(0,pointlength);
				mypoint = mypoint.split(",");
				console.log(mypoint);
			    var mypointt = mypoint.join();
				console.log(mypointt);
				if($("#allPoint").is(":checked")){
					$("#sponPoint").val(mypointt);
					$("#sponValue").text(mypointt);
					calValue();
				}
				
			});
			
			/* 기부금 영수증 발급 시 주민등록번호 입력창 보이기 */
			$("input[name=sponReceip]").change(function(){
				if($("#yesReceip").is(":checked")){ // 발급
					$(".ipin").css("display","");
					checkUsing = 0;
				}else { // 미발급
					$(".ipin").css("display","none");
					checkUsing = 1;
					$("input:checkbox").prop("checked", false);
				}
				
			});
			
			/* 후원포인트 금액 변경 시 */
			$("#sponPoint").change(function(){
				calValue();
			});
			
			
		});
		
		/* 후원포인트, 잔여포인트 계산 및 표시 */
		function calValue(){
			var sPoint = $("#sponPoint").val();
			var mPoint = $("#myPoint").text();
			mPoint = mPoint.substring(0,mPoint.length-1);
			$("#sponValue").text(sPoint+"원");
			$("#leftValue").text(mPoint-sPoint + "원");
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
			var leftValue = $("#leftValue").text();
			leftValue = leftValue.substring(0, leftValue.length-1);
			if(leftValue < 0){
				alert("포인트가 부족합니다. 충전해주세요. ");
			}else if(checkUsing == 0){
				alert("기부금 영수증 관련 약관에 동의해주세요.");
				$("#seeTerms").focus();
			}else {
				alert("결제진행");
			}
		});
	
	</script>
  
</body>
</html>