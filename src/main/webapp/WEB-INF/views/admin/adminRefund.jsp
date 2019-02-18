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
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   <c:forEach var="row" items="${adminRefundList }" varStatus="status">
                                        <tr class="odd gradeX">
                                            <td class="center">${status.count}</td>
                                            <td class="center">${row.mid}</td>
                                            <td class="center">${row.mname}</td>
                                            <td class="center">${row.rName}</td>
                                            <td class="center">${row.rDate}</td>
                                            <td class="center">${row.rAccount}</td>
                                            <td class="center">${row.rBank}은행</td>
                                            <td class="center">${row.rValue}원</td>
                                            <td class="center"><a href="complete()" class="btn btn-warning btn-sm">환급완료</a></td>
                                        </tr>
                                       
                                    </c:forEach>
                                    </tbody>
                                </table>
                               	 <button onclick="Refundprint()">인쇄하기</button>
                            </div>
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	환급 완료 행복두리 목록	
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
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   <c:forEach var="row" items="${adminRefundList }" varStatus="status">
                                        <tr class="odd gradeX">
                                            <td class="center">${status.count}</td>
                                            <td class="center">${row.mid}</td>
                                            <td class="center">${row.mname}</td>
                                            <td class="center">${row.rName}</td>
                                            <td class="center">${row.rDate}</td>
                                            <td class="center">${row.rAccount}</td>
                                            <td class="center">${row.rBank}은행</td>
                                            <td class="center">${row.rValue}원</td>
                                            <td class="center">환급완료</td>
                                        </tr>
                                    </c:forEach>
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
    <script type="text/javascript">
    		function Refundprint() {
				print();
			}
    		
    		
    </script>
</body>
</html>
