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
    <title>행복두리 전체관리 페이지</title>
	 <jsp:include page="include/adminStyle.jsp"/>
	 
</head>
<body>
     <jsp:include page="include/adminNavi.jsp"/>
    
        
     
        <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                    		    행복두리 전체관리
                        </h1>
			                            
		</div>
            <div id="page-inner"> 
               <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	행복두리 회원 전체목록	
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th style="display: none;">회원번호</th>
                                            <th>ID</th>
                                            <th>닉네임</th>
                                            <th>성별</th>
                                            <th>memail</th>
                                            <th>가입유형</th>
                                            <th>자소서 수정여부</th>
                                            <th>상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <c:forEach var="row" items="${HappyAlllist}" varStatus="status">
                                        <tr class="odd gradeX">
                                            <td>${status.count}</td>
                                            <td class="center" style="display: none;">${row.mno}</td>
                                            <td class="center">${row.mid}</td>
                                            <td class="center">${row.mNick}</td>
                                            <c:if test="${row.mGender == 'F'}"><td class="center">여</td></c:if>
											<c:if test="${row.mGender == 'M'}"><td class="center">남</td></c:if>
                                            <td class="center">${row.memail}</td>
                                            <td class="center">${row.mFundtype}</td>
                                            <c:if test="${row.mprNew == null}">
                                            <td class="center">N</td>
                                            </c:if>
                                            <c:if test="${row.mprNew != null}">
                                            <td class="center">Y</td>
                                            </c:if>
                                            <td class="center">
                                            <a class="btn btn-default btn-sm HappyDetail">상세보기</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                <!-- /. ROW  -->
                
                
                
        </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->

               <jsp:include page="include/admintableFooter.jsp"/>
               
     <script type="text/javascript">
    	$(".HappyDetail").click(function () {
			var num = $(this).parent().parent().children().eq(1).text();
			location.href= "adminHappyDetail.ad?num="+num; 
		});
    
    </script>
</body>
</html>
