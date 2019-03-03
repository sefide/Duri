<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="7";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<style>
	.h1 {color: darkorange; text-align: center;}
	a {color: #333;}
	#button {margin-left: 310px; width: 49.7%; height: 40px; font-size: 18px;}
	/* #proofDocument {margin:auto; width: 60%; height: 750px; background: lightgray; text-align: center;} */
	.d-day-plus {color: red;}
	.textSilver {margin-left:-9px; margin-top: 60px; width: 101.5%;}
	
	#file_name_textbox {float: left; height: 37px;}
	
	#fileName {width: 300px; font-size: 15px;}
	
	#file_input_box {
		margin-left:6px; 
		float: left; 
		position: relative; 
		width: 90px; 
		height: 37px; 
		overflow: hidden;
		}
	
	.file_input_button {
		top: 0px;
		background: #4169E1;
		color: white;
		border-style: solid;
		font-size: 15px;
		font-weight: 600;
	 	background: #1478CD ;
	}
	.file_input_hidden {
		font-size: 40px;
		position: absolute;
		right: 0px;
		top: 0px;
		opacity: 0;
	}
	

</style>

<title>마이페이지>증빙서류 관리</title>
<!-- 증빙서류 -->
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

		<div class="titNavi">
			<div style="float: left;" class="ptag"><h1><i class="chevron right icon"></i>내가 올린 증빙서류</h1></div>
			<span>마이페이지 &gt; 증빙 서류 현황</span>
		</div>
		<br>
		
		<table class="boardList mt30">
			<colgroup>
				<col style="width:6%;"><!-- No -->
				<col style="width:17%;"><!--  -->
				<col style="width:17%;"><!--  -->
				<col style="width:14%;"><!--  -->
				<col style="width:17%;"><!--  -->
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">증빙서류 최근 승인일</th>
				<th scope="col">증빙서류 제출 마감일</th>
				<th scope="col">D-day(남은기간)</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>${proofDocument.adate }</td>
				<td>${proofDocument.dday }</td>
				<c:choose>
				<c:when test="${proofDocument.finishdate lt (0)}">
				<td>D${proofDocument.finishdate}</td>
				</c:when>
				<c:when test="${proofDocument.finishdate eq (0)}">
				<td>D-day</td>
				</c:when>
				<c:otherwise>
				<td class="d-day-plus">재 제출 기간을 넘었습니다.</td>
				</c:otherwise>
				</c:choose>	
			</tr>
			</tbody>
		</table>
		<br><br><br><br><br><br><br>
		<div>
			<h1 class="h1">※ 증빙서류를 재 제출해주세요</h1><br>
			
		</div>
	<form id="uploadForm" action="proofDocumentUpload.happy" method="post" encType="multipart/form-data">	
		<input type="hidden" name="photoOrigin" value="${proofDocument.achangename }"/>
		<div style="margin-left: 290px;">
				<div class="fields" style="margin:10px">
					<div class="two field" style="width: 210px; float: left;">
						<select class="ui search dropdown" name="fundType">
							<option value="" selected disabled>증빙서류 유형선택</option>
							<option value="기초생활수급자">기초생활수급자</option>
							<option value="소년소녀가장">소년소녀가장</option>
							<option value="한부모가정">한부모가정</option>
						</select>
					</div>
					<div style="float: left;">
						<div class="ui input" id="file_name_textbox">
			  				<input type="text" id="fileName" readonly>
						</div>
						<div class="ui input" id="file_input_box">
							<input type="button" value="파일첨부" class="file_input_button"/>
			  				<input name="photo" type="file" class="file_input_hidden" 
			  				onchange="javascript:document.getElementById('fileName').value = this.value"/>
						</div>
					</div>
				</div>
			<!-- <div>
				<div class="ui input" id="file_name_textbox">
	  				<input type="text" id="fileName" readonly>
				</div>
				
				<div class="ui input" id="file_input_box">
					<input type="button" value="파일첨부" class="file_input_button"/>
	  				<input name="photo" type="file" class="file_input_hidden" 
	  				onchange="javascript:document.getElementById('fileName').value = this.value"/>
				</div>
			</div> -->
		</div>
		<div class="textSilver">
			<div onclick="upload();" id="button" class="massive ui instagram button" style="margin-top: 10px;">증빙서류 재 제출</div>
		</div>
	</form>	
		<br><br><br><br>
		
		<div id="proofDocument" align="center"><h1>증빙서류 예시</h1>
			<img alt="최근증빙서류 이미지" src="resources/formFiles/${proofDocument.achangename}" style="width: 600px; height: 800px;">
		</div>
		

		
	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>
<script>

function upload(){
	swal({
		  title: "증빙서류를 제출하시겠습니까?",
		  text: "",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
		    swal({
		    	title: "증빙서류가 제출되었습니다!",
				text: "관리자의 승인을 기다려주세요!(1~7일 소요됩니다)",
		     	icon: "success",
		    }).then(function(){
		    	$("#uploadForm").submit();
		    	console("성공"); 
		    });
		    
		  } else {
			swal("증빌서류 제출을 취소합니다.");
		  }
		});
	
}


</script>

</body>
</html>