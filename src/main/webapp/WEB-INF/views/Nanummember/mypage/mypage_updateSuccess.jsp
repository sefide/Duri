<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String bigtabon = "1";
%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- semantic ui -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/common.jsp"%>
<title>나눔두리 마이페이지</title>
<%@ include file="../../common/css.jsp"%>
<style>
.mb50 {
	margin-bottom: 0px !important;
}

#myTitle {
	margin-bottom: 20px;
	font-size: 25px;
	color: rgba(250, 143, 61);
	font-weight: bold;
}

.tableArea {
	width: 95%;
	margin: 0 auto;
	padding-top: 50px;
	padding-bottom: 20px;
	/* 	margin-left: 20px;
	margin-right: 20px;   */
}

#nav_back {
	background: #FFBB50;
	height: 83px;
	box-shadow: 0 0 6px 0 #B8B8B8;
}

.txtColor_o {
	color: #FE9D35;
}

.txtBold {
	font-weight: 700;
}

#msgHappy {
	font-size: 24px;
	font-weight: 500;
	margin: 18px 0;
}

#msg {
	font-size: 36px;
	font-weight: 700;
}

#msgBox {
	width: 94%;
	padding: 6%;
	border: 1px solid #fa8f3d;
}

#seePointHistory {
	margin-top: 22px;
	text-decoration: underline;
	font-size: 20px;
	cursor: pointer;
}
</style>
</head>
<body>
	<%@ include file="../../common/navi.jsp"%>
	<%@ include file="../include/header.jsp"%>
	<br><br><br><br>
	<div class="contBox inner">
		<%@ include file="../include/tabMypage.jsp"%>
		<div class="tableArea" id="" style="display: block;">
			<div id="myTitle">
				<i class="hourglass half icon"></i>회원정보수정
			</div>
		</div>
		<section class="ftco-section" style="padding: 0em 0;">
			<div class="container">
				<div align="center">
					<!-- <img src="resources/common/images/nanum_logo.png" width="300px;"
						alt="duri_logo"> -->
					<div id="msgHappy">회원 정보 <b style="color: #fa8f3d">수정</b>을 성공하였습니다.</div>
					<div id="msgBox" style="font-size: 20px;">														  
						   <button class="ui orange button" style="color: white !important ;" onclick="goDetail();">되돌아가기</button> 	   					
					</div>
				</div>
			</div>
		</section>
	</div>	
	<%@ include file="../include/myNav.jsp"%>
	<script>
		function goDetail() {					
			location.href="updateInfo.nanum";
		}
	</script>
</body>
</html>