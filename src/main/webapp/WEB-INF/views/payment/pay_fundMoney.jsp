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
    			padding : 5%;
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
    					<td><input type ="checkbox" id= "chkinfo"><label for = "chkinfo">고유식별정보 수집 및 이용약관에 동의합니다. </label> </td>
    					<td><a id = "seeTerms">전문보기 </a></td>
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
			
			/* 기부금 영수증 발급 시 주민등록번호 입력창 보이기 */
			$("input[name=sponReceip]").change(function(){
				if($("#yesReceip").is(":checked")){
					$(".ipin").css("display","");
				}else {
					$(".ipin").css("display","none");
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