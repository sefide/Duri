<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
     <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <a href="adminMain.ad"><i class="fa fa-dashboard"></i>통계관리</a>
                    </li>
                       <li>
                        <a href="adminNanum.ad"><i class="fa fa-desktop"></i>나눔두리 관리</a>
                    </li>
                    
					 <li>
                        <a href="#" class="active-menu" ><i class="fa fa-sitemap"></i>행복두리 관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="adminHappyAll.ad">행복두리 전체관리</a>
                            </li>
                            <li>
                                <a href="adminHappy.ad">행복두리 승인관리</a>
                            </li>
							</ul>
						</li>	
					 <li>
                        <a href="#" ><i class="fa fa-edit"></i>Q&A 관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="QnA.ad">나눔두리 Q&A</a>
                            </li>
                            <li>
                                <a href="QnA.ad">행복두리 Q&A</a>
                            </li>
							</ul>
						</li>	
                   
                    <li>
                        <a href="#"><i class="fa fa-qrcode"></i>후원 관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="adminCrowd.ad">크라우드 펀딩 관리</a>
                            </li>
                            <li>
                                <a href="adminGoods.ad">후원 물품관리</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        
        
     
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
                                            <th>ID</th>
                                            <th>닉네임</th>
                                            <th>성별</th>
                                            <th>Email</th>
                                            <th>가입유형</th>
                                            <th>자소서 수정여부</th>
                                            <th>상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">Y</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">Y</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">Y</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">Y</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">Y</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">N</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">N</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">Y</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                        <tr class="odd gradeX">
                                            <td>1</td>
                                            <td class="center">han419120</td>
                                            <td class="center">행보크</td>
                                            <td class="center">W</td>
                                            <td class="center">han419120@naver.com</td>
                                            <td class="center">한부모가정</td>
                                            <td class="center">N</td>
                                            <td class="center"><a href="adminHappyTotalDetail.ad" class="btn btn-default btn-sm">상세보기</a></td>
                                        </tr>
                                       
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
</body>
</html>
