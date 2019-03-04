<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="3";
%>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/common.jsp" %>
<title> 나눔두리 마이페이지 - 행복두리 편지 상세</title>
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
}
	table {		
		margin : 0 auto;
		color : #434343;
		border-top : 4px solid #FE9D35 !important; 
		border-bottom : 4px solid #FE9D35 !important; 
		text-align:center;	
		margin-bottom: 10px;
		border-color: rgba(200,200,200,0.5);
		border: 2px;
	}
	th{						
		background : rgba(200,200,200,0.5);
		font-weight: bold; 
	}
	tr{
		height : 60px;
	}
	tr, td, th {
		text-align : center;
	}
	p {
    margin: 0 0 1em;
    line-height: 1.4285em;
	}
	#bar1 {
    width: 98%;
    margin: 0% auto;
    border-bottom: 1px solid #B8B8B8;
    height: 10px;
    margin-top: 15px;
	}
	#back-btn{
		background: #FE9D35;
		width : 320px;
		height : 50px;
		border-radius : 5px;
		text-align : center;
		padding-top : 8px;
		cursor : pointer;
		margin: auto;		
	}
</style>
</head>
<body>
<%@ include file="../../common/navi.jsp" %>
<%@ include file="../include/header.jsp" %>
<br><br><br><br>
		<div class="contBox inner">
				<%@ include file="../include/tabMypage.jsp"%>
			<br>
			<div class="tableArea">
				<c:forEach items="${letterDetailList}" var="letterDetailList">
				<div id="myTitle"><i class="envelope icon"></i></i> '<c:out value="${letterDetailList.mNick}"/>'행복두리의  편지</div>
				<p> 행복두리가 정성스럽게 작성한 소중한 편지입니다.<br>
				편지를 통해 행복두리와의 유대감을 느껴보세요.
				</p>
				<br>
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
			
			
			<div id = "back-btn" style=" ">
				<a onclick="location.href='mypageLetter.nanum'" style="font-size: 20px;">목록으로 돌아가기</a>
	    	</div>
			
			

			
		</div>	

			
			
	

	<%@ include file="../include/myNav.jsp" %>

</body>
</html>