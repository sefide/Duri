<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	

<header style="background-color: ; margin-top: 70px; height: 50px; text-align: right; ">
		
	<a style="margin-right: 30px; font-size: 20px; line-height: 3; color: #fa8f3d; font-weight: bold; ">회원정보 수정</a>
	<a style="margin-right: 60px; font-size: 20px; line-height: 3; color: #fa8f3d; font-weight: bold;">로그아웃</a>
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
