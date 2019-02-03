<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">
			<li><a href="adminMain.ad" ><i
					class="fa fa-dashboard"></i>통계관리</a></li>
			<li><a href="adminNanum.ad" class="active-menu"><i class="fa fa-desktop"></i>나눔두리
					관리</a></li>

			<li><a href="#"><i class="fa fa-sitemap"></i>행복두리 관리<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="adminHappyAll.ad">행복두리 전체관리</a></li>
					<li><a href="adminHappy.ad">행복두리 승인관리</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-edit"></i>Q&A 관리<span
					class="fa arrow"></span> </a>
				<ul class="nav nav-second-level">
					<li><a href="QnA.ad">나눔두리 Q&A</a></li>
					<li><a href="QnA.ad">행복두리 Q&A</a></li>
				</ul></li>

			<li><a href="#"><i class="fa fa-qrcode"></i>후원 관리<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="adminCrowd.ad">크라우드 펀딩 관리</a></li>
					<li><a href="adminGoods.ad">후원 물품관리</a></li>
				</ul></li>
		</ul>
	</div>
	</nav>
	
       
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
                                            <th>ID</th>
                                            <th>닉네임</th>
                                            <th>성별</th>
                                            <th>Email</th>
                                            <th>회원등급</th>
                                            <th>상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">후원자1</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">열매두리</td>
                                            <td class="center"><a href="adminNanumDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        
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
                                            <th>Email</th>
                                            <th>휴대전화</th>
                                            <th>기부금액</th>
                                            <th>기부날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
                                       <tr class="odd gradeX">
                                            <td class="center">1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">한의희</td>
                                            <td class="center">930504</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">01055432010</td>
                                            <td class="center">300,000원</td>
                                            <td class="center">2019/01/28</td>
                                        </tr>
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
