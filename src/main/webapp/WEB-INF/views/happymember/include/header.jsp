<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>


<header>

<style>
	.ddayPtag {font-size: 20px; font-weight: 600; color:darkorange !important; margin-top: 5%;}
	.ddayPtag2 {font-size: 20px; font-weight: 600; color:red !important; margin-top: 5%;}
	.d-day-count {font-size: 20px; font-weight: 600; color: gray !important; margin-top: 5%}
	.d-day-count2 {font-size: 20px; font-weight: 600; color: red !important; margin-top: 5%}
	
</style>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

		
		<!-- 로그인 후 -->
		<div class="myNavBox">
			<span class="mumyNavBox-logout"><i class="large lock open icon"></i><a href="logout.me">로그아웃</a></span>
		</div>
		<c:choose>
		<c:when test="${changestart le (-1) }">
			<div class="d-day">
				<span class="d-day-count"><i class="bullhorn icon"></i>증빙서류  <span class="ddayPtag">재 제출 시작일까지 D${changestart }</span>일 남았습니다.</span>
			</div>
		</c:when>
		<c:when test="${changestart ge (0) && finishdate le (-1)}">
			<div class="d-day">
				<span class="d-day-count"><i class="bullhorn icon"></i>증빙서류 <span class="ddayPtag2">재 제출기간 마감까지 D${finishdate}</span>일 남았습니다.</span>
			</div>
		</c:when>
		<c:when test="${finishdate gt (0) }">
			<div class="d-day2">
				<span class="d-day-count2"><i class="bomb icon"></i>증빙서류 유효기간이 지났습니다. 반드시 재 제출해주세요.</span>
			</div>
		</c:when>
		</c:choose>

</header>


<script type="text/javascript"> 
/*  */

</script>