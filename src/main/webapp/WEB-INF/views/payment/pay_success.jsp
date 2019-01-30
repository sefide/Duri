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
    		
    		.txtColor_o{
    			color : #FE9D35;
    		}
    		.txtBold{
    			font-weight : 700;
    		}
    		
    		#msgHappy{
    			font-size : 24px;
    			font-weight : 500;
    			margin: 18px 0;
    		}
    		
    		#msg{
    			font-size : 36px;
    			font-weight : 700;
    		}
    		#msgBox{
    			width : 94%;
    			padding : 6%;
    			border : 1px solid #B8B8B8;
    		}
    		
    		#seePointHistory{
    			margin-top : 22px;
    			text-decoration : underline;
    			font-size : 20px;
    			cursor : pointer;
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
    		<div align = "center">
    			<img src = "../../resources/images/duri_logo.png" width = "300px;" alt= "duri_logo">
    			<div id = "msgHappy">" 나눔두리의 소중한 마음으로 놀라운 변화가 일어납니다. "</div>
    			
    			<div id = "msgBox">
    				<div class = "txtColor_o txtBold" id = "msg">후원이 완료되었습니다. </div>
    				<div id = "seePointHistory"><a>후원내역 보러가기 </a></div>
    			
    			</div>
    		</div>
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