<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<div class="tabBigBox btab_8ea mt50 mb50">
		<ul>
			<li <%if(bigtabon.equals("1")){%>class="on"<%}%>><a href="../mypage/mypage.jsp">크라우드펀딩현황</a></li>
			<li <%if(bigtabon.equals("2")){%>class="on"<%}%>><a href="../mypage/directFund.jsp">정기후원현황</a></li>
			<li <%if(bigtabon.equals("3")){%>class="on"<%}%>><a href="../mypage/letter.jsp">행복두리의 편지</a></li>
			<li <%if(bigtabon.equals("4")){%>class="on"<%}%>><a href="../mypage/fundReceipt.jsp">기부금 영수증</a></li>
			<li <%if(bigtabon.equals("5")){%>class="on"<%}%>><a href="../mypage/likeFund.jsp">하고싶었던 후원</a></li>
			
		</ul>
	</div>