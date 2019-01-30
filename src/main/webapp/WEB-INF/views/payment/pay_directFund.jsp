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
    			width : 95%;
    			margin: 1%;
    		}
    		
    		tr{
    			height: 90px;
    		}
    		th{
    			font-weight : 400;
    			font-size : 20px;
    			font-family: "Dosis", Arial, sans-serif;
    		}
    		td{	
    			padding-left : 10px;
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
    			font-weight : 600;
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
    		
    		#totaldiv{
    			width : 82%;
    			margin : 2% auto; 
    		}
    		
    		#totalBox{
    			width : 99%; 
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
    			padding : 0.6%;
    			border-radius : 4px;
    			background: rgba(150,150,150,0.4);
    			font-size : 17px;
    			font-weight : 500;
    			cursor : pointer;
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
    		
    		.txtColor_o{
    			color : #FE9D35;
    		}
    		.txtColor_g{
    			color : #32933F;
    		}
    		.txtBold{
    			font-weight : 700;
    		}
    		.disInline{
    			display: inline-block;
    		}
    		.txtInfo{
    			font-size : 16px;
    			font-weight : 400;
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
    			<div class = "ftco-animate" id = "sType">정기후원</div>  
    			<h3 class = "ftco-animate" id = "sTitle">1대 1 결연 맺기</h3>
    		</div>
    		<div id = "bar1"></div>
    		<div class ="row d-flex"> 
    			<h4 class ="ftco-animate">> 후원 정보</h4>
    		</div>
    		<div class ="row d-flex"> 
    			<table>
    				<tr>
    					<th class = "txtColor_o">행복두리</th>
    					<td class = "txtColor_o txtBold">
    					응디곤듀
    					(경기도 안성시)
    					</td>
    				</tr>
    				<tr>
    					<th class = "txtColor_o">나눔두리</th>
    					<td class = "txtColor_o txtBold">다힝천샤</td>
    				</tr>
    				<tr>
    					<th>현재보유 포인트</th>
    					<td><span id = "myPoint">10000</span> 원</td>
    				</tr>
    				<tr>
    					<th>후원포인트</th>
    					<td><input class="form-control" type = "text" name = "point" id = "sponPoint">원
    						<br>
    						<div class = "txtInfo disInline"><div class = "txtColor_g disInline">최소 1,000원 이상</div> 후원할 수 있으며 매월 둘째 주 월요일에 <div class = "txtColor_g disInline">포인트 자동 결제</div>후 <div class = "txtColor_g disInline">자동 후원</div> 됩니다. </div>
    					</td>
    				</tr>
    				<tr>
    					<th>후원 기간 </th>
    					<td>2019년 01월 ~ 
    						<br>
    						<div class ="txtInfo">정기 후원은 따로 후원 중지를 신청하지 않을 경우, 나눔두리의 후원 상태 종료 시 자동 종료됩니다.</div>
    					</td>
    				</tr>
    				<tr>
    					<th>다음 후원일 </th>
    					<td>
    					<div> 2019년 02월 04일 </div>
    					<div class ="txtInfo">( 매월 둘째 주 월요일 )</div>
    					</td>
    				</tr>
    			</table>
    		</div>
    		
    		<div id = "bar1"></div>
    		
    		<div id = "totaldiv">
    			<div> 
    				<input type ="checkbox" id= "chkinfo"><label for = "chkinfo">정기결제 약관동의 </label> 
	    			<a id = "seeTerms">전문보기 </a> <br>
	    			<input type ="checkbox" id= "chkinfo"><label for = "chkinfo">정기결제 수수료 약관동의</label> <br>
	    			<a>둘이두리에서는 포인트 결제 시 후원 수수료와 카드 수수료를 부과합니다. 
후원 수수료의 경우 행복두리의 더 나은 후원받기에만 사용되며 둘이두리의 이윤목적으로는 절대 사용하지 않음을 알립니다.</a>
    			</div>
    		
    			<div id = "totalBox">
	    			<div align = "right">
	    				<div id = "txtSponValue">총 후원 포인트 </div> <div id = "sponValue">0 </div> <div class = "txtWon"> 원</div>
	    			</div>
	    			<div id = "bar1"></div>
	    			<div align = "right">
	    				<div id = "txtLeftValue">후원 후 잔여포인트 </div> <div id = "leftValue">10000원 </div>
	    			</div>
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
		$(document).ready(function() {
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
			alert("약관보여주기 ");
		});
		
		/* 후원하기 버튼 클릭 시  */
		$("#btnSpon").click(function(){
			var leftValue = $("#leftValue").text();
			leftValue = leftValue.substring(0, leftValue.length-1);
			if(leftValue < 0){
				alert("포인트가 부족합니다. 충전해주세요. ");
			}else if(!$("#chkinfo").is(":checked")){
				alert("고유식별정보 약관에 동의해주세요.");
			}else {
				alert("결제진행");
			}
		});
	
	</script>
  
</body>
</html>