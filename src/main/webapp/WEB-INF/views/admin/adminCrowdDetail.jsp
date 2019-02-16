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
                            	<strong style="color: #c16624;">${CrowdMemInfo.mName}</strong>님의 신규 크라우드 <strong>금액</strong> 펀딩 게시글
                        </h1>
		</div>
            <div id="page-inner"> 
            	<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">기본정보</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
											<tr>
											<td class="total">아이디</td>
											<td>${CrowdMemInfo.mid}</td>
											<td class="total">생년월일</td>
											<td>20${CrowdMemInfo.mBirthDay}</td>
										</tr>
										<tr>
											<td class="total">이름</td>
											<td>${CrowdMemInfo.mName}</td>
											<td class="total">주소</td>
											<td>${CrowdMemInfo.mAddress}</td>
										</tr>
										<tr>
											<td class="total">닉네임</td>
											<td>${CrowdMemInfo.mNick}</td>
											<td class="total">가입유형</td>
											<td>${CrowdMemInfo.mFundtype}</td>
										</tr>
										<tr>
											<td class="total">성별</td>
											<c:if test="${CrowdMemInfo.mGender == 'F'}"><td>여성</td></c:if>
											<c:if test="${CrowdMemInfo.mGender == 'M'}"><td>남성</td></c:if>
											<td class="total">이메일</td>
											<td>${CrowdMemInfo.memail}</td>
										</tr>
										<tr>
											<td class="total">휴대전화</td>
											<c:if test="${CrowdMemInfo.mPhone == null}"><td>없음</td></c:if>
											<c:if test="${CrowdMemInfo.mPhone != null}"><td>${CrowdMemInfo.mPhone}</td></c:if>
											
											<td class="total">가입승인날짜</td>
											<c:if test="${CrowdMemInfo.mAcceptDate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${CrowdMemInfo.mAcceptDate !=null}"><td>${CrowdMemInfo.mAcceptDate}</td></c:if>
										</tr>
										<tr>
											<td class="total">증빙서류 갱신일</td>
											<c:if test="${CrowdMemInfo.adate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${CrowdMemInfo.adate !=null}"><td>${CrowdMemInfo.adate}</td></c:if>
											<td class="total">자기소개 갱신일</td>
											<c:if test="${CrowdMemInfo.mprAcceptDate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${CrowdMemInfo.mprAcceptDate !=null}"><td>${CrowdMemInfo.mprAcceptDate}</td></c:if>
											
											
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
        
        
        
        <div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
					<div class="panel-heading"></div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<th class="total" style="text-align: center;">자기소개</th>
										</tr>
										<tr>
											<td>
											${CrowdMemInfo.mpr}
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>  
        
        
        
        
        
        
        
        
        
        
        
            		<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">신규 금액 펀딩 게시글</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td class="total">펀딩 제목</td>
											<td>${CrowdFundInfo.fTitle}</td>
										</tr>
										
										<tr>
											<td class="total">후원 카테고리</td>
											<td>${CrowdFundInfo.fValueType}</td>
										</tr>
										<tr>
											<td class="total">목표 금액 </td>
											<td>${CrowdFundInfo.fValue}</td>
										</tr>
										<tr>
											<td class="total">펀딩 등록 날짜</td>
											<td>${CrowdFundInfo.fWriteDate}</td>
										</tr>
										<tr>
											<td class="total">펀딩 종료 날짜</td>
											<td>${CrowdFundInfo.fEndDate}</td>
										</tr>
										
										<tr>
											<td class="total" colspan="2">펀딩 내용</td>
											
										</tr>
										<tr>
										<td colspan="2">
											${CrowdFundInfo.fContent}
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>  
                	  
            		  
            		  
            		 
	
		
            
           
             <br>
                <br>
                 <button type="button" class="btn btn-light btn-lg btn-block">반려하기</button>
		  		 <button type="button" class="btn btn-warning btn-lg btn-block">승인하기</button>
            	<br><br>	  
            	<br><br>	
        </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
    
    <jsp:include page="include/admintableFooter.jsp" />
</body>
</html>
