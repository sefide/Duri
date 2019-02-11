<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="2";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<title>정기후원</title>
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
<form class="ui form">
  <h4 class="ui dividing header"  style="margin:10px;">ID</h4>
	<div class="field" style="margin:10px;">
    <div class="two fields">
      <div class="field">
        <input type="text" name="shipping[first-name]" placeholder="아이디를 입력하세요." value="wewe1596" style="height:40px">
      </div>
        <div class="ui button" tabindex="0">중복확인</div>

    </div>
  </div>

<h4 class="ui dividing header"  style="margin:10px;">비밀번호</h4>
	<div class="field" style="margin:10px;">
    <div class="two fields">
      <div class="field">
        <input type="password" name="shipping[first-name]" placeholder="비밀번호를 입력하세요.">
      </div>

      <div class="field">
        <input type="password" name="shipping[last-name]"  placeholder="비밀번호를 확인하세요.">
      </div>
    </div>
    </div>



<h4 class="ui dividing header"  style="margin:10px;">이름 & 닉네임</h4>
  <div class="field" style="margin:10px;">
    <div class="two fields">
      <div class="field">
        <input type="text" name="shipping[first-name]" placeholder="이름을 입력하세요." value="박은지" style="height:40px">
      </div>
      
      <div class="field">
        <input type="text" name="shipping[last-name]" placeholder="닉네임을 입력하세요.(실명가능)"  value="은디곤듀" style="height:40px">
      </div>
    </div>
  </div>
  
  
<h4 class="ui dividing header"  style="margin:10px;">성별 & 휴대폰 번호</h4>
  <div class="two fields"  style="margin:10px;">
    <div class="field">
      <label>Gender</label>
      <select class="ui fluid dropdown">
        <option value="" selected disabled>선택</option>
    	<option value="AL">남</option>
        <option value="AL">여</option>


      </select>
    </div>
    <div class="field" >
      <label>Phone</label>
      <div class="ui field">
        <input type="hidden" name="country">
      
       
			 <input type="text" name="shipping[first-name]" placeholder="(-)를 제외하고 입력하세요." value="01012345678" style="height:40px">
       </div>
    </div>
  </div>
  <h4 class="ui dividing header"  style="margin:10px;">Email</h4>

   
  <div class="fields"  style="margin:10px;">
    <div class="five wide field">
      <label>이메일주소</label><br>
      <input type="text" name="email" maxlength="10" placeholder="이메일 주소를 입력해주세요." value="cjdrud123" style="height:40px">
    </div>
     <div class="field">
     <label></label><label></label><br>
		@
    </div>
    <div class="three wide field">
      <label></label><br>
      <input type="text" name="card[cvc]" maxlength="3" placeholder="직접입력"  value="naver.com" style="height:40px">
    </div>
    <div class="seven wide field">
      <label></label><br>
      <div class="two fields">
        <div class="field">
          <select class="ui fluid search dropdown" name="card[expire-month]">
            <option value="" selected disabled>선택</option>
            <option value="1">daum.net</option>
            <option value="2">google.com</option>
            <option value="3">nate.com</option>
            <option value="4">naver.com</option>
          </select>
        </div>
         <div class="ui button" style="width:120px; height:35px;" id="email">이메일 인증</div>
      </div>
    </div>
  </div>
	<div class="field" style="margin:10px;" id="check">
    <div class="fields">
      <div class="field">
        <input type="text" name="shipping[first-name]" placeholder="인증번호를 입력하세요.">
      </div>
        <div class="ui button" tabindex="0">인증하기</div>

    </div>
  </div>
  
  
<h4 class="ui dividing header"  style="margin:10px;">주민등록번호</h4>
  <div class="fields" style="margin:10px;">
     <div class="five wide field">
       <label>주민등록번호</label>
      <input type="text" name="email" maxlength="6" placeholder="" style="height:40px;">
    </div>

    <div class="three wide field">
     
      <input type="text" name="card[cvc]" maxlength="1" placeholder="" style="height:40px; width:40px"> <span>******</span>
    </div>

    
    </div>
<h4 class="ui dividing header"  style="margin:10px;">주소</h4>
     <div class="seven wide field" style="margin:15px">
      <label>주소</label>
      <div class="two fields">
         <div class="field">
        <input type="text" name="shipping[first-name]"  style="height:40px;"  value="서울시 강남구">
      </div>
         <div class="ui button" style="width:120px; height:35px;" id="email">주소검색</div>
      </div>
       <div class="field">
           <input type="text" name="shipping[first-name]" placeholder="상세주소를 입력해주세요." value="남도빌딩 2층 kh정보교육원" style="height:40px;">  	
       </div>
    </div>

	<div class="field" style="margin:10px;" id="check">
    <div class="fields">
      <div class="field">
        <input type="text" name="shipping[first-name]" placeholder="인증번호를 입력하세요.">
      </div>
        <div class="ui button" tabindex="0">인증하기</div>

    </div>
  </div>
  
    
    
   <h4 class="ui dividing header" style="margin:10px; font-size:10px">증빙서류</h4>
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
    </div>
    
     <h4 class="ui dividing header" style="margin:10px; font-size:10px">자기소개</h4>
   	<div class="field" style="margin:10px">
        <div class="field" >
        <label></label><br>
   			<textarea name="memo" cols="230" rows="10" style="resize:none" placeholder="입력하신 자기소개는 정기후원 게시판에서 보여집니다." values="안녕하세요 자기소개입니다."></textarea>
        </div>
    </div>

  
  	<div align="center">
		 <button class="ui primary button">
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
</script>
</body>
</html>