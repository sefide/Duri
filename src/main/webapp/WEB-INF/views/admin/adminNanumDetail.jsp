<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>나눔두리 관리 상세 페이지</title>
    <style type="text/css">
.total{
	background-color: #f7faff;
	font-weight: bold;
	}


</style>
	<jsp:include page="include/adminStyle.jsp" />
</head>
<body>
    <div id="wrapper">
       <jsp:include page="include/adminNavi.jsp" />
	
        <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                            	<strong style="color: #212259;">${NanumDetail.mName}</strong>님의 상세페이지
                        </h1>
		</div>
            <div id="page-inner"> 
            	<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading"><strong style="color: #212259;">${NanumDetail.mName}</strong> 님의 기본정보</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td class="total">아이디</td>
											<td>${NanumDetail.mid}</td>
										</tr>
										<tr>
											<td class="total">닉네임</td>
											<td>${NanumDetail.mNick}</td>
										</tr>
										<tr>
											<td class="total">성별</td>
											<c:if test="${NanumDetail.mGender == 'F'}"><td>여성</td></c:if>
											<c:if test="${NanumDetail.mGender == 'M'}"><td>남성</td></c:if>
										</tr>
										<tr>
											<td class="total">휴대전화</td>
											<td>${NanumDetail.mPhone}</td>
										</tr>
										<tr>
											<td class="total">이메일</td>
											<td>${NanumDetail.memail}</td>
										</tr>
										<tr>
											<td class="total">회원등급</td>
											<c:choose>
                                            	<c:when test="${NanumDetail.mGoalNum <5}">
                                            		<td>씨앗두리</td>
                                            	</c:when>
                                            	<c:when test="${NanumDetail.mGoalNum <9}">
                                            		<td>새싹두리</td>
                                            	</c:when>
                                            	<c:otherwise>
                                            		<td>열매두리</td>
                                            	</c:otherwise>
                                            </c:choose>
										</tr>
										<tr>
											<td class="total">100%펀딩 달성 횟수</td>
											<td>${NanumDetail.mGoalNum}회</td>
										</tr>
										<tr>
											<td class="total">총 후원금액</td>
											<td><fmt:formatNumber value = "${NanumDetail.pValue}" type="currency" currencySymbol=" "/>원</td>
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
			
			<h1 class="page-header">
                            	<strong style="color: #212259;">${NanumDetail.mName}</strong>님의 후원내역
                        </h1>
             <br><br> 
			<!-- /. ROW  -->
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	 정기 후원 내역
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>행복두리ID</th>
                                            <th>카테고리</th>
                                            <th>후원 시작 날짜</th>
                                            <th>매달 후원 금액</th>
                                            <th>누적 후원 횟수</th>
                                            <th>누적 후원 금액</th>
                                            <th>현재 후원 상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    
                                    <c:forEach var="row" items="${directList}" varStatus="status">
                                       <tr class="odd gradeX">
                                            <td class="center">${status.count}</td>
                                            <td class="center">${row.mid }</td>
                                            <td class="center">${row.MFundType }</td>
                                            <td class="center">${row.dhStartDate }</td>
                                            <td class="center"><fmt:formatNumber value = "${row.dhValue}" type="currency" currencySymbol=" "/>원</td>
                                            <td class="center">${row.cnt}회</td>
                                            <td class="center"><fmt:formatNumber value = "${row.sum}" type="currency" currencySymbol=" "/>원</td>
                                            <c:if test="${row.dhStatus=='Y'}">
                                            <td class="center">후원중</td>
                                            </c:if>
                                            <c:if test="${row.dhStatus=='N'}">
                                            <td class="center">후원정지</td>
                                            </c:if>
                                            
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
                             	크라우드 펀딩 금액 후원 내역
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>행복두리ID</th>
                                            <th>카테고리</th>
                                            <th>펀딩제목</th>
                                            <th>펀딩 시작 날짜</th>
                                            <th>펀딩 마감 날짜</th>
                                            <th>펀딩 후원 날짜</th>
                                            <th>후원금액</th>
                                            <th>상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="row" items="${fundingMoneyList}" varStatus="status">
                                       <tr class="odd gradeX">
                                            <td class="center">${status.count}</td>
                                            <td class="center">${row.mid }</td>
                                            <td class="center">${row.MFundType }</td>
                                            <td class="center">${row.fTitle }</td>
                                            <td class="center">${row.fStartDate }</td>
                                            <td class="center">${row.fEndDate }</td>
                                            <td class="center">${row.fhDate }</td>
                                            <td class="center"><fmt:formatNumber value = "${row.fhValue }" type="currency" currencySymbol=" "/>원</td>
                                            <c:choose>
                                            	<c:when test="${row.fStatus=='ING' }">
                                            	 <td class="center">펀딩 진행중</td>
                                            	</c:when>
                                            	<c:when test="${row.fStatus=='GOAL' }">
                                            	 <td class="center">펀딩 목표달성 종료</td>
                                            	</c:when>
                                            	<c:otherwise>
                                            	 <td class="center">펀딩 기간만료 종료</td>
                                            	</c:otherwise>
                                            </c:choose>
                                           
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
                             	크라우드 펀딩 물품 후원 내역
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>행복두리ID</th>
                                            <th>카테고리</th>
                                            <th>펀딩제목</th>
                                            <th>펀딩 시작 날짜</th>
                                            <th>펀딩 마감 날짜</th>
                                            <th>펀딩 후원 날짜</th>
                                            <th>후원물품</th>
                                            <th>후원물품갯수</th>
                                            <th>상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="row" items="${fundingGoodsList}" varStatus="status">
                                       <tr class="odd gradeX">
                                            <td class="center">${status.count}</td>
                                            <td class="center">${row.mid }</td>
                                            <td class="center">${row.MFundType }</td>
                                            <td class="center">${row.fTitle }</td>
                                            <td class="center">${row.fStartDate }</td>
                                            <td class="center">${row.fEndDate }</td>
                                            <td class="center">${row.fhDate }</td>
                                            <td class="center">${row.iName }</td>
                                            <td class="center">${row.fhdItemValue }개</td>
                                           <c:choose>
                                            	<c:when test="${row.fStatus=='ING' }">
                                            	 <td class="center">펀딩 진행중</td>
                                            	</c:when>
                                            	<c:when test="${row.fStatus=='GOAL' }">
                                            	 <td class="center">펀딩 목표달성 종료</td>
                                            	</c:when>
                                            	<c:otherwise>
                                            	 <td class="center">펀딩 기간만료 종료</td>
                                            	</c:otherwise>
                                            </c:choose>
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
</body>
</html>
