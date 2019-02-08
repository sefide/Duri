<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="2";
%>
<jsp:include page="include/common.jsp"/>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<title>정기후원</title>
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
</style>
</head>
<body>


<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<%@ include file="include/myNav.jsp" %>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
	 <br>
		<%@ include file="include/tabMypage.jsp" %>
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
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table align="center">
     <tr>
      <td>&nbsp;</td>
      <td align="center" style="height:50px;"><b>제목</b></td>
      <td>
      	<div class="ui input">
 			<input type="text">
		</div>
	</td>
      <td>&nbsp;</td>
     </tr>

     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr><br>
    <tr>
      <td>&nbsp;</td>
      <td align="center" width="150px"><b>후원유형</b></td>
      <td><input type="radio" id="money" name="name" size="100px">금액후원
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" id="stuff" name="name">물품후원</td>
      <td>&nbsp;<br>
      <div id="button" class="textSilver">
		* 물품으로 받을 수 있는 후원은 물품후원을 선택해주세요!<br><br>
		</div></td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td align="center" style="height:50px;"><b>목표치 금액</b></td>
      <td>
     	<div class="ui input ">
 			<input type="number" style="height:25px; width:150px;">&nbsp;<b>원</b>
		</div>
	 </td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr>
      <td>&nbsp;</td>
      <td align="center" style="height:50px;"><b>펀딩 종료 기간</b></td>
      <td>
     	<select align="center" style="width:150px; height:30px;">
     		<option>1개월</option>
     		<option>3개월</option>
     		<option>6개월</option>
     	</select>
	 </td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     
     
     <tr>
      <td>&nbsp;</td>
      <td align="center"><b>내용</b></td>
      <td><textarea name="memo" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2"><input type=button value="등록">
       <input type=button value="취소">
      <td>&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>


		
		<div style="height: 100px;"></div>
		
		<div id="button" class="textSilver">
			* 정기후원은 자기소개를 바탕으로 진행되므로 변경할 내용이 있을 시 수정해주세요.<br><br>
			
			<button class="massive ui instagram button">자기소개 수정하기</button>
		</div>

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->


</body>
</html>