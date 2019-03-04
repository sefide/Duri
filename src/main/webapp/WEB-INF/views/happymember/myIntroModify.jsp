<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="2";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<title>마이페이지>정기후원>자기소개수정</title>
<!-- 정기후원 -->

<style>
html {
  width: 100%;
  height: 100%;
}

body {	
   background:white; 
/*   background-image: url('/duri/resources/member/images/loginBg.png');
  background-repeat: no-repeat;
  background-size:contain;
  background-position: center; */
  bac
/*   background: -webkit-linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%);
  background: linear-gradient(45deg, rgba(66, 183, 245, 0.8) 0%, rgba(66, 245, 189, 0.4) 100%); */
  color: rgba(0, 0, 0, 0.6);
  font-family: "Roboto", sans-serif;
  font-size: 14px;
  line-height: 1.6em;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}



 #two{
	position: absolute;
	top: 150px; 
	left: 700px;
	font-size:60px;
	font-weight:bold;
	
}

#add{
	position: absolute;
	top: 150px; 
	left:830px;
	font-size:60px;
	font-weight:bold;
	
} 

#img1{
	width:120px;
	height:80px;
	position:absolute;
	top: 120px; 
	left:930px;
	font-size:60px;
	font-weight:bold;
}

#check{
	display:none;
}

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
input, select{
  margin-bottom:7px;
  background: rgba(0, 0, 0, 0.1);
  width: 100%;
  border: 0;
  border-radius: 4px;
  box-sizing: border-box;
  padding: 12px 20px;
  color: rgba(0, 0, 0, 0.6);
  font-family: inherit;
  font-size: inherit;
  font-weight: 500;

}

.form-group label {
  display: block;
  margin: 0 0 10px;
  color: rgba(0, 0, 0, 0.6);
  font-size: 12px;
  font-weight: 500;
  line-height: 1;
  text-transform: uppercase;
  letter-spacing: .2em;
}
.two .form-group label {
  color: #FFFFFF;
}
</style>
</head>
<body>

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
<form id="updatePrForm" action="updateIntroduce.happy" method="post">
	<input type="hidden" value="${member.mprNew}" id="mprNew"/>
		<div class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>자기소개 수정</h1></div>
			<span>마이페이지 &gt; 자기소개 수정</span>
		</div>
		<br><br>

    
     <h4 class="ui dividing header" style="margin:10px;">현재 자기소개</h4>
   	<div class="field" style="margin:10px" style="float:left">
        <div class="field" >
        <label></label><br>
   			<textarea cols="174" rows="10" style="resize:none" placeholder="입력하신 자기소개는 정기후원 게시판에서 보여집니다." readonly>${member.mpr}</textarea>
        </div>
    </div>
    
      <h4 class="ui dividing header" style="margin:10px;">자기소개 수정란</h4>
       <div class="field" style="margin:10px" style="float:left">
        <div class="field" >
        <label></label><br>
   			<textarea name="userNewPr" cols="174" rows="10" style="resize:none" placeholder="입력하신 자기소개로 수정됩니다."></textarea>
        </div>
    </div>
	
	<div align="center">
		<c:if test="${ loginUser.mTakeStatus ne 4 }">
		 <div onclick="updatePr();" class="ui primary button">수정하기</div>
		</c:if>
		<button onclick="return back();" class="ui button">취소하기</button>
	</div>
</form>

	</div><!--// inner E-->

</div>
</div>
<script>
	function back(){
		history.back();
		return false;
	}
	
	function updatePr(){
		if($("#mprNew").value == null){
			swal({
				title: "",
				text: "자기소개 수정을 신청 하시겠습니까?",
				icon: "warning",
				buttons: true,
				dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
				    swal({
				    	title: "수정 신청되었습니다.",
						text: "관리자의 승인을 기다려주세요!(1~7일 소요됩니다)",
				     	icon: "success",
				    }).then(function(){
				    	$("#updatePrForm").submit();
				    });
				    
				  } else {
				    swal("자기소개 수정신청을 취소합니다.");
				  }
				});
		
			}/* else{
				swal({
					title: "다시",
					text: "자기소개 수정 신청을 하시겠습니까?",
					icon: "warning",
					buttons: true,
					dangerMode: true,
					})
					.then((willDelete) => {
					  if (willDelete) {
					    swal({
					    	title: "수정 신청되었습니다.",
							text: "관리자의 승인을 기다려주세요!(1~7일 소요됩니다)",
					     	icon: "success",
					    }).then(function(){
					    	$("#updatePrForm").submit();
					    });
					    
					  } else {
					    swal("자기소개 수정신청을 취소합니다.");
					  }
					});
			}   
		} */

</script>
</body>
</html>