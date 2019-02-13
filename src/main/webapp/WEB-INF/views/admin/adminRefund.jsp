<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>행복두리 승인페이지</title>
	 <jsp:include page="include/adminStyle.jsp"/>
	 
</head>
<body>
     <jsp:include page="include/adminNavi.jsp"/>
   
          
        <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                            	행복두리 환불 관리
                        </h1>
		</div>
            <div id="page-inner"> 
            
              
           
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	환급 신청 행복두리 목록	
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                            <th>예금주</th>
                                            <th>신청날짜</th>
                                            <th>계좌번호</th>
                                            <th>환급은행</th>
                                            <th>환급금액</th>
                                            <th>상태</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">한의희</td>
                                            <td class="center">2019/02/01</td>
                                            <td class="center">204-20-512-971</td>
                                            <td class="center">SC제일은행</td>
                                            <td class="center">50,000</td>
                                            <td class="center">환급신청</td>
                                            <td class="center"><a href="#" class="btn btn-warning btn-sm">환급하기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">한의희</td>
                                            <td class="center">2019/02/01</td>
                                            <td class="center">204-20-512-971</td>
                                            <td class="center">SC제일은행</td>
                                            <td class="center">50,000</td>
                                            <td class="center">환급신청</td>
                                            <td class="center"><a href="#" class="btn btn-warning btn-sm">환급하기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">한의희</td>
                                            <td class="center">2019/02/01</td>
                                            <td class="center">204-20-512-971</td>
                                            <td class="center">SC제일은행</td>
                                            <td class="center">50,000</td>
                                            <td class="center">환급완료</td>
                                            <td class="center"></td>
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
             <!-- /. PAGE INNER  -->
    
    <jsp:include page="include/admintableFooter.jsp" />
</body>
</html>
