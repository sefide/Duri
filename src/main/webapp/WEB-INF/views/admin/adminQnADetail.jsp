<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>행복두리 1:1답변 페이지</title>
	 <jsp:include page="include/adminStyle.jsp"/>
	 <style>
.head {
	width: 80%;
	
	margin-top: 20px;
}
.QnA-nocie {
	width: 100%;
	
	margin-top: 30px;
	position: relative;
}

.QnA-list {
	width: 100%;

	margin-top: 30px;
	position: relative;
}
#myTitle{
	margin-bottom: 20px;
	font-size:25px;
	color: #474a70;
	font-weight: bold;	
}
	


.listTable{
	width: 100%;
	
	color: #434343;
	border-top: 4px solid #999aa3;
	margin-bottom: 10px;
}
.answerTable{
	width: 100%;
	position: relative;
	color: #434343;
	border-top: 4px solid #999aa3;
	margin-bottom: 10px;
}

th {
	color: #474a70;
	background: #FFEDBF;
	font-weight: bold;
	font-size: 17px;
}

tr {
	height: 50px;
}

td {
	font-size: 16px;
	text-align: center;
}
.tableTitle{
	
	border-bottom-color: #474a70;
	color: #474a70;
	font-weight: bold;
}

</style>
	 
</head>
<body>
   
   <jsp:include page="include/adminNavi.jsp"/>
  
        
   
        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            행복두리 1:1 문의 답변
                        </h1>
						
									
		</div>
		<div id="page-inner"> 
		           <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                            <div class="head">
		
	</div>
	
	<!-- QnA 내용 -->
	<div class="QnA-nocie">
		<div id="myTitle">문의 사항</div>
	</div>
	<div class="QnA-list">
		<table class="listTable">
			
			<tr>
				
				<td id="Num" style="display: none;">${adminQnADetail.qNo}</td>
				<td class="tableTitle">제목</td>
				<td>${adminQnADetail.qTitle}</td>
				<td class="tableTitle">작성자</td>
				<td>${adminQnADetail.mName}(${adminQnADetail.mid})</td>
				<td class="tableTitle">작성일</td>
				<td>${adminQnADetail.qDate}</td>
			</tr>
			</table>	
			<table class="listTable">
			<tr>
				<td class="tableTitle"></td>
			</tr>
			<tr></tr>
			<tr>
				<td colspan="4">${adminQnADetail.qContent}</td>
			</tr>			
	</table>

		<br><br><br><br>
	</div>
	<!-- 댓글 내용 -->
	<div class="QnA-nocie">
		<div id="myTitle" style="margin-bottom: 0px;">두리두리 답변</div>
	</div>
	
		<c:if test="${adminQnADetail.qAnswer ==null}">
			<div class="QnA-list">
				<table class="answerTable">
					<tr>
						<td class="tableTitle"></td>
					</tr>
					<tr>
						<td><textarea style="width: 100%; height: 150px;" id="Answer"></textarea> </td>
					</tr>
				</table>
			</div>
		</c:if>
		<c:if test="${adminQnADetail.qAnswer !=null}">
			<div class="QnA-list">
				<table class="answerTable">
					<tr>
						<td class="tableTitle"></td>
					</tr>
					<tr>
						<td>${adminQnADetail.qAnswer}</td>
					</tr>
				</table>
			</div>
		</c:if>
	
	<div align="center" style="margin-top: 80px;"> 
	<c:if test="${adminQnADetail.qAnswer ==null}">
	<button type="button" class="btn btn-primary btn-lg AnswerEnroll">답변등록</button>
	</c:if>
	<button type="button" class="btn btn-secondary btn-lg" onclick="location.href='adminQnA.ad'">목록으로 돌아가기</button>
	</div>
	<br><br><br>

                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
                <!-- /. ROW  -->
		</div>
		</div>
		
           		<jsp:include page="include/admintableFooter.jsp"/>
      <script type="text/javascript">
      $(".AnswerEnroll").click(function () {
		var answer = $("#Answer").val();
		var num = $("#Num").text();
		location.href="adminAnswer.ad?answer="+answer+"&num="+num;
	});
      
      
      </script>
   
</body>
</html>
