<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>Bootstrap HTML5 Admin Template : Master - WebThemez</title>
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
                        <a href="#" ><i class="fa fa-sitemap"></i>행복두리 관리<span class="fa arrow"></span></a>
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
                        <a href="#" class="active-menu" ><i class="fa fa-edit"></i>Q&A 관리<span class="fa arrow"></span></a>
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
        
        
   
        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            Empty Page <small>Create new page.</small>
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Empty</a></li>
					  <li class="active">Data</li>
					</ol> 
									
		</div>
		</div>
		
           		<jsp:include page="include/adminFooter.jsp"/>
   
</body>
</html>
