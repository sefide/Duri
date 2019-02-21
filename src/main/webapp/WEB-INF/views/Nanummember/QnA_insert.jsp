<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA</title>
<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<%@ include file="../common/css.jsp" %>
<%@ include file="../common/navi.jsp" %>
<%@ include file="include/common.jsp" %>
<style>
.head {
	width: 80%;
	margin: 0 auto;
	margin-top: 70px;
}
.QnA-nocie {
	width: 70%;
	margin: 0 auto;
	margin-top: 30px;
	position: static;
}

.QnA-list {
	width: 70%;
	margin: 0 auto;
	margin-top: 30px;
	position: static;
}
#myTitle{
	margin-bottom: 20px;
	font-size:25px;
	color: rgba(250, 143, 61);
	font-weight: bold;	
}
	
.nontice{
	font-size:20px;
	color: rgba(250, 143, 61);
	margin-left: 30px;
}
.tableArea {
	width: 95%;
	margin: 0 auto;	
	padding-bottom: 20px;
}

.listTable{
	width: 96%;
	margin: 0 auto;
	color: #434343;
	border-top: 4px solid #FE9D35;
	margin-bottom: 10px;
}
.answerTable{
	width: 96%;
	margin: 0 auto;
	color: #434343;
	border-top: 8px solid #FE9D35;
	margin-bottom: 10px;
}

th {
	color: rgba(250, 143, 61);
	background: #FFEDBF;
	font-weight: bold;
	font-size: 17px;
}

tr {
	height: 50px;
}

td {
	font-size: 16px;
}
.tableTitle{
	border-bottom-color: rgba(250, 143, 61);
	color: rgba(250, 143, 61);
	font-weight: bold;
}
.writeBtn{
	width: auto;
	height : auto;
	background-color : rgba(250, 143, 61);
	color : white;
	font-weight : bold;
	margin-right: 20px;
}
</style>
</head>
<body>
	
	<div class="head">
		<hr>		
	</div>
	
	<!-- QnA 내용 -->
	<div class="QnA-nocie">
		<div id="myTitle"><i class="question icon"></i>QnA 등록하기</div>
	</div>
	<div class="QnA-list">
		<table class="listTable">
			<tr>
				<td class="tableTitle">제목</td>
				<td  style="width: 100%;">
				<div class="ui input" style="width: 90%;"><input type="text" placeholder="제목을 입력하여 주세요" maxlength="49" id="qTitle"></div></td>
			</tr>
			<%-- <tr>
				<td class="tableTitle">작성자</td>
				<td></td>
				<td class="tableTitle">작성일</td>
				<td><c:out value="${QnADetail.qDate}"/></td>
			</tr> --%>
			<tr>
				<td class="tableTitle">내용</td>
			</tr>
			<tr>
				<td colspan="2"><textarea rows="8" cols="150" placeholder="내용을 입력하여 주세요"  onkeyup="fnChkByte(this);" name="qContent" id="qContent" ></textarea> </td>
			</tr>			
		</table>
	</div>
	
	
	<div align="center" style="margin-top: 80px;"> 
	<button onclick="goBackQnAList();"  
		class="ui orange basic button"  style="font-size: 20px; margin-right : 10px;">등록하기</button>
	</div>
	<script>
	//제목 50자 미만
	$(document).ready(function(){
	    $('#qTitle').keyup(function(){
	        if ($(this).val().length > $(this).attr('maxlength')) {
	            alert('제목은 50자 미만까지만 쓰실수 있습니당!');
	            $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
	        }
	    });
	});
	//내용 790자 미만
	function fnChkByte(obj) {
    var maxByte = 1580; //최대 입력 바이트 수
    var str = obj.value;
    var str_len = str.length;
 
    var rbyte = 0;
    var rlen = 0;
    var one_char = "";
    var str2 = "";
 
    for (var i = 0; i < str_len; i++) {
        one_char = str.charAt(i);
 
        if (escape(one_char).length > 4) {
            rbyte += 2; //한글2Byte
        } else {
            rbyte++; //영문 등 나머지 1Byte
        }

        if (rbyte <= maxByte) {
            rlen = i + 1; //return할 문자열 갯수
        }
    } 
    if (rbyte > maxByte) {
        alert("한글 " + (maxByte / 2) + "자를 초과 입력할 수 없습니다.");
        str2 = str.substr(0, rlen); //문자열 자르기
        obj.value = str2;
        fnChkByte(obj, maxByte);
    } else {
        document.getElementById('byteInfo').innerText = rbyte;
    }
}
	//글 INSERT 후 QnA상세로 되돌아가기
	function goBackQnAList() {
		var qTitle = $("#qTitle").val();
		var qContent = $("#qContent").val();
		location.href="QnAInsert.nanum?qTitle="+qTitle+"&qContent="+qContent;
	}

	
</script>



</body>
</html>