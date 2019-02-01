<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="7";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
	a {color: #333;}
	#button {text-align: center;}
	#proofDocument {margin:auto; width: 60%; height: 750px; background: lightgray; text-align: center;}
	/* .textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;} */
</style>

<title>회원정보수정</title>
<!-- 증빙서류 -->
</head>
<body>


<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<div id="subvisual"></div>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
	 
		<%@ include file="include/tabMypage.jsp" %>

		<div style="float: left;" class="ptag"><h1><i class="chevron right icon"></i>내가 올린 증빙서류</h1></div>
		<div style="float: left;">
			<h4 style="font-weight: 600">
				승인완료&nbsp;<i class="green circle icon" alt="승인완료"></i>&nbsp;&nbsp;
				반려&nbsp;<i class="red circle icon" alt="반려"></i>
			</h4>
		</div>
		<br>
		
		<table class="boardList mt30">
			<caption>문의내역 리스트입니다.</caption>
			<colgroup>
				<col style="width:6%;"><!-- No -->
				<col style="width:17%;"><!--  -->
				<col style="width:17%;"><!--  -->
				<col style="width:14%;"><!--  -->
				<col style="width:17%;"><!--  -->
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">증빙서류 제출일</th>
				<th scope="col">증빙서류 제출 마감일</th>
				<th scope="col">승인상태</th>
				<th scope="col">승인 or 반려된 날짜</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>2018.04.22</td>
				<td>2018.10.22</td>
				<td><i class="green circle icon" alt="승인완료"></i></td> 	
				<td>2018.10.11</td>
			</tr>
			<tr>
				<td>2</td>
				<td>2018.07.12</td>
				<td>2019.01.12</td>
				<td><i class="red circle icon" alt="반려"></i></td> 	
				<td>2019.01.02</td>
			</tr>
			<tr>
				<td>3</td>
				<td>2018.10.11</td>
				<td>2019.04.11</td>
				<td><i class="green circle icon" alt="승인완료"></i></td> 	
				<td>2018.04.11</td>
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
		<br><br><br><br>
		
		<div id="proofDocument"><h1>증빙서류 예시</h1></div>
		

		
	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->


<%@ include file="include/myNav.jsp" %>

</body>
</html>