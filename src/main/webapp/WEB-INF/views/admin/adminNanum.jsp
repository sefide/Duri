<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    
    <title>나눔두리 관리 페이지</title>
	<jsp:include page="include/adminStyle.jsp" />
</head>
<body>
    <div id="wrapper">
       <jsp:include page="include/adminNavi.jsp" />
	
	
       
        <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                            	나눔두리 관리
                        </h1>
		</div>
            <div id="page-inner"> 
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	나눔두리 회원 전체목록	
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th style="display: none;">회원번호</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                            <th>닉네임</th>
                                            <th>성별</th>
                                            <th>memail</th>
                                            <th>회원등급</th>
                                            <th>상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                   
                                    <c:forEach var="row" items="${Nanumlist}" varStatus="status">
                                        <tr class="odd gradeX">
                                            <td class="center">${status.count}</td>
                                            <td class="center" style="display: none;">${row.mno}</td>
                                            <td class="center">${row.mid}</td>
                                            <td class="center">${row.mName}</td>
                                            <td class="center">${row.mNick}</td>
                                            <c:if test="${row.mGender == 'F'}"><td class="center">여</td></c:if>
											<c:if test="${row.mGender == 'M'}"><td class="center">남</td></c:if>
                                            <td class="center">${row.memail}</td>
                                            <c:choose>
                                            	<c:when test="${row.mGoalNum <5}">
                                            		<td class="center">씨앗두리</td>
                                            	</c:when>
                                            	<c:when test="${row.mGoalNum <9}">
                                            		<td class="center">새싹두리</td>
                                            	</c:when>
                                            	<c:otherwise>
                                            		<td class="center">열매두리</td>
                                            	</c:otherwise>
                                            </c:choose>
                                            <td class="center">
                                            <a class="btn btn-default btn-sm Nanumdetail">상세보기</a>
                                            </td>
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
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	기부영수증 신청 회원목록 &nbsp;&nbsp;&nbsp;&nbsp;
                             	<a href="https://www.nts.go.kr/" class="btn btn-primary">국세청 홈페이지로 이동</a>
                             	
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                            <th>생년월일</th>
                                            <th>휴대전화</th>
                                            <th>신청일자</th>
                                            <th>기부금액</th>
                                            <th>기부날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="row" items="${Donatelist}" varStatus="status">
                                       <tr class="odd gradeX">
                                            <td class="center">${status.count}</td>
                                            <td class="center">${row.dr_mid}</td>
                                            <td class="center">${row.dr_mNo}</td>
                                           
                                           <c:choose>
                                            <c:when test="${row.drRegistNum !=null}">
	                                           <td class="center">
	                                           		<c:out value="${fn:substring(row.drRegistNum,0,6)}"/>-
	                                           		<c:out value="${fn:substring(row.drRegistNum,6,7)}"/>******
	                                           	</td>
                                           </c:when>
                                           </c:choose>
                                           
                                            <td class="center">${row.dr_mPhone}</td>
                                            <td class="center">${row.drApplyDate}</td>
                                            <td class="center">${row.drValue}원</td>
                                            <td class="center">${row.drDonateDate}</td>
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
            </div>
    
    <jsp:include page="include/admintableFooter.jsp" />
    
    
    <script type="text/javascript">
    	$(".Nanumdetail").click(function () {
			var num = $(this).parent().parent().children().eq(1).text();
			location.href= "adminNanumDetail.ad?num="+num;
		});
    
    </script>
</body>
</html>
