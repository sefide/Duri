<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String bigtabon = "0";
%>
	<link
	href="https://fonts.googleapis.com/css?family=Gamja+Flower|Nanum+Gothic:400,700,800|Nanum+Pen+Script|Poor+Story&amp;subset=korean" rel="stylesheet">
	<style>
	.tabBigBox li:hover a, .tabBigBox .on a {
    	color: #fa8f3d;
  	}
	.mt50 {
    	margin-top: 180px !important;
	}
	.btab_8ea li {
   		width: 16.5%;
	}
	#mynav{
    	width: 100%;
    	padding: 0 auto;
	}
	
	</style>
	
	<div style="margin: 0 auto;" >
	<div class="tabBigBox btab_5ea mt50 mb50" id="mynav">
		<ul>
			<li <%if(bigtabon.equals("1")){%>class="on"<%}%>><a href="mypage.nanum" id="mynav_dt">크라우드펀딩현황</a></li>
			<li <%if(bigtabon.equals("2")){%>class="on"<%}%>><a href="mypageFund.nanum" id="mynav_dt">정기후원현황</a></li>
			<li <%if(bigtabon.equals("3")){%>class="on"<%}%>><a href="mypageLetter.nanum" id="mynav_dt">행복두리의 편지</a></li>
			<li <%if(bigtabon.equals("4")){%>class="on"<%}%>><a href="donateReceipt.pm" id="mynav_dt">기부금 영수증</a></li>
			<li <%if(bigtabon.equals("5")){%>class="on"<%}%>><a href="mypageLikefund.nanum" id="mynav_dt">하고싶었던 후원</a></li>
			
		</ul>
	</div>
	</div>