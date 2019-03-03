<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="2";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<title>마이페이지>내 정보 수정</title>
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
		
		<div class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>내 정보수정</h1></div>
			<span>마이페이지 &gt; 내 정보 수정</span>
		</div>
		<br><br>
<form class="ui form" id="updateForm" action="updateMyInfo.me" method="POST">
  <h4 class="ui dividing header"  style="margin:10px;">ID</h4>
	<div class="field" style="margin:10px;">
    <div class="two fields">
      <div class="field">
        <input type="text" name="mid" placeholder="아이디를 입력하세요." value="${loginUser.mid }" style="height:40px" readonly>
      </div>
        <!-- <div class="ui button" tabindex="0">중복확인</div> -->
    </div>
  </div>

<h4 class="ui dividing header"  style="margin:10px;">비밀번호</h4>
	<div class="field" style="margin:10px;">
    <div class="two fields">
      <div class="field">
        <input type="password" name="mpwd" id="userPwd" placeholder="비밀번호를 입력하세요.">
      </div>

      <div class="field">
        <input type="password" id="mpwd2" placeholder="비밀번호를 확인하세요.">
      </div>
    </div>
    </div>



<h4 class="ui dividing header"  style="margin:10px;">이름 & 닉네임</h4>
  <div class="field" style="margin:10px;">
    <div class="two fields">
      <div class="field">
        <input type="text" name="mName" placeholder="이름을 입력하세요." value="${loginUser.mName }" style="height:40px" readonly>
      </div>
      
      <div class="field">
        <input type="text" name="mNickName" placeholder="닉네임을 입력하세요.(실명가능)"  value="${loginUser.mNickName }" style="height:40px" readonly>
      </div>
    </div>
  </div>
  
  
<h4 class="ui dividing header"  style="margin:10px;">성별 & 휴대폰 번호</h4>
  <div class="two fields"  style="margin:10px;">
    <div class="field">
      <label>Gender</label>
      <select class="ui fluid dropdown" name="mGender">
        <option value="" selected disabled>선택</option>
        <c:if test="${loginUser.mGender eq 'M' }">
    	<option value="M" selected>남</option>
    	<option value="F" >여</option>
    	</c:if>
    	<c:if test="${loginUser.mGender eq 'F' }">
    	<option value="M">남</option>
        <option value="F" selected>여</option>
		</c:if>

      </select>
    </div>
    <div class="field" >
      <label>Phone</label>
      <div class="ui field">
        <input type="hidden" name="country">
        	<c:if test="${ empty loginUser.mPhone}">
			 <input type="text" name="mPhone" placeholder="번호가 등록되어 있지 않습니다." style="height:40px">
			</c:if>
			<c:if test="${ !empty loginUser.mPhone}">
			<input type="text" name="mPhone" placeholder="${loginUser.mPhone }" style="height:40px">
			</c:if>
       </div>
    </div>
  </div>



  
  
<!-- <h4 class="ui dividing header"  style="margin:10px;">주민등록번호</h4>
  <div class="fields" style="margin:10px;">
     <div class="five wide field">
       <label>주민등록번호</label>
      <input type="text" name="userBirth" maxlength="6" placeholder="" style="height:40px;">
    </div>

    <div class="three wide field">
     
      <input type="text" name="userGender" maxlength="1" placeholder="" style="height:40px; width:40px"> <span>******</span>
    </div>

    
    </div> -->

    
    
<!--    <h4 class="ui dividing header" style="margin:10px;">증빙서류</h4>
   <div class="fields" style="margin:10px">

      <div class="two field" style="width:300px;">
          <label>증빙서류 유형:</label>
          <select class="ui fluid search dropdown" name="card[expire-month]">
            <option value="" selected disabled>선택</option>
            <option value="1">기초생활수급자</option>
            <option value="2">소년소녀가장</option>
            <option value="3">한부모가정</option>
          </select>
          	
        </div>
        <div class="field" style="width:300px;">
       
   			<input type="file" >
        </div>
    </div> -->
    <br><br><br><br>
  
  	<div align="center">
		 <button class="ui primary button" type="submit">
		   	수정하기
		</button>
		<button class="ui button" onclick="back();">
		  	취소하기
		</button>
	</div>

</form>

		
		
	</div><!--// inner E-->

</div>
</div>

<script>
	function back(){
		history.back();
	}
	
	function update(){
		$("#updateForm").submit();
	}
</script>
</body>
</html>