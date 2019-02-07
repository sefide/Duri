<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>신규 행복두리 관리 상세 페이지</title>
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
                            	EH님의 가입정보
                        </h1>
		</div>
            <div id="page-inner"> 
            	<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">EH님의 기본정보</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td class="total">아이디</td>
											<td>han419120</td>
											<td class="total">생년월일</td>
											<td>930504</td>
										</tr>
										<tr>
											<td class="total">이름</td>
											<td>한의희</td>
											<td class="total">주소</td>
											<td>서울시 송파구 백제고분로11길 15</td>
										</tr>
										<tr>
											<td class="total">닉네임</td>
											<td>EH</td>
											<td class="total">가입유형</td>
											<td>한부모가정</td>
										</tr>
										<tr>
											<td class="total">성별</td>
											<td>W</td>
											<td class="total">이메일</td>
											<td>han419120@naver.com</td>
										</tr>
										<tr>
											<td class="total">휴대전화</td>
											<td>01055432010</td>
											<td class="total">가입날짜</td>
											<td>2019/01/12</td>
										</tr>
										
										
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
            	
            	
            	
            	
			<h1 class="page-header">
                            	EH님의 후원 필수서류
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
		                        <h4>저는 집이 없어요...</h4>
		                        <p style="height: 550px;">
		                        Lorem ipsum dolor sit amet, 
		                        consectetur adipiscing elit. Vestibulum tincidunt 
		                        est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, 
		                        posuere lectus et, fringilla augue.
		                        Lorem ipsum dolor sit amet, 
		                        consectetur adipiscing elit. Vestibulum tincidunt 
		                        est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, 
		                        posuere lectus et, fringilla augue.
		                        Lorem ipsum dolor sit amet, 
		                        consectetur adipiscing elit. Vestibulum tincidunt 
		                        est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, 
		                        posuere lectus et, fringilla augue.
		                        Lorem ipsum dolor sit amet, 
		                        consectetur adipiscing elit. Vestibulum tincidunt 
		                        est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, 
		                        posuere lectus et, fringilla augue.
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
                       
                        <div class="panel-body" style="height: 700px;">
                       	
		                 <img src="/duri/resources/admin/img/happy.PNG" style="width: 100%; height: 100%;">
		               
                            </div>
                            </div>
                    </div>
                </div>
	
		<br><br><br>
            	
          <button type="button" class="btn btn-light btn-lg btn-block">반려하기</button>
		  <button type="button" class="btn btn-warning btn-lg btn-block">승인하기</button>
           
           <br><br><br> 
            
        </div>
    </div>
             <!-- /. PAGE INNER  -->
            </div>
    
    <jsp:include page="include/admintableFooter.jsp" />
</body>
</html>
