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
       <jsp:include page="include/RefusePopUp.jsp" />
	
	
	
       
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
											<td class="total" style="display: none;">회원번호</td>
											<td id="NewNumber" style="display: none;">${HappyDetail.mno}</td>
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
											<c:if test="${HappyDetail.mprAcceptDate ==null && HappyDetail.mTakeStatus == 3}"><td>승인 전 신규회원</td></c:if>
											<c:if test="${HappyDetail.mprAcceptDate ==null && HappyDetail.mTakeStatus == 1}"><td>가입시 등록 후 변경없음</td></c:if>
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
		                        
		                        <p style="height: 600px;">
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
                       
                        <div class="panel-body" style="height: 700px; text-align: center;">
                        


						<img style="height: 650px; width: 600px;" src="resources/${HappyDetail.aFilePath}/${HappyDetail.achangeName}" onclick="OnloadImg(this.src)">


						
		               
                            </div>
                            </div>
                    </div>
                </div>
	
		<br><br><br>
          <c:if test="${HappyDetail.mTakeStatus == 3 }"> 	
          <button type="button" class="btn btn-light btn-lg btn-block NewRefuse" data-toggle="modal" data-target="#RefuseModal">반려하기</button>
		  <button type="button" class="btn btn-warning btn-lg btn-block NewAgree">승인하기</button>
           
           
 

           <br><br><br> 
          </c:if> 
          
          <!-- 기존회원만 보여지기 -->
          <c:if test="${HappyDetail.mTakeStatus == 1 }">
            <h1 class="page-header">
                            	<strong style="color: #c16624;">${HappyDetail.mName}</strong>님의 후원내역
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
            </c:if>
    <!-- /후원내역 -->
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
 
 
 $(".NewAgree").click(function () {
	var newno = $("#NewNumber").text();
	console.log("newno: "+newno);
	location.href="adminNewHappyAgree.ad?newno="+newno;
	
});
 //반려버튼 누를때
 $(".NewRefuse").click(function () {
	var newno = $("#NewNumber").text();
	$("#number").val(newno);
	$("#type").val("NEW");

	
});

//반려 팝업에 있는 보내기 버튼 누를때
 $("#RefuseBtn").click(function () {
	var textContent = $(".textContent").val();//반려사유
	var number = $("#number").val();
	var type = $("#type").val();
	$.ajax({
		url:"adminNewHappyRefuse.ad",
		type : "get",
		data : {number:number, textContent:textContent,type:type},
		success : function (data) {
			location.href="adminHappyAcc.ad";
		}
	});
}); 
</script>
</body>
</html>
