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
                            	<strong style="color: #c16624;">${CrowdMemGoodsInfo.mName}</strong>님의 신규 크라우드 <strong>물품</strong> 펀딩 게시글
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
											<td>${CrowdMemGoodsInfo.mid}</td>
											<td class="total">생년월일</td>
											<td>20${CrowdMemGoodsInfo.mBirthDay}</td>
										</tr>
										<tr>
											<td class="total">이름</td>
											<td>${CrowdMemGoodsInfo.mName}</td>
											<td class="total">주소</td>
											<td>${CrowdMemGoodsInfo.mAddress}</td>
										</tr>
										<tr>
											<td class="total">닉네임</td>
											<td>${CrowdMemGoodsInfo.mNick}</td>
											<td class="total">가입유형</td>
											<td>${CrowdMemGoodsInfo.mFundtype}</td>
										</tr>
										<tr>
											<td class="total">성별</td>
											<c:if test="${CrowdMemGoodsInfo.mGender == 'F'}"><td>여성</td></c:if>
											<c:if test="${CrowdMemGoodsInfo.mGender == 'M'}"><td>남성</td></c:if>
											<td class="total">이메일</td>
											<td>${CrowdMemGoodsInfo.memail}</td>
										</tr>
										<tr>
											<td class="total">휴대전화</td>
											<c:if test="${CrowdMemGoodsInfo.mPhone == null}"><td>없음</td></c:if>
											<c:if test="${CrowdMemGoodsInfo.mPhone != null}"><td>${CrowdMemGoodsInfo.mPhone}</td></c:if>
											
											<td class="total">가입승인날짜</td>
											<c:if test="${CrowdMemGoodsInfo.mAcceptDate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${CrowdMemGoodsInfo.mAcceptDate !=null}"><td>${CrowdMemGoodsInfo.mAcceptDate}</td></c:if>
										</tr>
										<tr>
											<td class="total">증빙서류 갱신일</td>
											<c:if test="${CrowdMemGoodsInfo.adate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${CrowdMemGoodsInfo.adate !=null}"><td>${CrowdMemGoodsInfo.adate}</td></c:if>
											<td class="total">자기소개 갱신일</td>
											<c:if test="${CrowdMemGoodsInfo.mprAcceptDate ==null}"><td>-</td></c:if>
											<c:if test="${CrowdMemGoodsInfo.mprAcceptDate !=null}"><td>${CrowdMemGoodsInfo.mprAcceptDate}</td></c:if>
											
											
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
											${CrowdMemGoodsInfo.mpr}
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
						<div class="panel-heading">신규 물품 펀딩 게시글</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
									
										<tr>
											<td class="total">펀딩 제목</td>
											<td>${CrowdFundGoodsInfo[0].fTitle}</td>
										</tr>
										
										<tr>
											<td class="total">후원 물품목록/목표 수량</td>
											<td>
											<c:forEach var="row" items="${CrowdFundGoodsInfo}">
											${row.iName} : ${row.fdValue} 개   <br>
											</c:forEach>
											</td>
										</tr>
										<tr>
											<td class="total">펀딩 등록 날짜</td>
											<td>${CrowdFundGoodsInfo[0].fWriteDate}</td>
										</tr>
										<tr>
											<td class="total">펀딩 종료 날짜</td>
											<td>${CrowdFundGoodsInfo[0].fEndDate}</td>
										</tr>
										
										<tr>
											<td class="total" colspan="2">펀딩 내용</td>
											
										</tr>
										<tr>
										<td colspan="2">
											${CrowdFundGoodsInfo[0].fContent}
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
