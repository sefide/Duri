<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="4";
%>
<%@ include file="include/common.jsp" %>

<title>충전하기</title>
<!-- 감사편지 쓰기 -->

</head>
<body>


<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<div id="subvisual"></div>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
	 
		<%@ include file="include/tabMypage.jsp" %>

		<p class="font30 bold tcen">충전하기</p>
		
		<div class="chargeBox">
			<dl>
				<dt class="font20 bold">사이버머니 5,000P</dt>
				<dd class="font18">5,000원(부가세별도)</dd>
				<dd class="mt5"><a class="bbtn db" href="#">충전하기</a></dd>
			</dl>

			<dl>
				<dt class="font20 bold">사이버머니 10,000P</dt>
				<dd class="font18">10,000원(부가세별도)</dd>
				<dd class="mt5"><a class="bbtn db" href="#">충전하기</a></dd>
			</dl>

			<dl>
				<dt class="font20 bold">사이버머니 20,000P</dt>
				<dd class="font18">20,000원(부가세별도)</dd>
				<dd class="mt5"><a class="bbtn db" href="#">충전하기</a></dd>
			</dl>
			<dl>
				<dt class="font20 bold">사이버머니 50,000P</dt>
				<dd class="font18">50,000원(부가세별도)</dd>
				<dd class="mt5"><a class="bbtn db" href="#">충전하기</a></dd>
			</dl>
		</div>

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->


<%@ include file="include/myNav.jsp" %>

</body>
</html>