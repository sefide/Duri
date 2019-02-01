<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link
	href="https://fonts.googleapis.com/css?family=Gamja+Flower|Nanum+Gothic:400,700,800|Nanum+Pen+Script|Poor+Story&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="semantic/dist/semantic.min.css">

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
  	margin-top:20px;
	margin-bottom:10px;
	margin-left:150px;
	margin-right:150px;
	padding-top : 15px;
	padding-bottom:10px;
	background: #ffc107;
	line-height: 60px;
	border-radius: 0.5em;
	/* font-family: Nanum Pen Script; */
}
#box-left {
	 /* background: red; */
	 flex: 1;
	 color: white;	 
	 text-align: center;
	 line-height: 60px;
	 font-size:25px !important;
	 /* font-weight: bold;  */
	 /* font-family: Nanum Pen Script;  */
}
#box-center { 	
 	flex: 1;
 	color: white;
 	font-size:25px !important;
  	text-align: left; 	
  	display: table-cell;
	vertical-align: middle;	
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
	/* font-weight: bold;  */
	/* font-family: Nanum Pen Script; */
}
.mt50 {
    margin-top: 100px !important;
}
#wrap {
    padding-top: 20px;  
}
</style>	

<header style="margin-top: 70px; height: 50px; text-align: right; ">		
	<a class="mynav_2" ref="#" >회원정보 수정</a>
	<a class="mynav_2" href="#">로그아웃</a>
	<div class="" id="container">	
		<div id='box-left'>이아진님 반갑습니다!</div>
    	<div id='box-center'>
    		등급 : 새싹두리<br>
    		포인트 : 50,000 원 <br>
    		후원참여 횟수 : 6 회 <br>
    	</div>
    	<div id='box-right'>
    		<a href="#" style="color: white; font-size:20px; margin-right: 10px;"> 포인트 충전</a><br>
    		<a href="#" style="color: white; font-size:20px; margin-right: 10px;"> 포인트 환급</a><br>
    		<a href="#" style="color: white; font-size:20px;  margin-right: 10px;"> 포인트 내역</a><br>
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
