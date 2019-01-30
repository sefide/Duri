<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="1";
%>
<%@ include file="../include/common.jsp" %>


<title>마이페이지</title>
<%@ include file="../../common/css.jsp" %>
<style>
.nameArea{
	text-align: left;
	
}

</style>
</head>
<body>
<%@ include file="../../common/navi.jsp" %>
<%@ include file="../include/header.jsp" %>


<div id="wrap"><!-- Wrap S -->
<div id="subvisual">
	<div id="nameArea">
		이아진 행복두리님 반갑습니다.
	</div>
</div>
<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->

		<%@ include file="../include/tabMypage.jsp" %>

		<!-- <div class="titNavi">
			마이페이지
			<span>홈 &gt; 마이페이지</span>
		</div>
		 -->
		
		<ul class="mypgBox mt50">
			<li class="bx">
				<p class="font24">내 공고 목록</p>
				<ul class="boardShort">
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
				</ul>
			</li>
			<li class="bx">
				<p class="font24">충전/적립 내역</p>
				<ul class="boardShort">
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
				</ul>
			</li>
			<li class="bx mt30">
				<p class="font24">환전 내역</p>
				<ul class="boardShort">
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
				</ul>
			</li>
			<li class="bx mt30">
				<p class="font24">나의 문의내역</p>
				<ul class="boardShort">
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
					<li>&bull; <a href="#">배송합니다</a></li>
				</ul>
			</li>		
		</div>

	</div><!--// inner E-->
</div>




</div><!--// Wrap E-->


<%@ include file="../include/myNav.jsp" %>

</body>
</html>