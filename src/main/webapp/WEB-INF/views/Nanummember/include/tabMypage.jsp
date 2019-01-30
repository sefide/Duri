<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<link
	href="https://fonts.googleapis.com/css?family=Gamja+Flower|Nanum+Gothic:400,700,800|Nanum+Pen+Script|Poor+Story&amp;subset=korean" rel="stylesheet">
	<style>
	.tabBigBox li:hover a, .tabBigBox .on a {
    /* color: #333; */
    color: #f86f2d;
    font-weight: bold;
}
	.mt50 {
    margin-top: 230px !important;
	}
	.btab_8ea li {
    width: 20%;
	}
	#mynav{
		/* font-family: Nanum Pen Script ;	 */		
	}
	#mynav_dt{
		font-size: 25px;
	}
	</style>
	<div class="tabBigBox btab_8ea mt50 mb50" id="mynav">
		<ul>
			<li <%if(bigtabon.equals("1")){%>class="on"<%}%>><a href="../mypage/mypage.jsp" id="mynav_dt">크라우드펀딩현황</a></li>
			<li <%if(bigtabon.equals("2")){%>class="on"<%}%>><a href="../mypage/directFund.jsp" id="mynav_dt">정기후원현황</a></li>
			<li <%if(bigtabon.equals("3")){%>class="on"<%}%>><a href="../mypage/letter.jsp" id="mynav_dt">행복두리의 편지</a></li>
			<li <%if(bigtabon.equals("4")){%>class="on"<%}%>><a href="../mypage/fundReceipt.jsp" id="mynav_dt">기부금 영수증</a></li>
			<li <%if(bigtabon.equals("5")){%>class="on"<%}%>><a href="../mypage/likeFund.jsp" id="mynav_dt">하고싶었던 후원</a></li>
			
		</ul>
	</div>