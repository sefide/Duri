<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="1";
%>
<%@ include file="include/common.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<title>마이페이지>내사연>사연신청하기</title>
<!-- 정기후원 -->


<style>
	a {color: #333;}
	.num {font-size: 15px;}
	#button{text-align: center;}
	.textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;}
	
	input[type='radio']{
		margin-top:-1px;
		margin-right:3px;
	}
	
	input[type='text']{
		height:25px;
		width:700px;
	}
	
	#listChoice{
		display:none;
	}
	
	#goalMoney,#goalMoney2,#goalMoney3,#goalMoney4,#goalThing,#goalThing2{
		display:none;
	}
</style>
</head>
<body>
<c:if test="${empty sessionScope.loginUser}">
	<c:set var="message" value="해당 페이지는 로그인을 해야 이용하실 수 있습니다." scope="request"></c:set>
	<jsp:forward page="../common/errorPage.jsp"/>
</c:if>
 
<c:if test="${not empty sessionScope.loginUser and loginUser.mtype == 'H'}">
<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<%@ include file="include/myNav.jsp" %>


<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
			<%@ include file="include/tabMypage.jsp" %>
	 <br>
		
		<!-- <div class="titNavi">
			내 공고 목록
			<span>홈 &gt; 마이페이지 &gt; 내 공고 목록</span>
		</div> -->
		
		<div class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>사연작성하기</h1></div>
			<span>마이페이지 &gt; 사연신청하기</span>
		</div>
		<br>
	
<table>
  <tr>
   <td>
<!--     <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table> -->

   <table align="center">
     <tr>
      <td>&nbsp;
      	<input type="hidden" id ="fWriter" value="${sessionScope.loginUser.mno}">
      	<input type="hidden" id ="mNick" value="${sessionScope.loginUser.mNickName}">
      </td>
      <td align="center" style="height:50px;"><b>제목</b></td>
      <td>
      	<div class="ui input">
 			<input type="text" id="fTitle">
		</div>
	</td>
      <td>&nbsp;</td>
     </tr>

     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr><br>
    <tr>
      <td>&nbsp;</td>
      <td align="center" width="180px"><b>후원유형</b></td>
      <td><input type="radio" id="ftype" value="MONEY" name="ftype" size="100px">금액후원
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" id="ftype" value="ITEM" name="ftype">물품후원</td>
      <td>&nbsp;<br>
      <div id="button" class="textSilver">
		* 물품으로 받을 수 있는 후원은 물품후원을 선택해주세요!<br><br>
		</div></td>
     </tr>
     

      <tr id="goalMoney" height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr id="goalMoney2">
      <td>&nbsp;</td>
      <td align="center" style="height:50px;"><b>금액후원 유형 선택</b></td>
      <td>
     	<select align="center" id="fValueType" name="fValueType" style="width:150px; height:30px;">
     		<option value="의료비">의료비</option>
     		<option value="교육비">교육비</option>
     		<option value="생활비">생활비</option>
     	</select>
	 </td>
	
     </tr>

     <tr id="goalMoney3" height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr id="goalMoney4">
      <td>&nbsp;</td>
      <td align="center" style="height:50px;"><b>목표치 금액</b></td>
      <td>
     	<div class="ui input ">
 			<input type="number" id="fValue" name="fValue" style="height:25px; width:150px;">&nbsp;<b>원</b>
		</div>
	 </td>
     </tr>
     
     
       <tr id="goalThing" height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr id="goalThing2">
      <td>&nbsp;</td>
      <td align="center" style="height:50px;"><b>목표물품설정</b></td>
      <td style="width:800px;">
     	<div class="ui input ">
 			<select align="center" id="fd_ino" style="width:160px; height:30px;">
 				<option value="0">선택안함</option>
 				<option value="1">생리대</option>
 				<option value="2">스킨로션세트</option>
 				<option value="3">라면</option>
 				<option value="4">쌀</option>
 				<option value="5">스팸</option>
 				<option value="6">학용품세트</option>
 				<option value="7">의류(속옷)</option>
 				<option value="8">의류(양말)</option>
 				<option value="9">주방세제</option>
 				<option value="10">샴푸린스</option>
 				<option value="11">비누</option>
 				<option value="12">치약칫솔</option>
 				<option value="13">수건</option>
 				<option value="14">이불</option>
 				<option value="15">물</option>
 				<option value="16">에프킬라</option>
 				<option value="17">휴지</option>
 				<option value="18">연탄10장</option>
 				<option value="19">클렌징폼&바디로션</option>
 			</select>
 			&nbsp;&nbsp;
 			<input type="text" id="fdValue" name="fdValue" maxlength="2" style=" width:65px" value="0"><b>개</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 			
 				<select align="center" id="fd_ino2" style="width:160px; height:30px;">
 				<option value="0">선택안함</option>
 				<option value="1">생리대</option>
 				<option value="2">스킨로션세트</option>
 				<option value="3">라면</option>
 				<option value="4">쌀</option>
 				<option value="5">스팸</option>
 				<option value="6">학용품세트</option>
 				<option value="7">의류(속옷)</option>
 				<option value="8">의류(양말)</option>
 				<option value="9">주방세제</option>
 				<option value="10">샴푸린스</option>
 				<option value="11">비누</option>
 				<option value="12">치약칫솔</option>
 				<option value="13">수건</option>
 				<option value="14">이불</option>
 				<option value="15">물</option>
 				<option value="16">에프킬라</option>
 				<option value="17">휴지</option>
 				<option value="18">연탄10장</option>
 				<option value="19">클렌징폼&바디로션</option>
 			</select>
 			&nbsp;&nbsp;
 			<input type="text" id="fdValue2" name="fdValue" maxlength="2" style=" width:65px" value="0"><b>개</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 				
 				<select align="center" id="fd_ino3" style="width:160px; height:30px;">
 				<option value="0">선택안함</option>
 				<option value="1">생리대</option>
 				<option value="2">스킨로션세트</option>
 				<option value="3">라면</option>
 				<option value="4">쌀</option>
 				<option value="5">스팸</option>
 				<option value="6">학용품세트</option>
 				<option value="7">의류(속옷)</option>
 				<option value="8">의류(양말)</option>
 				<option value="9">주방세제</option>
 				<option value="10">샴푸린스</option>
 				<option value="11">비누</option>
 				<option value="12">치약칫솔</option>
 				<option value="13">수건</option>
 				<option value="14">이불</option>
 				<option value="15">물</option>
 				<option value="16">에프킬라</option>
 				<option value="17">휴지</option>
 				<option value="18">연탄10장</option>
 				<option value="19">클렌징폼&바디로션</option>
 			</select>
 			&nbsp;&nbsp;
 			<input type="text" id="fdValue3" name="fdValue" maxlength="2" style=" width:65px" value="0"><b>개</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
	 </td>
     </tr>
     
     
     
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center" style="height:50px;"><b>펀딩 종료 기간</b></td>
      <td>
     	<select align="center" name="mLeftDay" id="mLeftDay" style="width:150px; height:30px;">
     		<option disabled selected>기간선택</option>
     		<c:choose>
     		<c:when test="${changestart*(-1) < 15 }">
     		<option>15</option>
     		<option disabled>30</option>
     		<option disabled>60</option>
     		<option disabled>90</option>
     		<option disabled>120</option>
     		<option disabled>150</option>
     		<option disabled>170</option>
     		</c:when>
     		<c:when test="${changestart*(-1) < 30}">
     		<option>15</option>
     		<option>30</option>
     		<option disabled>60</option>
     		<option disabled>90</option>
     		<option disabled>120</option>
     		<option disabled>150</option>
     		<option disabled>170</option>
     		</c:when>
     		<c:when test="${changestart*(-1) < 60 }">
     		<option>15</option>
     		<option>30</option>
     		<option disabled>60</option>
     		<option disabled>90</option>
     		<option disabled>120</option>
     		<option disabled>150</option>
     		<option disabled>170</option>
     		</c:when>
     		<c:when test="${changestart*(-1) < 90 }">
     		<option>15</option>
     		<option>30</option>
     		<option>60</option>
     		<option disabled>90</option>
     		<option disabled>120</option>
     		<option disabled>150</option>
     		<option disabled>170</option>
     		</c:when>
     		<c:when test="${changestart*(-1) < 120 }">
     		<option>15</option>
     		<option>30</option>
     		<option>60</option>
     		<option>90</option>
     		<option disabled>120</option>
     		<option disabled>150</option>
     		<option disabled>170</option>
     		</c:when>
     		<c:when test="${changestart*(-1) < 150 }">
     		<option disabled>15</option>
     		<option>30</option>
     		<option>60</option>
     		<option>90</option>
     		<option>120</option>
     		<option disabled>150</option>
     		<option disabled>170</option>
     		</c:when>
     		<c:when test="${changestart*(-1) < 170 }">
     		<option disabled>15</option>
     		<option>30</option>
     		<option>60</option>
     		<option>90</option>
     		<option>120</option>
     		<option>150</option>
     		<option disabled>170</option>
     		</c:when>
     		</c:choose>
     	</select>
	 </td>
	 <td>&nbsp;<br>
      <div id="button" class="textSilver">
		* 펀딩종료 날짜는 관리자 승인 날짜로부터 ~ 선택일수까지입니다.
		</div></td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     
     
     <tr>
      <td>&nbsp;</td>
      <td align="center" style="height:300px;"><b>후원 게시글 내용</b></td>
      <td><textarea id="fContent" cols="110" rows="18" style="resize:none"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>

     </tr>
    </table>

   </td>
  </tr>
 </table>
	<div align="center">
		 <div onclick="writeCloud();" class="ui primary button">
		   	사연등록
		</div>
		<button class="ui button">
		  	취소하기
		</button>
	</div>

		
		<div style="height: 100px;"></div>
		
		
	</div><!--// inner E-->
</div>


<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
var ftype = null;
 $("input[type=radio]").click(function () {
	    if($(this).prop("checked")) {  
	    	ftype=$(this).val();
	    	if($(this).val()=="MONEY"){
	    		$("#goalMoney").show();
	    		$("#goalMoney2").show();
	    		$("#goalMoney3").show();
	    		$("#goalMoney4").show();
	    		$("#goalThing").hide();
		    	$("#goalThing2").hide();
	    		
	    	}else{
	    		ftype=$(this).val();
	    		console.log(ftype);
	    		$("#goalThing").show();
		    	$("#goalThing2").show();
		    	$("#goalMoney").hide();
	    		$("#goalMoney2").hide();
	    		$("#goalMoney3").hide();
	    		$("#goalMoney4").hide();
	    			
	    			
	    		}
	    	}
	});


 
	function writeCloud(){
		
		var fWriter = $("#fWriter").val();
		var mNick = $("#mNick").val();
		var fTitle = $("#fTitle").val();
		var fValueType =  $("#fValueType").val();
		var fValue =  $("#fValue").val();
		var fContent =  $("#fContent").val();
		
		var fd_ino = $("#fd_ino").val();
		var fd_ino2 = $("#fd_ino2").val();
		var fd_ino3 = $("#fd_ino3").val();
		var fdValue =  $("#fdValue").val();
		var fdValue2 =  $("#fdValue2").val();
		var fdValue3 =  $("#fdValue3").val();
		var mLeftDay =  $("#mLeftDay").val();
		
		
		 swal({
			  title: "작성완료!",
			  text: "관리자 승인을 기다려주세요!",
			  icon: "success"
			  }).then(function(){ 
 		
	switch (ftype) {

					case "MONEY":
						console.log("/" + fWriter + "/" + mNick + "/" + fTitle
								+ "/" + ftype + "/" + fValueType + "/" + fValue
								+ "/" + fContent + "/" + mLeftDay);
						console.log(fTitle + ftype);

						location.href = "writeCloud.bo?fWriter=" + fWriter
								+ "&mNick=" + mNick + "&fTitle=" + fTitle
								+ "&ftype=" + ftype + "&fValueType="
								+ fValueType + "&fValue=" + fValue
								+ "&fContent=" + fContent + "&mLeftDay=" + mLeftDay;
						break;

					case "ITEM":
						console.log("/" + fWriter + "/" + mNick + "/" + fTitle
								+ "/" + ftype + "/" + fd_ino + "/" + fd_ino2
								+ "/" + fd_ino3 + "/" + fdValue + "/"
								+ fdValue2 + "/" + fdValue3 + "/" + fContent);
						console.log(fTitle + ftype);

						location.href = "writeCloud2.bo?fWriter=" + fWriter
								+ "&mNick=" + mNick + "&fTitle=" + fTitle
								+ "&ftype=" + ftype + "&fd_ino=" + fd_ino
								+ "&fd_ino2=" + fd_ino2 + "&fd_ino3=" + fd_ino3
								+ "&fdValue=" + fdValue + "&fdValue2="
								+ fdValue2 + "&fdValue3=" + fdValue3
								+ "&fContent=" + fContent + "&mLeftDay=" + mLeftDay;
						break;

					}
					
				});

	}
	
	$(document).ready(function(){
		$("#fContent").on('keyup',function(){
			if($(this).val.length > 200){
				alert("200자 이상은 잘립니다!");
				$(this).val($(this).val().substring(0,200));
			}
		})
	})

	
	
</script>
</body>
</html>