<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="8";
%>
<%@ include file="../happymember/include/common.jsp" %>

<title>탈퇴하기</title>
<!-- 탈퇴사유 적는 란(Q&A로 쓸까?) -->

</head>
<body>


<div id="wrap"><!-- Wrap S -->

<%@ include file="../happymember/include/header.jsp" %>

<div id="subvisual"></div>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
	 
		<%@ include file="../happymember/include/tabMypage.jsp" %>

		<table class="boardWrite wth500 mr_auto mt30"><!-- boardWrite S-->
			<caption>회원가입 리스트입니다.</caption>
			<colgroup>
				<col style="width:30%;">
				<col style="width:%;">
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">탈퇴사유</th>
				<td>
					<label for=""></label>
					<select id="" name="" class="input wth200">
						<option selected="selected">선택하세요</option>
						<option value="#">----</option>
						<option value="#">----</option>
						<option value="#">----</option>
					</select> 

				</td>
			</tr>
			<tr>
				<th scope="row">상세내용</th>
				<td>
					<label for=""></label>
					<textarea class="wth90p" cols="24" id="" name=""></textarea>
				</td>
			</tr>
			</tbody>
		</table><!--// boardWrite E-->

		<div class="btnbox mt20"><!-- btnbox S-->
			<span><a class="mbtn gy" href="#">취소</a></span>
			<span><a class="mbtn rd" href="#">탈퇴하기</a></span>
		</div><!--// btnbox E-->

	</div><!--// inner E-->
</div>

<%-- <%@ include file="../happymember/include/footer.jsp" %> --%>


</div><!--// Wrap E-->


<%@ include file="../happymember/include/myNav.jsp" %>

</body>
</html>