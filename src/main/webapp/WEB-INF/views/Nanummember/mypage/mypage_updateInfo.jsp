<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<%@ include file="../include/common.jsp" %>
<title> 나눔두리 마이페이지</title>
<%@ include file="../../common/css.jsp" %>
<style>
.mb50 {
     margin-bottom: 0px !important; 
}
#myTitle{
	margin-bottom: 20px;
	font-size:25px;
	color: rgba(250, 143, 61);
	font-weight: bold;	
}	
.tableArea{
	width : 100%;
	margin : 0 auto;
	padding-top: 50px;
	padding-bottom: 20px;

}
</style>
</head>
<body>
<%@ include file="../../common/navi.jsp" %>
<%@ include file="../include/header.jsp" %>
<!-- #wrap {position:relative; width:100%;} -->
		<br><br><br><br>
			<div class="contBox inner">


			<div class="tableArea" style="margin-top: 100px;">
				<div id="myTitle"> <i class="hourglass half icon"></i>회원정보수정</div>
				
				<div class="form-panel two">
    <div class="form-header">
      <h1>Join Member</h1>
    </div>
    <div class="form-content">
      <form id="joinForm" action="<%=request.getContextPath()%>/insertMember.me" method="post">
		<table class="boardWrite wth700 mr_auto mt30"><!-- boardWrite S-->
			<colgroup>
				<col style="width:30%;">
				<col style="width:%;">
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">아이디</th>
				<td>
					
					<input id="SId" name="userId" type="text">
				</td>
				
				<td>
					<span>
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" > 중복확인</a>
						<span id="idCheckMsg"></span>
					</span>
				</td>

			</tr>

			<tr>
				<th scope="row">비밀번호</th>
				<td>
					<input id="SPwd" name="userPwd" type="password"> 
					<span id="pwdCheckMsg"></span>
				</td>

			</tr>
			<tr>
				<th scope="row">비밀번호 확인</th>
				<td>
					<input id="SPwd2" type="password"> 
				</td>
		
			</tr>
			<tr>
				<th scope="row">이름</th>
				<td>
					<label for=""></label>
					<input id="SName" name="userName" type="text"> 
				</td>
				<td align="center">
					<b>닉네임</b>
				</td>
				<td>
					<label for=""></label>
					<input id="nickName" name="nickName" type="text"> 
				</td>
			</tr>
			<!-- <tr>
				<th scope="row">닉네임</th>
				<td>
					
				</td>
			</tr> -->
			
			<tr>
				<th scope="row">휴대폰번호</th>
				<td>
					<span>
						<input id="Sphone" name="phone" type="text" placeholder="-없이 입력">
					</span>
				 </td>
			</tr>
			<tr>
				<th scope="row">이메일</th>
				<td>
					<input id="Semail1" name="email1" class="wth100" type="text">
				</td>

				<td>
					<input id="Semail2" name="email2" class="wth100" type="text">
				</td>
				<td>
			</tr>
			
			
			<tr>
			<td></td>
				<td>
					<select id="email">
							<option value="self" selected>직접입력</option>
							<option value="naver">naver.com</option>
							<option value="daum">daum.net</option>
							<option value="google">google.com</option>
					</select>
				</td>
				<td>
					<span>
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" >인증번호발송</a>
						<span id="idCheckMsg"></span>
					</span>
				</td>
			</tr>
			<tr>
					
					<%!
						public int getRandom(){
							int randomCode=0;
							randomCode = (int)Math.floor((Math.random()*99999-10000+1))+10000;
							return randomCode;
						}
					%>
				<td>
					<input type="hidden" value="<%=getRandom()%>" id="randomCode">
				</td>
				<td>	
						<input id="authCode" type="text" placeholder="인증번호를 입력하세요">
				</td>
				<td>
						<span>
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" >인증하기</a>
						<span id="idCheckMsg"></span>
					</span>

				</td>
			</tr>
			

			<tr>
				<th scope="row">주소</th>
				<td>
					<input id="address" name="address" class="wth100" type="text">
				</td>
				<td>
					<span>
						&nbsp;&nbsp;<a id="idCheckBtn" class="btn btn-primary" >주소검색</a>
					<span id="idCheckMsg"></span>
					</span>
				</td>
			</tr>
			<tr>
				<td></td>
				<td colspan="3">
					<input id="address" name="address" class="wth100" type="text" placeholder="상세주소를 입력해주세요">
				</td>
				
			</tr>
			


			<tr>
				<th scope="row">계좌번호</th>
				<td>
					은행명  <select name="bankcode" id="bankcode">
							<option value="004">국민은행</option>
							<option value="003">기업은행</option>
							<option value="088">신한은행</option>
							<option value="011">농협</option>
							<option value="020">우리은행</option>
						</select>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<input type="text" size="25" placeholder="'-'를 제외하고 입력" name="accnum" id="accnum"><br>
				
				</td>
				<td>

						&nbsp;<a id="idCheckBtn" class="btn btn-primary" >계좌인증</a>

					
				</td>
				<td><img id="accountCheckImg" class="checkTest" src=""></td>
			</tr>
			
			<tr>
				<th scope="row" >주민등록번호</th>
				<td>
					<input type="text" size="25" name="birth" id="birth" maxlength="6">
				</td>
				<td>
					<input type="text" size="25" name="birth" id="birth" maxlength="1">
				</td>
				<td>******</td>
			</tr>
			
			<tr>
				<th scope="row">증빙서류 제출</th>
				<td>
					서류유형  <select name="bankcode" id="bankcode">
							<option value="004">기초생활수급자</option>
							<option value="003">소년소녀가장</option>
							<option value="088">한부모가정</option>
						</select>
			</tr>
			<tr>
				<td></td>
				<td colspan="2">
					<input type="file" size="25"  name="accnum" id="accnum"><br>
				
				</td>

			</tr>
			
			
			</tbody>
			</table>
			
		
			<!-- <div id="fileArea">
				<input type="file" id="IdCardImg" name="IdCardImg" onchange="loadImg(this, 1)">
				<input type="file" id="faceImg" name="faceImg" onchange="loadImg(this, 2)">
			</div> -->

		<div class="form-group">
          <button type="submit">Register</button>
        </div>
		</div>
		</form>
    </div>
				
				
				
				
				
			</div>

			
		</div>								
	
			
			
	

	<%@ include file="../include/myNav.jsp" %>

</body>
</html>