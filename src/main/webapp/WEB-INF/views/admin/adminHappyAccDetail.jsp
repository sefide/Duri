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
    <title>행복두리 관리 승인 상세 페이지</title>
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
                            	<strong style="color: #c16624;">${HappyAccDetail[0].mName}</strong>님의 승인정보
                        </h1>
		</div>
            <div id="page-inner"> 
            	<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">${HappyAccDetail[0].mName}님의 기본정보</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td class="total" style="display: none;">회원번호</td>
											<td id="memberno" style="display: none;">${HappyAccDetail[0].mno}</td>
											<td class="total" style="display: none;">회원상태</td>
											<td id="memberst" style="display: none;">${HappyAccDetail[0].mTakeStatus}</td>
											<td class="total" style="display: none;">회원상태현황</td>
											<td id="membernum" style="display: none;">AccNotAttach</td>
											<td class="total">아이디</td>
											<td>${HappyAccDetail[0].mid}</td>
											<td class="total">생년월일</td>
											<td>20${HappyAccDetail[0].mBirthDay}</td>
										</tr>
										<tr>
											<td class="total">이름</td>
											<td>${HappyAccDetail[0].mName}</td>
											<td class="total">주소</td>
											<td>${HappyAccDetail[0].mAddress}</td>
										</tr>
										<tr>
											<td class="total">닉네임</td>
											<td>${HappyAccDetail[0].mNick}</td>
											<td class="total">가입유형</td>
											<td>${HappyAccDetail[0].mFundtype}</td>
										</tr>
										<tr>
											<td class="total">성별</td>
											<c:if test="${HappyAccDetail[0].mGender == 'F'}"><td>여성</td></c:if>
											<c:if test="${HappyAccDetail[0].mGender == 'M'}"><td>남성</td></c:if>
											<td class="total">이메일</td>
											<td>${HappyAccDetail[0].memail}</td>
										</tr>
										<tr>
											<td class="total">휴대전화</td>
											<c:if test="${HappyAccDetail[0].mPhone == null}"><td>없음</td></c:if>
											<c:if test="${HappyAccDetail[0].mPhone != null}"><td>${HappyAccDetail[0].mPhone}</td></c:if>
											
											<td class="total">가입승인날짜</td>
											<c:if test="${HappyAccDetail[0].mAcceptDate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${HappyAccDetail[0].mAcceptDate !=null}"><td>${HappyAccDetail[0].mAcceptDate}</td></c:if>
										</tr>
										<tr>
											<td class="total">증빙서류 갱신일</td>
											<c:if test="${HappyAccDetail[0].adate ==null}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${HappyAccDetail[0].adate !=null}"><td>${HappyAccDetail[0].adate}</td></c:if>
											<td class="total">자기소개 갱신일</td>
											<c:if test="${HappyAccDetail[0].mprAcceptDate ==null && HappyAccDetail[0].mTakeStatus == 3}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${HappyAccDetail[0].mprAcceptDate ==null && HappyAccDetail[0].mTakeStatus == 1}"><td>가입시 등록 후 변경없음</td></c:if>
											<c:if test="${HappyAccDetail[0].mprAcceptDate !=null}"><td>${HappyAccDetail[0].mprAcceptDate}</td></c:if>
											
											
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
            	
            	
            	
            	
			<h1 class="page-header">
                         <strong style="color: #c16624;">${HappyAccDetail[0].mName}</strong>님의 후원 필수서류
                        </h1>
             
				
            		  <div class="row">
            		 <c:if test="${HappyAccDetail[0].mprNew!=null}">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           	자기소개 글(원글)
                        </div>
                        <div class="panel-body">
		                  <div class="well">
		                        <p style="height: 600px;">
		                        <big>${HappyAccDetail[0].mpr}</big>
		                        </p>
		                    </div>
                
                        </div>
                          </div>
                    </div>
                   </c:if>
            		 <c:if test="${HappyAccDetail[0].mprNew==null}">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           	자기소개 글(원글)
                        </div>
                        <div class="panel-body">
		                  <div class="well">
		                        <p style="height: 600px;">
		                        <big>${HappyAccDetail[0].mpr}</big>
		                        </p>
		                    </div>
                
                        </div>
                          </div>
                    </div>
                   </c:if>
                    
                    <c:if test="${HappyAccDetail[0].mprNew!=null}">
                  <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           	자기소개 글(갱신 글)
                        </div>
                       
                        <div class="panel-body">
		                  <div class="well">
		                       <p style="height: 600px;">
		                        <big>${HappyAccDetail[0].mprNew}</big>
		                        </p>
		                    </div>
                        </div>
                          </div>
                    </div>
                </c:if>
                </div>
                
                
               
                
                
                <br>
                <br>
                <c:if test="${HappyAccDetail[0].mprNew!=null}">
                 <button type="button" class="btn btn-light btn-lg btn-block">반려하기</button>
		  		 <button type="button" class="btn btn-warning btn-lg btn-block MprAgree">승인하기</button>
		  		 </c:if>
            	<br><br>	  
            	<br><br>		  
            		  
            		  
            		  <div class="row">
                  	<c:if test="${HappyAccDetail[1].achangeName!='EMPTY'}">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            	증빙 서류(원본)
                        </div>
                       
                        <div class="panel-body" style="height: 700px; text-align: center;"" >
                       	
		                <img style="height: 650px; width: 600px;" src="resources/${HappyAccDetail[0].aFilePath}/${HappyAccDetail[0].achangeName}.jpg" onclick="OnloadImg(this.src)">
		               
                            </div>
                            </div>
                    </div>
                    </c:if>
                  	<c:if test="${HappyAccDetail[1].achangeName =='EMPTY'}">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            	증빙 서류(원본)
                        </div>
                       
                        <div class="panel-body" style="height: 700px; text-align: center;"" >
                       	
		                <img style="height: 650px; width: 600px;" src="resources/${HappyAccDetail[0].aFilePath}/${HappyAccDetail[0].achangeName}.jpg" onclick="OnloadImg(this.src)">
		               
                            </div>
                            </div>
                    </div>
                    </c:if>
                    
                    <c:if test="${HappyAccDetail[1].achangeName!='EMPTY'}">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                            	증빙 서류(갱신서류)
                        </div>
                       
                        <div class="panel-body" style="height: 700px; text-align: center;"">
                       	
		                <img style="height: 650px; width: 600px;" src="resources/${HappyAccDetail[1].aFilePath}/${HappyAccDetail[1].achangeName}.jpg" onclick="OnloadImg(this.src)">
		               <div id="imgName" style="display: none;">${HappyAccDetail[1].achangeName}</div>
                            </div>
                            </div>
                    </div>
                    </c:if>
                </div>
	
		<br><br><br>
           <c:if test="${HappyAccDetail[1].achangeName!='EMPTY'}"> 	
          <button type="button" class="btn btn-light btn-lg btn-block">반려하기</button>
		  <button type="button" class="btn btn-warning btn-lg btn-block AttachAgree">승인하기</button>
           </c:if>
           <br><br><br> 
            
             <h1 class="page-header">
                            	<strong style="color: #c16624;">${HappyAccDetail[0].mName}</strong>님의 후원내역
                        </h1>
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
                                            <th>나눔두리ID</th>
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
                                            <td class="center">${row.dhStartDate }</td>
                                            <td class="center">${row.dhValue}원</td>
                                            <td class="center">${row.cnt}회</td>
                                            <td class="center">${row.sum}원</td>
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
                                            <th>나눔두리ID</th>
                                            <th>펀딩제목</th>
                                            <th>펀딩목적</th>
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
                                            <td class="center">${row.fTitle }</td>
                                            <td class="center">${row.fValueType }</td>
                                            <td class="center">${row.fStartDate }</td>
                                            <td class="center">${row.fEndDate }</td>
                                            <td class="center">${row.fhDate }</td>
                                            <td class="center">${row.fhValue }원</td>
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
                                            <th>나눔두리ID</th>
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
            <br><br>
            <button type="button" class="btn btn-primary btn-lg btn-block" onclick="location.href='adminHappyAcc.ad'">목록으로 가기</button>
            <br><br>
        </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
    
    <jsp:include page="include/admintableFooter.jsp" />
      <script>

 function OnloadImg(url){

  var img=new Image();

  img.src=url;

  var img_width=img.width;

  var win_width=img.width+25;

  var height=img.height+30;

  var OpenWindow=window.open('','_blank', 'width='+img_width+', height='+height+', menubars=no, scrollbars=auto');

  OpenWindow.document.write("<style>body{margin:0px;}</style><img src='"+url+"' width='"+win_width+"'>");

 }
 
 $(".MprAgree").click(function () {
	var Mnonum = $("#memberno").text();
	var Statusnum = $("#memberst").text();
	var num = $("#membernum").text();
	
	
	location.href="adminMprHappyAgree.ad?Mnonum="+Mnonum+"&Statusnum="+Statusnum+"&num="+num;
});
 $(".AttachAgree").click(function () {
	var Mnonum = $("#memberno").text();
	var changName =$("#imgName").text();
	
	 location.href="adminAttachHappyAgree.ad?Mnonum="+Mnonum+"&changName="+changName; 
});
 
 
 
</script>

</body>
</html>
