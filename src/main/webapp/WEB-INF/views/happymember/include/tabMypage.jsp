<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

	<div class="tabBigBox btab_6ea mt50 mb50">
		<ul>
			<li <%if(bigtabon.equals("1")){%>class="on"<%}%>><a href="mypage.happy" onclick="itemTable(1);">내 사연</a></li>
			<li <%if(bigtabon.equals("2")){%>class="on"<%}%>><a href="longDonate.happy">정기후원</a></li>
			<li <%if(bigtabon.equals("3")){%>class="on"<%}%>><a href="selectDeliveryList.happy">배송현황</a></li>
			<li <%if(bigtabon.equals("4")){%>class="on"<%}%>><a href="thankyouLetter.happy">감사편지 쓰기</a></li>
			<li <%if(bigtabon.equals("6")){%>class="on"<%}%>><a href="qna.happy">Q&A</a></li>
			<li <%if(bigtabon.equals("7")){%>class="on"<%}%>><a href="proofDocument.happy">증빙서류</a></li>
			<%-- <li <%if(bigtabon.equals("7")){%>class="on"<%}%>><a href="memLeave.jsp">탈퇴하기</a></li>
			<li <%if(bigtabon.equals("8")){%>class="on"<%}%>><a href="Aerin_qna.happy">Q&A</a></li> --%>
		</ul>
	</div>