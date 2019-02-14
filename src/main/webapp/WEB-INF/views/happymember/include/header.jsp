<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

	<!-- <div class="inner">inner S -->
		
		<!-- 로그인 후 -->
		<div class="myNavBox">
			<span class="mumyNavBox-logout"><i class="large lock open icon"></i><a href="logout.me">로그아웃</a></span>
		</div>
		
		<div class="d-day">
			<span class="d-day-count"><i class="bullhorn icon"></i>증빙서류 재 제출 D-day : 15일</span>
		</div>
		


		<!-- <span class="menuAll" onclick="openNav()"><img src="../happymember/images/gnb/ico_menu.png" alt="menu"></span>gnbmenu S

		<div id="myNav" class="overlay">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		  <div class="overlay-content">
			<p class="clear"><a href="/hyun/myPost/company/comInfo.jsp">회사 소개</a></p>
			<p><a href="/hyun/myPost/info/info.jsp">이용 안내</a></p>
			<p><a href="/hyun/myPost/board/allNoticeList.jsp">전체 공고</a></p>
			<p><a href="/hyun/myPost/board/todayNoticeList.jsp">오늘의 공고</a></p>
			<p><a href="/hyun/myPost/board/reviewList.jsp">후기게시판</a></p>
			<p><a href="/hyun/myPost/board/qnaWrite.jsp">문의하기</a></p>
			<p class="smMenu mt20">
				<span><a href="/hyun/myPost/member/joinSort.jsp">회원가입</a></span>
				<span> / </span>
				<span><a href="javascript:openpop();">로그인</a></span>
				<span> / </span>
				<span><a href="/hyun/myPost/mypage/myPage.jsp">마이페이지</a></span>
			</p>
		  </div>
		</div>// gnbmenu E

	</div>// inner E -->
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

<div class="layerWrap"><!-- layerWrap S-->
		<div class="layerContainer">
			<div class="xy">
				<div class="layerHead" id="layerHead"><p class="font24 mt20">로그인</p></div>
				<a href="#" class="font30 white firstClose layerClose">&times;</a>
				<div class="layerCon" id="layerCon">					
					<ul class="login wth350 mr_auto mt20 mb50">
						<li><label for=""></label><input id="" name="" class="" type="text" value="" placeholder="아이디를 입력하세요"></li>				
						<li><label for=""></label><input id="" name="" class="" type="text" value="" placeholder="비밀번호를 입력하세요"></li>
						<li class="mt10"><a class="bbtn db wth240">로그인</a></li>
						<li class="mt10">
							<span><a class="white" href="/hyun/myPost/member/joinSort.jsp">회원가입</a></span>
							<span class="ml30"><a class="white" href="/hyun/myPost/member/idpwList.jsp">아이디/비밀번호찾기</a></span>
						</li>
						<li class="mt30 white">카카오로그인자리</li>
						<li class="mt10 white">구글로그인자리</li>
					</ul>
				
				</div>
				<a href="#" class="lastClose layerClose">닫기</a>
			</div>
			<div class="dimBg"></div>
		</div> 
	</div><!--// layerWrap E-->	