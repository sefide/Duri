<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="6";
%>
<%@ include file="include/common.jsp" %>

<title>나의 문의내역</title>
<!-- Q&A -->
</head>
<body>


<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<div id="subvisual">마이페이지</div>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
	 
		<%@ include file="include/tabMypage.jsp" %>

		<div style="float: left;"><h1>> TO.둘이두리님 궁금해요</h1></div>
		<div style="float: left;">
			<h4 style="font-weight: 600">답변완료
			<img src="/duri/resources/HappyMyPage/images/status/ing.PNG" width="26px" height="25px" alt="답변완료">&nbsp;&nbsp;
			답변 중
			<img src="/duri/resources/HappyMyPage/images/status/wating.PNG" width="23px" height="24px" alt="답변 중">&nbsp;&nbsp;
			
			</h4>
		</div>
		<br>
		
		<table class="boardList mt30">
			<caption>문의내역 리스트입니다.</caption>
			<colgroup>
				<col style="width:6%;"><!-- No -->
				<col style="width:17%;"><!--  -->
				<col style="width:35%;"><!--  -->
				<col style="width:15%;"><!--  -->
				<col style="width:10%;"><!--  -->
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">제목</th>
				<th scope="col">내용</th>
				<th scope="col">답변상태</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>증빙서류를 기간 내에 내지 못했어요</td>
				<td>안녕하세요! 증빙서류를 제 기간 내에 내지 못했습니다</td>
				<td><img src="/duri/resources/HappyMyPage/images/status/ing.PNG" width="25px" height="25px" alt="답변완료"></td>
			</tr>
			<tr>
				<td>2</td>
				<td>동생도 같이 후원 받을 수 있나요?</td>
				<td>동생이 올 해에 11살이 되었습니다. 동생도 저와 같이 후원을 받을 수 있을까요?</td>
				<td><img src="/duri/resources/HappyMyPage/images/status/wating.PNG" width="25px" height="25px" alt="답변 중"></td>
			</tr>
			</tbody>
		</table>

		<div class="numbox pt40 pb50"> 
			<span><a class="num" href="#">&lt;</a></span>
			<span><a class="num on" href="#">1</a></span>
			<span><a class="num" href="#">2</a></span>
			<span><a class="num" href="#">3</a></span>
			<span><a class="num" href="#">4</a></span>
			<span><a class="num" href="#">5</a></span>
			<span><a class="num" href="#">6</a></span>
			<span><a class="num" href="#">7</a></span>
			<span><a class="num" href="#">8</a></span>
			<span><a class="num" href="#">9</a></span>
			<span><a class="num" href="#">&gt;</a></span>
		</div>
		<br><br><br>
		
		
		
		
	</div>


	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %>
 --%>

</div><!--// Wrap E-->


<%@ include file="include/myNav.jsp" %>

</body>
</html>