<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<div class="tabBigBox btab_8ea mt50 mb50">
		<ul>
			<li <%if(bigtabon.equals("1")){%>class="on"<%}%>><a href="mypage.jsp">내 사연</a></li>
			<li <%if(bigtabon.equals("2")){%>class="on"<%}%>><a href="deliList.jsp">정기후원</a></li>
			<li <%if(bigtabon.equals("3")){%>class="on"<%}%>><a href="uMatchingDeliList.jsp">배송현황</a></li>
			<li <%if(bigtabon.equals("4")){%>class="on"<%}%>><a href="chargeMoney.jsp">감사편지 쓰기</a></li>
			<li <%if(bigtabon.equals("5")){%>class="on"<%}%>><a href="payBackList.jsp">Q&A</a></li>
			<li <%if(bigtabon.equals("6")){%>class="on"<%}%>><a href="myQnaList.jsp">증빙서류</a></li>
			<%-- <li <%if(bigtabon.equals("7")){%>class="on"<%}%>><a href="memModify.jsp">회원정보수정</a></li>
			<li <%if(bigtabon.equals("8")){%>class="on"<%}%>><a href="memLeave.jsp">탈퇴하기</a></li> --%>
		</ul>
	</div>