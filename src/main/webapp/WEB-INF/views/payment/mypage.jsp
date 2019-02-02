<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="1";
%>
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<script src="semantic/dist/semantic.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">



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
	color: rgb(50, 147, 63);
	font-weight: bold;
	
}	
.tableArea{
	width : 100%;
	margin : 0 auto;
	padding-top: 50px;
	padding-bottom: 20px;
	margin-left: 20px;
	margin-right: 20px;  
}
	table {
		width : 96%;
		margin : 0 auto;
		color : #434343;
		border-top : 4px solid #FE9D35;
		text-align:center;	
	}
	th{	
			
		color :  rgba(250, 143, 61);
		background : rgba(200,200,200,0.5);
		font-weight: bold;
		font-size: 17px;
	}
	tr{
		height : 60px;
	}
	td{
		font-size: 20px;
	}
	.categotyBtn{
		width: 80px;
		height: 30px;
		text-align: center;
		display: table-cell;
        vertical-align: middle;
		background-color: black;
		color: white;
		
		padding-left: 10px;
		padding-right: 10px;
		
	}
	
</style>
</head>
<body>
<%@ include file="../../common/navi.jsp" %>
<%@ include file="../include/header.jsp" %>
<!-- #wrap {position:relative; width:100%;} -->
	<div id="wrap">		
			<div class="contBox inner">
				<%@ include file="../include/tabMypage.jsp"%>

			<div class="tableArea">
				<div id="myTitle">진행중인 크라우드 펀딩</div>
				<div style="padding-left: 30px;">
				<div class="categotyBtn" onclick="#">금액</div>
				<div class="categotyBtn" onclick="#">물품</div>
				</div>
				<table>
					<thead>
						<tr>
							<th style="width: 45%;">제목</th>
							<th style="width: 15%;">진행현황</th>
							<th style="width: 30%;">내가 후원한 호인트</th>
							<th style="width: 15%;">100%달성여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>굶어서 영양실조에 걸린 제 동생을 도와주세요</td>
							<td>80%</td>
							<td>20,000원</td>
							<td>X</td>
						</tr>
						<tr>
							<td>학교에 가고 싶어요</td>
							<td>70%</td>
							<td>50,000원</td>
							<td>X</td>
						</tr>
						<tr>
							<td>추운겨울 월세를 못내서,,,</td>
							<td>100%</td>
							<td>40,000원</td>
							<td>O</td>
						</tr>
					</tbody>
				</table>
			</div>

			<div class="tableArea">
				<div id="myTitle">종료된 크라우드 펀딩</div>
				<table>
					<thead>
						<tr>
							<th style="width: 45%;">제목</th>
							<th style="width: 15%;">진행현황</th>
							<th style="width: 30%;">내가 후원한 호인트</th>
							<th style="width: 15%;">100%달성여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>밀린 월세를 도와주세요</td>
							<td>77%</td>
							<td>10,000원</td>
							<td>X</td>
						</tr>
						<tr>
							<td>계속해서 공부를 하고싶어요</td>
							<td>100%</td>
							<td>40,000원</td>
							<td>O</td>
						</tr>
						<tr>
							<td>제 동생의 간 수술비를 도와주세요</td>
							<td>100%</td>
							<td>20,000원</td>
							<td>O</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>								
	</div>		
			
			
	

	<%@ include file="../include/myNav.jsp" %>

</body>
</html>