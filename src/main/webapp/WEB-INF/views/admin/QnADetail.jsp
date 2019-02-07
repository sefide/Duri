<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>Bootstrap HTML5 Admin Template : Master - WebThemez</title>
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
                            행복두리 1:1 문의 게시판
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
				<td class="tableTitle">제목</td>
				<td>뭉뭉</td>
				<td class="tableTitle">작성자</td>
				<td>뭉뭉</td>
				<td class="tableTitle">작성일</td>
				<td>2019-02-05</td>
			</tr>
			<tr>
				<td class="tableTitle">내용</td>
			</tr>
			<tr>
				<td colspan="4">내용내용앵아ㅣ러ㅏㄴㅇ머닠ㅇㄹ</td>
			</tr>			
		</table>
		<br><br><br><br>
	</div>
	<!-- 댓글 내용 -->
	<div class="QnA-nocie">
		<div id="myTitle" style="margin-bottom: 0px;">두리두리 답변</div>
	</div>
	<div class="QnA-list">
		<table class="answerTable">
			<tr>
				<td class="tableTitle"></td>
			</tr>
			<tr>
				<td><textarea style="width: 100%; height: 150px;">답변이다아ㅏ아</textarea> </td>
			</tr>
		</table>
	</div>
	
	<div align="center" style="margin-top: 80px;"> 
	<button type="button" class="btn btn-primary btn-lg">답변등록</button>
	<button type="button" class="btn btn-secondary btn-lg">목록으로 돌아가기</button>
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
   
</body>
</html>
