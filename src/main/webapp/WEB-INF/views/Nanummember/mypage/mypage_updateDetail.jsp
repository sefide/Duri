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
input{
	 width: 400px;
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
					<div id="msgHappy"></div>					
						<table class="ui orange table" style="width: 90%;">
						<tr>
							<th scope="row">아이디</th>
							<td><div class="ui input">${sessionScope.loginUser2.mid }</div></td>						
						</tr>
						
						<tr>
							<th scope="row">닉네임</th>
							<td><div class="ui input"><input id="mNickName" name="mNickName" type="text" required="required" placeholder="${sessionScope.loginUser2.mNickName }"></div></td>
						</tr>
						<tr>
							<th scope="row">비밀번호</th>
							<td><div class="ui input"><input id="mpwd" name="mpwd" type="password" required="required"> <span id="pwdCheckMsg" ></span></div></td>

						</tr>
						<tr>
							<th scope="row">비밀번호 확인</th>
							<td><div class="ui input"><input id="mpwd2" type="password" required="required" ></div>
							</td>

						</tr>
						<tr>
							<th scope="row">휴대폰번호</th>
							<td><div class="ui input"> <input id="mPhone" name="mPhone" type="text" placeholder="${sessionScope.loginUser2.mPhone }  - 없이 입력"></div></td>
						</tr>
					</table>

					
				</div>
			</div>
		</section>
		<br><br><br><br>
		<center><button class="ui orange button" style="color: white !important ;" onclick="goupdate();" >수정하기</button></center>
	</div>	
	<%@ include file="../include/myNav.jsp"%>
	<script>
		function goupdate() {
/* 			var mNick;
			var mPwd;
			var mPwd2;
			var mPhone;		
			if(  ($("#mpwd").val()).equals($("#mpwd2").val())){				
				if($("#mNickName").val()!=""){
					mNcik = mNick;			
				}else{
					mNcik = $("#mNickName").val();	
				}			
				
				if($("#mpwd").val()!="" ){
					mPwd = mpwd;			
				}else{
					mPwd = $("#mpwd").val();	
				}
				
				if($("#mPhone").val()!="" ){
					mPhone = mPhone;			
				}else{
					mPhone = $("#mPhone").val();	
				}				
				alert(mNcik+mPwd+mPhone);
				location.href="updateInfo.nanum?mNick="+mNick+"&mPwd="+mPwd+"&mPhone="+mPhone;				
			}		 */		
			

		}
	</script>
</body>
</html>