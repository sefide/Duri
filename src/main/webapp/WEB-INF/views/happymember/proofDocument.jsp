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
	a {color: #333;}
	#button {text-align: center;}
	#proofDocument {margin:auto; width: 60%; height: 750px; background: lightgray; text-align: center;}
	.d-day-plus {color: red;}



.where {
  display: block;
  margin: 25px 15px;
  font-size: 11px;
  color: #000;
  text-decoration: none;
  font-family: verdana;
  font-style: italic;
} 

.filebox input[type="file"] {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}

.filebox span {
    display: inline-block;
    padding: .5em .75em;
    color: #999;
    font-size: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #fdfdfd;
    cursor: pointer;
    border: 1px solid #ebebeb;
    border-bottom-color: #e2e2e2;
    border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
    display: inline-block;
    padding: .5em .75em;
    font-size: inherit;
    font-family: inherit;
    line-height: normal;
    vertical-align: middle;
    background-color: #f5f5f5;
  border: 1px solid #ebebeb;
  border-bottom-color: #e2e2e2;
  border-radius: .25em;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}

.filebox.bs3-primary sapn {
  color: #fff;
    background-color: #337ab7;
    border-color: #2e6da4;
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
				<th scope="col">증빙서류 승인일</th>
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
		<br><br><br><br>
		
		<div class="titNavi">
			<div style="float: left;" class="ptag"><h1><i class="chevron right icon"></i>증빙서류 제 제출</h1></div>
		</div>
		<br><br>
		
		<div>	
			<div class="fields" style="margin:10px">
				<div class="two field" style="width: 300px; float: left;">
				<label>증빙서류 유형:</label>
				<select class="ui search dropdown">
					<option value="" selected disabled>증빙서류 유형선택</option>
					<option value="1">기초생활수급자</option>
					<option value="2">소년소녀가장</option>
					<option value="3">한부모가정</option>
				</select>
				</div>
			</div>
		</div>
		<div class="filebox bs3-primary">
                            <input class="upload-name" value="파일선택" disabled="disabled">

                            <span for="ex_filename">업로드</span> 
                          <input type="file" id="ex_filename" class="upload-hidden"> 
                        </div>



		<br><br><br><br>
		
		<div id="proofDocument"><h1>증빙서류 예시</h1></div>
		

		
	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>
<script>

 $(document).ready(function(){
  var fileTarget = $('.filebox .upload-hidden');

    fileTarget.on('change', function(){
        if(window.FileReader){
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }

        $(this).siblings('.upload-name').val(filename);
    });
}); 
	

</script>

</body>
</html>