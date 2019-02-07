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
	width: 80%;
	margin: 0 auto;
	margin-top: 70px;
}
.QnA-nocie {
	width: 70%;
	margin: 0 auto;
	margin-top: 30px;
	position: static;
}

.QnA-list {
	width: 70%;
	margin: 0 auto;
	margin-top: 30px;
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

.listTable{
	width: 96%;
	margin: 0 auto;
	color: #434343;
	border-top: 4px solid #FE9D35;
	margin-bottom: 10px;
}
.answerTable{
	width: 96%;
	margin: 0 auto;
	color: #434343;
	border-top: 8px solid #FE9D35;
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
.tableTitle{
	border-bottom-color: rgba(250, 143, 61);
	color: rgba(250, 143, 61);
	font-weight: bold;
}
.writeBtn{
	width: auto;
	height : auto;
	background-color : rgba(250, 143, 61);
	color : white;
	font-weight : bold;
	margin-right: 20px;
}
</style>
</head>
<body>
	
	<div class="head">
		<hr>		
	</div>
	
	<!-- QnA 내용 -->
	<div class="QnA-nocie">
		<div id="myTitle"><i class="question icon"></i>QnA 상세보기</div>
	</div>
	<div class="QnA-list">
		<table class="listTable">
			<tr>
				<td class="tableTitle">제목</td>
				<td colspan="3" style="">기부금 영수증에 대해 궁금해요</td>
			</tr>
			<tr>
				<td class="tableTitle">작성자</td>
				<td>뭉뭉</td>
				<td class="tableTitle">작성일</td>
				<td>2019-02-05</td>
			</tr>
			<tr>
				<td class="tableTitle">내용</td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="8" cols="150">내용입니다올ㄴㅇㄹ망;ㅏㄹ;ㅁ은;ㅁㄹ으;ㅁ</textarea> </td>
			</tr>			
		</table>
	</div>
	<!-- 댓글 내용 -->
	<div class="QnA-nocie">
		<div id="myTitle" style="margin-bottom: 0px;"><i class="lightbulb outline icon"></i>두리두리 답변</div>
	</div>
	<div class="QnA-list">
		<table class="answerTable">
			<tr>
				<td class="tableTitle">두리두리 답변</td>
			</tr>
			<tr>
				<td>기부금영수증이란 ~~~ 입니다.</td>
			</tr>
		</table>
	</div>
	
	<div align="center" style="margin-top: 80px;"> 
	<button onclick="location.href='QnAList.nanum'"  
		class="ui orange basic button"  style="font-size: 20px; margin-right : 10px;">목록으로 되돌아가기</button>
	<button 
		class="ui orange basic button" style="font-size: 20px; margin-left : 10px;">삭제하기</button>
	</div>
	
</body>
</html>