<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="3";
%>
<%@ include file="include/common.jsp" %>

<title>배송중 공고목록</title>
<!--  배송현황 -->
</head>
<body>


<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<div id="subvisual">마이페이지</div>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
	 
		<%@ include file="include/tabMypage.jsp" %>
		
		<div style="float: left;"><h1>> 정기 후원</h1></div>
		<div style="float: left; vertical-align: middle;">
			<h5>&nbsp;&nbsp;
			* 배송받을 주소가 변경 되었을 시 반드시 수정해주세요.  내 정보 수정에서도 수정할 수 있습니다.
			</h5>
		</div>
		<br>

		<table class="boardList mt30">
			<caption>전체공고 리스트입니다.</caption>
			<colgroup>
				<col style="width:7%;"><!-- No -->
				<col style="width:20%;"><!--  -->
				<col style="width:10%;"><!--  -->
				<col style="width:15%;"><!--  -->
				<!-- <col style="width:%;">
				<col style="width:%;">
				<col style="width:%;">
				<col style="width:%;"> -->
			</colgroup>
			<thead>
				<tr>
					<th scope="col">No</th>
					<th scope="col">물품명</th>
					<th scope="col">개수</th>
					<th scope="col">배송현황</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>생리대 중형(10개입)</td>
					<td>2</td>
					<td><a class="sbtn gy" href="#">조회하기</a></td>
				</tr>
				<tr>
					<td>2</td>
					<td>칫솔 치약 세트(칫솔1, 치약1)</td>
					<td>3</td>
					<td><a class="sbtn gy" href="#">조회하기</a></td>
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

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->


<%@ include file="include/myNav.jsp" %>

</body>
</html>