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
                        <div class="panel-heading">
                             	행복두리 Q&A 목록
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>답변 상태</th>
                                            <th>제목</th>
                                            <th>글쓴이</th>
                                            <th>작성일자</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <tr class="odd gradeX">
                                        	<td class="center">1</td>
                                            <td class="center">미완료</td>
                                            <td class="center">이거 다시 올려도되나여?</td>
                                            <td class="center">han419120</td>
                                            <td class="center">2018/03/11</td>
                                            <td class="center"> <a href="QnADetail.ad" class="btn btn-default btn-sm">답변하러하기</a></td>
                                        </tr>
                                       <tr class="odd gradeX">
                                        	<td class="center">1</td>
                                            <td class="center">완료</td>
                                            <td class="center">이거 다시 올려도되나여?</td>
                                            <td class="center">han419120</td>
                                            <td class="center">2018/03/11</td>
                                            <td class="center"> <a href="QnADetail.ad" class="btn btn-default btn-sm">답변하러하기</a></td>
                                        </tr>
                                       <tr class="odd gradeX">
                                        	<td class="center">1</td>
                                            <td class="center">미완료</td>
                                            <td class="center">이거 다시 올려도되나여?</td>
                                            <td class="center">han419120</td>
                                            <td class="center">2018/03/11</td>
                                            <td class="center"> <a href="QnADetail.ad" class="btn btn-default btn-sm">답변하러하기</a></td>
                                        </tr>
                                      
                                    </tbody>
                                </table>
                            </div>
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
