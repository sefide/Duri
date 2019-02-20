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
    			<img src = "resources/common/images/nanum_logo.png" width = "300px;" alt= "duri_logo">
    			<div id = "msgHappy">" 나눔두리의 소중한 마음으로 놀라운 변화가 일어납니다. "</div>
    			
    			<div id = "msgBox">
    				<div class = "txtColor_o txtBold" id = "msg">${ msg } </div>
    				<div id = "seePointHistory"><a href = "mypage.nanum">마이페이지 가기 </a></div>
    			
    			</div>
    		</div>
    	</div>
    </section>
   <!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   <jsp:include page="../common/loader.jsp"></jsp:include>
  <script>

	</script>
  
</body>
</html>