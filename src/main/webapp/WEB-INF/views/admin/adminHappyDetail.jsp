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
    <title>행복두리 관리 상세 페이지</title>
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
                        <c:if test="${HappyDetail.mTakeStatus == 1 }">
                            	<strong style="color: #c16624;">${HappyDetail.mName}</strong>님의 상세정보
                         </c:if>
                        <c:if test="${HappyDetail.mTakeStatus == 3 }">
                            	<strong style="color: #c16624;">${HappyDetail.mName}</strong>님의 가입정보
                         </c:if>
                       
                        </h1>
		</div>
            <div id="page-inner"> 
            	<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">${HappyDetail.mName}님의 기본정보</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td class="total">아이디</td>
											<td>${HappyDetail.mid}</td>
											<td class="total">생년월일</td>
											<td>20${HappyDetail.mBirthDay}</td>
										</tr>
										<tr>
											<td class="total">이름</td>
											<td>${HappyDetail.mName}</td>
											<td class="total">주소</td>
											<td>${HappyDetail.mAddress}</td>
										</tr>
										<tr>
											<td class="total">닉네임</td>
											<td>${HappyDetail.mNick}</td>
											<td class="total">가입유형</td>
											<td>${HappyDetail.mFundtype}</td>
										</tr>
										<tr>
											<td class="total">성별</td>
											<c:if test="${HappyDetail.mGender == 'F'}"><td>여성</td></c:if>
											<c:if test="${HappyDetail.mGender == 'M'}"><td>남성</td></c:if>
											<td class="total">이메일</td>
											<td>${HappyDetail.memail}</td>
										</tr>
										<tr>
											<td class="total">휴대전화</td>
											<c:if test="${HappyDetail.mPhone == null}"><td>없음</td></c:if>
											<c:if test="${HappyDetail.mPhone != null}"><td>${HappyDetail.mPhone}</td></c:if>
											
											<td class="total">가입승인날짜</td>
											<c:if test="${HappyDetail.mAcceptDate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${HappyDetail.mAcceptDate !=null}"><td>${HappyDetail.mAcceptDate}</td></c:if>
										</tr>
										<tr>
											<td class="total">증빙서류 갱신일</td>
											<c:if test="${HappyDetail.adate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${HappyDetail.adate !=null}"><td>${HappyDetail.adate}</td></c:if>
											<td class="total">자기소개 갱신일</td>
											<c:if test="${HappyDetail.mprAcceptDate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${HappyDetail.mprAcceptDate !=null}"><td>${HappyDetail.mprAcceptDate}</td></c:if>
											
											
										</tr>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
            	
            	
            	
            	
			<h1 class="page-header">
                            	<strong style="color: #c16624;">${HappyDetail.mName}</strong>님의 후원 필수서류
                        </h1>
             
			<!-- /. ROW  -->
            		  <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           	자기소개 글
                        </div>
                       
                        <div class="panel-body">
		                  <div class="well">
		                        
		                        <p style="height: 550px;">
		                        <big>${HappyDetail.mpr}</big>
		                        </p>
		                    </div>
                
                        </div>
                          </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            	증빙 서류
                        </div>
                       
                        <div class="panel-body" style="height: 650px;">
                       	
		                 <img src="/duri/resources/admin/img/happy.PNG" style="width: 100%; height: 100%;">
		               
                            </div>
                            </div>
                    </div>
                </div>
	
		<br><br><br>
          <c:if test="${HappyDetail.mTakeStatus == 3 }"> 	
          <button type="button" class="btn btn-light btn-lg btn-block">반려하기</button>
		  <button type="button" class="btn btn-warning btn-lg btn-block">승인하기</button>
           
           <br><br><br> 
          </c:if> 
        </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
    
    <jsp:include page="include/admintableFooter.jsp" />
</body>
</html>
