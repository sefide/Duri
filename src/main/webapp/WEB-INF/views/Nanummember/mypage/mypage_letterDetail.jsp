<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="3";
%>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	width : 95%;
	margin : 0 auto;
	padding-top: 50px;
	padding-bottom: 20px;
/* 	margin-left: 20px;
	margin-right: 20px;   */
}
	table {
		width : 96%;
		margin : 0 auto;
		color : #434343;
		border-top : 4px solid #FE9D35; 
		border-bottom : 4px solid #FE9D35; 
		text-align:center;	
		margin-bottom: 10px;
	}
	th{				
		color :  rgba(250, 143, 61);
		background : #FFEDBF;
		font-weight: bold;
		font-size: 17px;
	}
	tr{
		height : 50px;
	}
	td{
		font-size: 16px;
	}
</style>
</head>
<body>
<%@ include file="../../common/navi.jsp" %>
<%@ include file="../include/header.jsp" %>
<br><br><br><br>
		<div class="contBox inner">
				<%@ include file="../include/tabMypage.jsp"%>
			
			<div class="tableArea">
				 <c:forEach items="${letterDetailList}" var="letterDetailList">
				<div id="myTitle"><i class="envelope icon"></i></i> '<c:out value="${letterDetailList.mNick}"/>'행복두리의  편지</div>
				<div style="width: 96%; margin: 0 auto;">
				</div>
				<table>				
						<tr>
							<th style="width: 20%;">제목</th>
							<td style="width: 80%; border-bottom: 1px solid #FFEDBF; " colspan="3"><c:out value="${letterDetailList.leTitle}"/></td>
						</tr>	
						<tr>
							<th style="width: 20%;">작성자</th>
							<td style="width: 30%;"><c:out value="${letterDetailList.mNick}"/></td>
							<th style="width: 20%;">작성일</th>
							<td style="width: 30%;"><c:out value="${letterDetailList.leWriteDate}"/></td>
						</tr>
						<tr>
						<th colspan="4">내용</th>										
						</tr>
						<tr>
							<td colspan="4">
								<div style="width: 95%; margin: 0 auto; text-align: left; font-size: 16px;">
									 <c:out value='${letterDetailList.leContent}'/> 
								</div>
							</td>
						</tr>														
				</table>
				</c:forEach>
			</div>
			
			<center> 
			<button onclick="location.href='mypageLetter.nanum'" class="ui orange basic button" style="font-size: 18px;">목록으로 되돌아가기</button>
			</center>

			
		</div>	

			
			
	

	<%@ include file="../include/myNav.jsp" %>

</body>
</html>