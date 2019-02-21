<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link
	href="https://fonts.googleapis.com/css?family=Gamja+Flower|Nanum+Gothic:400,700,800|Nanum+Pen+Script|Poor+Story&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">
<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
.mynav_2{	
	margin-right:70px;
	font-size:30px !important;
	line-height: 1.5; 
	color: #fa8f3d !important; 
	font-weight: bold; 
	font-family: Nanum Pen Script; 
}
#container {
	
  	display: flex;
  	height: 200px;
  	width : 70%;
  	margin: 0 auto;
  	margin-top:20px;
	margin-bottom:20px;
	padding-top : 15px;
	padding-bottom:15px;
	background: rgb(242, 179, 78);
	line-height: 60px;
	border-radius: 0.5em;
}
#box-left {
	 flex: 1;
	 color: white;	  
	 text-align: left;
	 line-height: 60px;
	 font-size:23px !important;
	 padding :20px;
	 /* font-weight: bold;  */
	 /* font-family: Nanum Pen Script;  */
}
#box-center { 	
 	flex: 1;
 	color: white;
 	font-size:22px !important;
  	text-align: left; 	
  	display: table-cell;
	vertical-align: middle;	
	 padding :20px;
	/* font-weight: bold;  */
	/* font-family: Nanum Pen Script; */
	/* line-height: 60px; */
}
#box-right {
  	flex: 1;
  	color: white !important;
  	text-align: right; 	
  	display: table-cell;
	vertical-align: middle;
	line-height: 60px;
	font-size:20px !important;
	 padding :20px;
	/* font-weight: bold;  */
	/* font-family: Nanum Pen Script; */
}
.mt50 {
    margin-top: 100px !important;
}
#wrap {
    padding-top: 20px;  
}

.headerpoint{
	color: white; 
	font-size:20px; 
	margin-right: 10px;
}

.headerpoint:hover{
	color: black;
}


</style>	

<header style=" height: 50px; text-align: right; ">		
	<a class="mynav_2" href="updateInfo.nanum" >회원정보 수정</a>
	<a class="mynav_2" href="logout.me">로그아웃</a>
	<div id="container">	
		<div id='box-left'>
			<i class="handshake outline icon"></i>
			<span id='box-left' style="font-weight: bold; margin-left: 5px;">"<c:out value="${ sessionScope.loginUser2.mName }"/>"</span>님 반갑습니다!
		</div>
    	<div id='box-center'>
    		<c:choose>
    			<c:when test="${ sessionScope.loginUser2.mGoalNum+0 <= 4 }">
    				등급 : 씨앗두리<br>
    			</c:when>
    			<c:when test="${5 <= sessionScope.loginUser2.mGoalNum+0 && sessionScope.loginUser2.mGoalNum+0 < 7}">
    				등급 : 새싹두리<br>
    			</c:when>
    			<c:when test="${ 10 <= sessionScope.loginUser2.mGoalNum+0 }">
    				등급 : 열매두리<br>
    			</c:when>
    			<c:otherwise>
      				 등급이 아직 존재하지 않아요!<br>
        		</c:otherwise>
    		</c:choose>
    		
    		<c:if test=" 4 < ${ sessionScope.loginUser2.mGoalNum } < 7">
    			등급 : 새싹두리<br>
    		</c:if>
    		<c:if test=" 9 < ${ sessionScope.loginUser2.mGoalNum } ">
    			등급 : 열매두리<br>
    		</c:if>
    		
    		포인트 : <c:out value="${ sessionScope.loginUser2.mPoint }"/> 원 <br>
    		100% 달성 크라우드 펀딩 참여 횟수 : <c:out value="${ sessionScope.loginUser2.mGoalNum }"/> 회 <br>
    	</div>
    	<div id='box-right'>
    		<a href = "pointCharge.pm" class="headerpoint"> 포인트 충전</a><br>
    		<a href="pointReturnList.pm" class="headerpoint" >포인트 환불</a><br>
    		<a href="pointHistory.pm" class="headerpoint"> 포인트 내역</a><br>
    	</div>
	</div>
	
</header>


<script type="text/javascript"> 
//<![CDATA[
function openpop()
{
	  $(".layerWrap").attr("tabindex", "0").show().focus();
	  $(".layerClose").click(function(){
	  $(".layerWrap").removeAttr("tabindex").hide();
	  $(".openLayer").focus();
	  });  
	  $(".lastClose").focus(function(){
	   $(".layerWrap").append("<a href='javascript:void(0);' class='linkAppend'></a>");
	   $(".linkAppend").focus( function(){
	    $(".layerWrap").attr("tabindex", "0").focus();
	    $(".linkAppend").remove();
	   });
	  });
 }
 
//]]>
</script>
