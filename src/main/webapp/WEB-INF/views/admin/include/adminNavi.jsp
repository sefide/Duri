<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="adminMain.ad"><strong><img src="/duri/resources/admin/img/duriicon.png" style="width: 30%; height: 100%;">DURI Admin</strong></a>
				<div id="sideNav" href="">
		<i class="fa fa-bars icon"></i> 
		</div>
            </div>
    </nav>
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
                                <a href="adminHappyAcc.ad">행복두리 승인관리</a>
                            </li>
							</ul>
						</li>	    
					 <li>
                        <a href="#" ><i class="fa fa-edit"></i>Q&A 관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Ajin_QnA_list.nanum">나눔두리 Q&A</a>
                            </li>
                            <li>
                                <a href="QnA.ad">행복두리 Q&A</a>
                            </li>
							</ul>
						</li>	
                   
                    <li>
                        <a href="#"  ><i class="fa fa-qrcode"></i>승인 관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="adminCrowd.ad">크라우드 펀딩 관리</a>
                            </li>
                            <li>
                                <a href="adminRefund.ad">환불 관리</a>
                            </li>
                       </ul> 
                    </li>
                </ul>
            </div>
        </nav>

 
</body>
</html>