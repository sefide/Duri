<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Date, java.text.SimpleDateFormat, java.util.Calendar" %>

<% 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar cal = Calendar.getInstance();
 	cal.add(Calendar.MONTH, 1);
%>
 						
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<!-- import cdn -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

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
   		#nextValue{
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
   		
   		#alertRedTxt{
   			display: inline-block;
   	 		color: orangered;
   	 		visibility : hidden;
   	 		font-size : 18px;
   		}
    		
    </style>
</head>
<body>
    <!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
   
    <!-- <div id ="nav_back" data-stellar-background-ratio="0.5">
    </div>  -->
    
    <!-- 정기후원대상자 정보 -->
    <c:set var = "takeM" value = "${ takeMember }"></c:set>
    <!-- 후원자(로그인한 나눔두리) -->
    <c:set var = "giveM" value = "${ sessionScope.loginUser2 }"></c:set>
    
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
    					${takeM.mNickName }
    					(${ takeM.mAddress })
    					</td>
    				</tr>
    				<tr>
    					<th class = "txtColor_o">나눔두리</th>
    					<td class = "txtColor_o txtBold">${ giveM.mName }</td>
    				</tr>
    				<tr>
    					<th>후원금 사용 타입</th>
    					<td><span style ="color : gray; font-weight : 400;">${ valueType }</span></td>
    				</tr>
    				<tr>
    					<th>후원금액</th>
    					<td><input class="form-control" type = "text" name = "point" id = "sponPoint">원 &nbsp;&nbsp;&nbsp;<div id = "alertRedTxt"><i class="exclamation circle small icon"></i>10,000원 이상의 금액을 입력해주세요.</div>
    						<br>
    						<div class = "txtInfo disInline"><div class = "txtColor_g disInline">최소 10,000원 이상</div> 후원할 수 있으며<div class = "txtColor_g disInline">후원 시작일</div>로부터 한달 간격으로 <div class = "txtColor_g disInline">정기결제</div>가 진행됩니다.</div>
    					</td>
    				</tr>
    				<tr>
    					<th>후원 기간 </th>
    					<jsp:useBean id="now" class="java.util.Date" />
 						<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일" var="now" />
 						
    					<td>${ now } ~ 
    						<br>
    						<div class ="txtInfo">정기 후원은 따로 후원 중지를 신청하지 않을 경우, 나눔두리의 후원 상태 종료 시 자동 종료됩니다.</div>
    					</td>
    				</tr>
    				<tr>
    					<th>다음 후원일 </th>
    					<td>
    					<%-- <jsp:useBean id="next" class="java.util.Date" />
 						<fmt:formatDate value="${next}" type = "DATE" pattern="yyyy년 MM월 dd일" var="next" />
 						<c:set var = "next" value = "<%= new Date(new Date().getTime()+30*60*60*24*1000) %>"/> --%>
 						
 						<c:set var = "next" value = "<%= sdf.format(cal.getTime())%>"/> 
    					<div> ${next} </div>
    					<div class ="txtInfo">( 매월 둘째 주 월요일 )</div>
    					</td>
    				</tr>
    			</table>
    		</div>
    		
    		<div id = "bar1"></div>
    		
    		<div id = "totaldiv">
    			<div> 
    				<input type ="checkbox" id= "chkinfo1"><label for = "chkinfo1">정기결제 약관동의 </label> 
	    			<a id = "seeTerms">전문보기 </a> <br>
	    			<input type ="checkbox" id= "chkinfo2"><label for = "chkinfo2">정기결제 수수료 약관동의</label> <br>
	    			<a>둘이두리에서는 포인트 결제 시 후원 수수료와 카드 수수료를 부과합니다. 
					다만 정기결제 시에는 카드 수수료만 부과되며 둘이두리의 이윤목적과는 무관함을 알려드립니다.</a>
    			</div>
    		
    			<div id = "totalBox">
	    			<div align = "right">
	    				<div id = "txtSponValue">후원 금액 </div> <div id = "sponValue">0 </div> <div class = "txtWon"> 원</div>
	    			</div>
	    			<div id = "bar1"></div>
	    			<div align = "right">
	    				<div id = "txtLeftValue">다음 후원금액 </div> <div id = "nextValue">10000원 </div>
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
  var alertRed = 0;
  $(document).ready(function() {
		/* 후원포인트 금액 변경 시 */
		$("#sponPoint").change(function(){
			calValue();
		}).focusout(function(){
			var sponPoint = $("#sponPoint").val();
			if(sponPoint.length < 5){
				 $('#sponPoint').css('border', '1px solid red').focus();
				 $("#alertRedTxt").css("visibility", "visible");
				 alertRed = 1;
			}else {
				alertRed = 0;
				 $('#sponPoint').css('border', '1px solid lightgray');
				 $("#alertRedTxt").css("visibility", "hidden");
			}
		});
		
		var IMP = window.IMP;
		IMP.init('imp35475580'); 
		
	});
 	 var jb = jQuery.noConflict();
 	 
	/* 후원포인트, 잔여포인트 계산 및 표시 */
	function calValue(){
		var sPoint = $("#sponPoint").val();
		$("#sponValue").text(sPoint);
		$("#leftValue").text(sPoint + "원");
	}
	
	/* 약관 팝업창 보여주기 */
	$("#seeTerms").click(function(){
		alert("약관보여주기 ");
	});
	
	/* billing 고유번호 생성 */
	function generateUUID() {
	    var d = new Date().getTime();
	    if(Date.now){
	        d = Date.now(); //high-precision timer
	    }
	    var uuid = 'xxxxxx'.replace(/[xy]/g, function(c) {
	        var r = (d + Math.random()*16)%16 | 0;
	        d = Math.floor(d/16);
	        return (c=='x' ? r : (r&0x3|0x8)).toString(16);
	    });
	    return uuid;
	};
	
	/* 후원하기 버튼 클릭 시  */
	$("#btnSpon").click(function(){
		var leftValue = $("#leftValue").text();
		var randomUid = generateUUID();
		
		leftValue = leftValue.substring(0, leftValue.length-1);
		if(leftValue < 0){
			alert("포인트가 부족합니다. 충전해주세요. ");
		}else if(!$("#chkinfo1").is(":checked")){
			alert("정기결제 약관에 동의해주세요.");
		}else if(!$("#chkinfo2").is(":checked")){
			alert("수수료 약관에 동의해주세요.");
		}else if(alertRed == 1){
			//alert("10000원 이상부터 정기후원이 가능합니다.");
			$('#sponPoint').css('border', '1px solid red').focus()
		}else {
			var mno = "${ giveM.mno }";
			var name = "${ giveM.mName }";
			var phone = "${ giveM.mPhone }";
			var email = "${ giveM.email }";
			console.log("name : "+ name + "/ phone : "+ phone + "/ email : "+ email);
			// 빌링키 발급과 동시에 결제를 진행하려면 amount 필드에 금액 파라메터를 전달하여 결제창에 결제될 금액이 표시되도록하고 
			// 빌링키 발급과 동시에 /subscribe/payments/again API를 호출하여 결제승인처리를 하면 구매자로하여금 혼선이 없습니다.
			
			// IMP.request_pay(param, callback) 호출
			IMP.request_pay({ // param
			    pg: "html5_inicis",
			    pay_method: "card", // "card"만 지원됩니다 
			    merchant_uid: 'merchant_' + new Date().getTime(), // 빌링키 발급용 주문번호
			    customer_uid: mno + randomUid, // 카드(빌링키)와 1:1로 대응하는 값
			    name: "최초인증결제",
			    amount: 0, // 0 으로 설정하여 빌링키 발급만 진행합니다.
			    buyer_email: email,
			    buyer_name: name,
			    buyer_tel: "010-7630-9011"
			    //buyer_postcode: "01181"
			}, function (rsp) { // callback
			    if (rsp.success) {
			        // 빌링키 발급 성공
			        console.log("빌링키 발급 성공");
			        console.log(rsp);
			        console.log("고유ID : "+ rsp.imp_uid);
			        console.log("상점 거래ID : "+ rsp.merchant_uid);
			        console.log("상점 거래ID : "+ rsp.customer_uid);
			        /* jb.ajax({
				        url: "https://api.iamport.kr/users/getToken",
			            method: "post", // POST method
			            contentType : 'application/json',
			            headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
			            data: {
			                imp_key: "none", // REST API키
			                imp_secret: "none" // REST API Secret
			            }, success:function(data){
			            	console.log(data);
			            	console.log(data.access_token );
			            	
			            }, error:function(data){
							console.log("토큰 값 가져오기 통신실패");
							console.log(data);
						}
			        }); */
			        
			        
			      /*   $.ajax({
			            url: "directFundGetBilling.pm", // 서비스 웹서버
			            //method: "POST",
			            type: "post",
			            //headers: { "Content-Type": "application/json" },
			            data: {
			                customer_uid: mno + randomUid, // 카드(빌링키)와 1:1로 대응하는 값
			            }
			        });  */
			        
			    } else {
			        // 빌링키 발급 실패
			    	console.log("빌링키 발급 실패");
			    	console.log(rsp);
			    }
			}); 
		}
	});
	
	</script>
  
</body>
</html>