<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- semantic ui -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


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
	width: 100%;
	margin: 0 auto;
	padding-top: 50px;
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<%@ include file="../../common/navi.jsp"%>
	<%@ include file="../include/header.jsp"%>
	<!-- #wrap {position:relative; width:100%;} -->
	<br>
	<br>
	<br>
	<br>
	<div class="contBox inner">
		<div class="tableArea" style="margin-top: 100px;">
			<div id="myTitle">
				<i class="hourglass half icon"></i>회원정보수정
			</div>
		</div>

		<div class="form-panel two">
			<div class="form-header">
				<h1>Join Member</h1>
			</div>
			<div class="form-content">
				<form id="joinForm" name="sub1" action="joinNanum.me" method="post">
					<table class="boardWrite wth700 mr_auto mt30">
						<!-- boardWrite S-->
						<colgroup>
							<col style="width: 20%;">
							<col style="width: %;">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">*아이디</th>
								<td><input id="mid2" name="mid" type="text" required>
								</td>

								<td><span> &nbsp;&nbsp;<a id="idCheckBtn3"
										onclick="return duplicationCheck();" class="btn btn-primary">
											중복확인</a> <span id="idCheckMsg"></span>
								</span></td>

							</tr>

							<tr>
								<th scope="row">*비밀번호</th>
								<td><input id="mpwd2" name="mpwd" type="password"
									required="required"> <span id="pwdCheckMsg"></span></td>

							</tr>
							<tr>
								<th scope="row">*비밀번호 확인</th>
								<td><input id="mpwd22" type="password" required="required">
								</td>

							</tr>
							<tr>
								<th scope="row">*이름</th>
								<td><label for=""></label> <input id="mName" name=mName
									type="text" required="required"></td>
							</tr>
							<tr>

								<th scope="row">*닉네임</th>

								<td><label for=""></label> <input id="mNickName"
									name="mNickName" type="text" required="required"></td>
							</tr>

							<tr>
								<th scope="row">휴대폰번호</th>
								<td><span> <input id="mPhone" name="mPhone"
										type="text" placeholder="-없이 입력">
								</span></td>
							</tr>
							<tr>
								<th scope="row">*이메일</th>
								<td><input id="mEmail" name="email1" class="wth100"
									type="text" required="required"></td>

								<td><input id="mEmail2" name="email2" class="wth100"
									type="text" required="required"></td>
								<td>
							</tr>


							<tr>
								<td></td>
								<td><select id="email">
										<option value="self" selected>직접입력</option>
										<option value="naver">naver.com</option>
										<option value="daum">daum.net</option>
										<option value="google">google.com</option>
								</select></td>
								<td><span> &nbsp;&nbsp;<a id="sendEmail"
										class="btn btn-primary">인증번호발송</a> <span id="idCheckMsg"></span>
								</span></td>
							</tr>
							<tr>
								<%!
						public int getRandom(){
							int randomCode=0;
							randomCode = (int)Math.floor((Math.random()*99999-10000+1))+10000;
							return randomCode;
						}
					%>
								<td><input type="hidden" value="<%=getRandom()%>"
									id="randomCode"></td>
								<td><input id="check" type="text" placeholder="인증번호를 입력하세요">
								</td>
								<td><span id="check2"> &nbsp;&nbsp;<a
										id="idCheckBtn" class="btn btn-primary">인증하기</a> <span
										id="idCheckMsg"></span>
								</span></td>
							</tr>
							<tr>
								<th scope="row">*주민등록번호</th>
								<td><input type="text" size="25" name="mBirthDay"
									id="mBirthDay" maxlength="6" required="required"></td>
								<td><input type="text" size="25" name="mGender"
									id="mGender" maxlength="1" required="required"></td>
								<td>******</td>
							</tr>


						</tbody>
					</table>

					<input type="button" value="가입하기" id="join" onclick="erchk();">
					<!-- 			
			<div align="center">
				<button type="reset">작성취소</button>
				<button type="submit">가입하기</button>
			</div> -->
				</form>

			</div>
		</div>



	</div>

	<%@ include file="../include/myNav.jsp"%>
</body>
</html>