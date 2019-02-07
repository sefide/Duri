<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<%@ include file="../common/css.jsp" %>
<%@ include file="../common/navi.jsp" %>
<%@ include file="include/common.jsp" %>
<style>
.head {
	width: 90%;
	margin: 0 auto;
	margin-top: 70px;
}
.QnA-nocie {
	width: 80%;
	margin: 0 auto;
	margin-top: 30px;
	/* border: 2px solid red; */
	position: static;
}

.QnA-list {
	width: 80%;
	margin: 0 auto;
	margin-top: 30px;
	/* border: 2px solid yellow; */
	position: static;
}
#myTitle{
	margin-bottom: 20px;
	font-size:25px;
	color: rgba(250, 143, 61);
	font-weight: bold;	
}	
.nontice{
	font-size:20px;
	color: rgba(250, 143, 61);
	margin-left: 30px;
}
.tableArea {
	width: 95%;
	margin: 0 auto;	
	padding-bottom: 20px;
}

table {
	width: 96%;
	margin: 0 auto;
	color: #434343;
	border-top: 4px solid #FE9D35;
	text-align: center;
	margin-bottom: 10px;
}

th {
	color: rgba(250, 143, 61);
	background: #FFEDBF;
	font-weight: bold;
	font-size: 17px;
}

tr {
	height: 50px;
}

td {
	font-size: 16px;
}
.writeBtn{
	width: auto;
	height : auto;
	background-color : rgba(250, 143, 61);
	color : white;
	font-weight : bold;
	margin-right: 20px;
}
tr:hover{
	background-color : rgb(249, 246, 234);
	cursor: pointer;
}
</style>
</head>
<body>
	<!-- if 로그인이 되어있다면 로그아웃추가..?-->
	<div class="head">
		<hr>		
	</div>
	<!-- QnA 공지사항 -->
	<div class="QnA-nocie">
		<div id="myTitle"><i class="question icon"></i>QnA</div>
		
		<ul>
			<li class="nontice">비방 / 욕설은 삼가 해 주세요.</li>
			<li class="nontice">모든 나눔두리들이 볼 수 있는 공간이니 매너는 필수입니다.</li>
		</ul>		
	</div>
	<!-- QnA 리스트 -->
	<div class="QnA-list">
		<button onclick="location.href='QnAInsert.nanum'" 
			class="ui orange basic button" style="float: right; margin-right: 50px;" >글 작성하기</button>		
		<br><br>
		<div class="tableArea">
				<table>
					<thead>
						<tr >
							<th style="width: 10%;">글번호</th>
							<th style="width: 40%;">제목</th>
							<th style="width: 15%;">작성자</th>
							<th style="width: 15%;">작성일</th>
							<th style="width: 10%;">댓글완료</th>
						</tr>
					</thead>
					<tbody>
						<tr onclick="location.href='QnADetail.nanum'">
							<td>1</td>
							<td>기부금 영수증에대해 궁금해요</td>
							<td>나누미왕</td>
							<td>2019-01-06</td>
							<td>O</td>
						</tr>
						<tr>
							<td>2</td>
							<td>기부금 영수증에대해 궁금해요</td>
							<td>나누미왕</td>
							<td>2019-01-06</td>
							<td>O</td>
						</tr>
						<tr>
							<td>3</td>
							<td>기부금 영수증에대해 궁금해요</td>
							<td>나누미왕</td>
							<td>2019-01-06</td>
							<td>O</td>
						</tr>
						<tr>
							<td>3</td>
							<td>기부금 영수증에대해 궁금해요</td>
							<td>나누미왕</td>
							<td>2019-01-06</td>
							<td>O</td>
						</tr>
						<tr>
							<td>3</td>
							<td>기부금 영수증에대해 궁금해요</td>
							<td>나누미왕</td>
							<td>2019-01-06</td>
							<td>O</td>
						</tr>
						<tr>
							<td>3</td>
							<td>기부금 영수증에대해 궁금해요</td>
							<td>나누미왕</td>
							<td>2019-01-06</td>
							<td>O</td>
						</tr>
						<tr>
							<td>3</td>
							<td>기부금 영수증에대해 궁금해요</td>
							<td>나누미왕</td>
							<td>2019-01-06</td>
							<td>O</td>
						</tr>
					</tbody>
				</table>
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>	
	</div>
	
	
</body>
</html>