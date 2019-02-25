<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="kr">
	<head>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
	<meta charset="UTF-8">
	<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<title>행복두리 회원가입</title>

<style rel="stylesheet">
html {
  width: 100%;
  height: 100%;
}

body {	
   background:#FFFFA1; 
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

.overlay, .form-panel.one:before {
  position: absolute;
  top: 0;
  left: 0;
  display: none;
  background: rgba(0, 0, 0, 0.8);
  width: 100%;
  height: 100%;
}

.form {
  z-index: 15;
  position: relative;
  background: #FFFFFF;
  width: 900px;
  border-radius: 4px;
 /*  box-shadow: 0 0 30px rgba(0, 0, 0, 0.1); */
  box-sizing: border-box;
  margin: 100px auto 10px;
  overflow: hidden;
}
.form-toggle {
  z-index: 10;
  position: absolute;
  top: 60px;
  right: 60px;
  background: #FFFFFF;
  width: 60px;
  height: 60px;
  border-radius: 100%;
  -webkit-transform-origin: center;
      -ms-transform-origin: center;
          transform-origin: center;
  -webkit-transform: translate(0, -%) scale(0);
      -ms-transform: translate(0, -25%) scale(0);
          transform: translate(0, -25%) scale(0);
  opacity: 0;
  cursor: pointer;
  -webkit-transition: all 0.3s ease;
          transition: all 0.3s ease;
}
.form-toggle:before, .form-toggle:after {
  content: '';
  display: block;
  position: absolute;
  top: 50%;
  left: 50%;
  width: 30px;
  height: 4px;
  background: yellowgreen;
  -webkit-transform: translate(-50%, -50%);
      -ms-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}
.form-toggle:before {
  -webkit-transform: translate(-50%, -50%) rotate(45deg);
      -ms-transform: translate(-50%, -50%) rotate(45deg);
          transform: translate(-50%, -50%) rotate(45deg);
}
.form-toggle:after {
  -webkit-transform: translate(-50%, -50%) rotate(-45deg);
      -ms-transform: translate(-50%, -50%) rotate(-45deg);
          transform: translate(-50%, -50%) rotate(-45deg);
}
.form-toggle.visible {
  -webkit-transform: translate(0, -25%) scale(1);
      -ms-transform: translate(0, -25%) scale(1);
          transform: translate(0, -25%) scale(1);
  opacity: 1;
}
.form-group {
  align: center;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
      -ms-flex-wrap: wrap;
          flex-wrap: wrap;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
  margin: 0 0 20px;
}
.form-group:last-child {
  margin: 0;
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
.form-group input {
  outline: none;
  display: block;
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
  line-height: inherit;
  -webkit-transition: 0.3s ease;
          transition: 0.3s ease;
}
.form-group input:focus {
  color: rgba(0, 0, 0, 0.8);
}
.two .form-group input {
  color: #FFFFFF;
}
.two .form-group input:focus {
  color: #FFFFFF;
}
.form-group button {
  outline: none;
  background: yellowgreen;
  width: 100%;
  border: 0;
  border-radius: 4px;
  padding: 12px 40px;
  color: #FFFFFF;
  font-family: inherit;
  font-size: inherit;
  font-weight: 500;
  line-height: inherit;
  text-transform: uppercase;
  cursor: pointer;
}
.two .form-group button {
  background: #FFFFFF;
  color: yellowgreen;
}

#idCheckBtn{
	border:1px solid white;
	background: #FFFFFF;
  	color: yellowgreen;
}
#idCheckBtn:hover{

	background: yellowgreen;
  	color: #FFFFFF;
}

.form-group .form-remember {
  font-size: 12px;
  font-weight: 400;
  letter-spacing: 0;
  text-transform: none;
}
.form-group .form-remember input[type='checkbox'] {
  display: inline-block;
  width: auto;
  margin: 0 10px 0 0;
}
.form-group .form-recovery {
  color: #4285F4;
  font-size: 12px;
  text-decoration: none;
}
.form-panel {
  padding: 60px calc(5% + 60px) 60px 60px;
  box-sizing: border-box;
}
.form-panel.one:before {
  content: '';
  display: block;
  opacity: 0;
  visibility: hidden;
  -webkit-transition: 0.3s ease;
          transition: 0.3s ease;
}
.form-panel.one.hidden:before {
  display: block;
  opacity: 1;
  visibility: visible;
}
.form-panel.two {
  z-index: 5;
  position: absolute;
  top: 0;
  left: 95%;
  background: yellowgreen;
  width: 100%;
  min-height: 100%;
  padding: 60px calc(10% + 60px) 60px 60px;
  -webkit-transition: 0.3s ease;
          transition: 0.3s ease;
  cursor: pointer;
}
.form-panel.two:before, .form-panel.two:after {
  content: '';
  display: block;
  position: absolute;
  top: 60px;
  left: 1.5%;
  background: rgba(255, 255, 255, 0.2);
  height: 30px;
  width: 2px;
  -webkit-transition: 0.3s ease;
          transition: 0.3s ease;
}
.form-panel.two:after {
  left: 3%;
}
.form-panel.two:hover {
  left: 93%;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
.form-panel.two:hover:before, .form-panel.two:hover:after {
  opacity: 0;
}
.form-panel.two.active {
  left: 10%;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  cursor: default;
}
.form-panel.two.active:before, .form-panel.two.active:after {
  opacity: 0;
}
.form-header {
  margin: 0 0 40px;
}
.form-header h1 {
  padding: 4px 0;
  color: yellowgreen;
  font-size: 24px;
  font-weight: 700;
  text-transform: uppercase;
}
.two .form-header h1 {
  position: relative;
  z-index: 40;
  color: #FFFFFF;
}

.pen-footer {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
  width: 600px;
  margin: 20px auto 100px;
}
.pen-footer a {
  color: #FFFFFF;
  font-size: 12px;
  text-decoration: none;
  text-shadow: 1px 2px 0 rgba(0, 0, 0, 0.1);
}
.pen-footer a .material-icons {
  width: 12px;
  margin: 0 5px;
  vertical-align: middle;
  font-size: 12px;
}

.cp-fab {
  background: #FFFFFF !important;
  color: #4285F4 !important;
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


</style>
</head>
<body>
<a id="two" style="color:orange">둘이</a><a id="add" style="color:yellowgreen">두리</a>
<img src = "/duri/resources/board/images/main.png" id="img1">
<br><br><br><br><br>
<!-- Form-->

  

<form class="ui form" action="insert2.me" method="POST" name = "sub1" id="sub1" style="background: none;" encType="multipart/form-data">
	<div class="field" style="margin:10px;">
    <label>ID</label>
    <div class="two fields">
      <div class="field">
        <input type="text" name="mid" id="mid" placeholder="아이디를 입력하세요.">
      </div>
        <div class="ui button" onclick="duplicationCheck();" tabindex="0">중복확인</div>

    </div>
  </div>


  <div class="field" style="margin:10px;">
    <label>Name</label>
    <div class="two fields">
      <div class="field">
        <input type="text" name="mName" id="mName" placeholder="이름을 입력하세요."  style="width:100%">
      </div>
      
      <div class="field" align="right" style="width:300px">
        <input type="text" name="mNickName" id="mNick" placeholder="닉네임을 입력하세요." style="width:300px">
      </div>
       <div class="ui button" onclick="duplicationCheckNick();" style="width:110px; margin-left:15px" tabindex="0">중복확인</div>
    </div>
  </div>
  
	<div class="field" style="margin:10px;">
    <label>Password</label>
    <div class="two fields">
      <div class="field">
        <input type="password" name="mpwd" id="mpwd" placeholder="비밀번호를 입력하세요." required>
      </div>

      <div class="field">
        <input type="password" name="mpwd2" id="mpwd22" placeholder="비밀번호를 확인하세요." required>
      </div>
    </div>
    </div>

 
  <div class="two fields"  style="margin:10px;">
    <div class="field">
      <label>Gender</label>
      <select name="mGender" id="mGender" class="ui fluid dropdown">
        <option value="" selected disabled>선택</option>
    	<option value="M">남</option>
        <option value="F">여</option>


      </select>
    </div>
    <div class="field" >
      <label>Phone</label>
      <div class="ui field">
        <input type="hidden" name="country">
      
       
			 <input type="text" name="mPhone" id="mPhone" placeholder="(-)를 제외하고 입력하세요.">
       </div>
    </div>
  </div>
  <h4 class="ui dividing header"  style="margin:10px;">Email</h4>

   
  <div class="fields"  style="margin:10px;">
    <div class="five wide field">
      <label>이메일주소</label>
      <input type="text" name="email1" id="email1" maxlength="10" placeholder="이메일 주소를 입력해주세요.">
    </div>
     <div class="field">
     <label></label><label></label><br>
		@
    </div>
    <div class="three wide field">
      <label></label><br>
      <input type="text" name="email2" id="email2"  placeholder="직접입력">
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
         <div class="ui button" style="width:120px; height:35px;" id="sendEmail">이메일 인증</div>
      </div>
    </div>
  </div>
	<div class="field" style="margin:10px;" id="check">
    <div class="fields">
      <div class="field">
        <input type="text"  name="check1" id="check1" placeholder="인증번호를 입력하세요.">
      </div>
        <div class="ui button" id="check2" tabindex="0">인증하기</div>
		<input type="hidden" name="email" id="email">
    </div>
  </div>

  
  
  <div class="fields" style="margin:10px;">
     <div class="five wide field">
       <label>생년월일</label>
      <input type="Date" name="mBirthDay" id="mBirthDay" maxlength="6" placeholder="">
    </div>

    
    </div>

     <div class="seven wide field" style="margin:15px">
      <label>주소</label>
      <div class="two fields">
         <div class="field">
        <input type="text" name="mAddress1" id="mAddress1" placeholder="">
      </div>
         <div class="ui button" style="width:120px; height:35px;" id="mAdd">주소검색</div>
      </div>
      
       <div class="two fields">
          <div class="field">
           <input type="text" name="mAddress2" id="mAddress2" placeholder="주소를 입력해주세요." style="width:300px;"> 
   		</div> 
		<div class="field">
           <input type="text" name="mAddress3" id="mAddress3" placeholder="상세주소를 입력해주세요." style="width:400px;margin-left:100px;">  	
			<input type="hidden" name="mAddress" id="mAddress">
		</div>
	</div>
    </div>

	
  
    
    
   <h4 class="ui dividing header" style="margin:10px; font-size:10px">증빙서류</h4>
   <div class="fields" style="margin:10px">

      <div class="two field" style="width:300px;">
          <label>증빙서류 유형:</label>
          <select class="ui fluid search dropdown" name="mFundtype" id="mFundtype">
            <option value="" selected disabled>선택</option>
            <option value="기초생활수급자">기초생활수급자</option>
            <option value="소년소녀가장">소년소녀가장</option>
            <option value="한부모가정">한부모가정</option>
          </select>
          	
        </div>
        <div class="field" style="width:300px;">
        <label></label><br>
   			<input type="file" id="photo" name="photo">
        </div>
        <div class="field" style="width:300px;">
        <br><label>증빙서류는 최대 6개월까지 보관 됩니다.<br></label>
   	
        </div>
    </div>
    
     <h4 class="ui dividing header" style="margin:10px; font-size:10px">자기소개</h4>
   	<div class="field" style="margin:10px">
        <div class="field" >
        <label></label><br>
   			<textarea id="mpr" name="mpr" cols="230" rows="10" style="resize:none" placeholder="입력하신 자기소개는 정기후원 게시판에서 보여집니다."></textarea>
        </div>
    </div>

  

</form>
		    
  	<div align="center">
		 <button onclick="erchk();" class="ui primary button">
		   	회원가입
		</button>
		<button class="ui button" onclick="location.href='Eunji_happyLogin.me'">
		  	취소하기
		</button>
	</div>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">


	$("#email").click(function(){

		$("#check").show();

	});

	//아이디 중복체크
	var i = 0;
	function duplicationCheck(){
		var mid2=$("#mid").val();
		console.log(mid2);
		if(mid2 == ""){
			
			swal("아이디를 입력해주세요!");
		}else{
		$.ajax({
			url:"duplicationCheck.me",
			type:"post",
			data:{mid2:mid2},
			success:function(data){
				console.log(data);
				  if (data > 0) {
	                   console.log(data);
	                   swal("존재하는 아이디 입니다!");
	                   $("#mid").val(""); 
	    
	                } else{
	                    swal("사용가능한 아이디입니다.");
	                    i = 1;
	                }
			},
			error:function(status){
				console.log(status);
			}
			
		});
		
		
		return false;
	}	
	}

	//아이디 중복체크
	var j = 0;
	function duplicationCheckNick(){
		var mNick=$("#mNick").val();
		console.log(mNick);
		if(mNick == ""){
			
			swal("닉네임을 입력해주세요!");
		}else{
		$.ajax({
			url:"duplicationCheckNick.me",
			type:"post",
			data:{mNick:mNick},
			success:function(data){
				console.log(data);
				  if (data > 0) {
	                   console.log(data);
	                   swal("존재하는 닉네임 입니다!");
	                   $("#mNick").val(""); 
	    
	                } else{
	                    swal("사용가능한 닉네임입니다.");
	                    j = 1;
	                }
			},
			error:function(status){
				console.log(status);
			}
			
		});
		
		
		return false;
	}	
	}
	
	
	var email = null;
	var m = null;
	//이메일 인증 버튼 클릭시 랜덤 번호 전송
	$("#sendEmail").click(function(){
		if($("#email1").val()=="" || $("#email2").val()==""){
			swal("이메일을 입력해주세요!");
		}else{
			

		email = $("#email1").val() + "@" + $("#email2").val();
		console.log(email);
		$.ajax({
			url:"emailCheckNumSend.do",
			type:"post",
			data:{email:email},
			success:function(data){
				console.log(data);
	                   console.log(data);
	                   swal("메일이 발송되었습니다.")
	               		m = data;
						console.log(m);
	   	
			},
			
			error:function(status){
				console.log(status);
			}
		
			
		});
		/* location.href="emailCheckNumSend.do?email=" + email; */
		$("#check").show();
		$("#check2").show();
		
		}
	});
	
	
	
	//이메일 인증번호 일치 여부
	var okEmail = 0;
	$("#check2").click(function(){
		console.log(m);
	            if($("#check1").val() == m){
	            	swal("인증이 완료되었습니다.");
	            	
	            	okEmail = 1;
	            }else if($("#check1").val() == ""){
	            	swal("인증번호를 입력해주세요!");
	            }else{
	            	swal("인증번호가 틀렵습니다!")
	            	okEmail = 2;
	            	$("#mpwd").val("");
	            }
	});
	
	
	
	//주소 검색
	var mAdd = null;
	$("#mAdd").click(function(){
		 new daum.Postcode({
		        oncomplete: function(data) {

	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	                
	                //도로명, 지번 주소의 유무에 따라 해당 주소 풀로 입력
	                if(fullRoadAddr !== ''){
	                	fullRoadAddr += extraRoadAddr;
	                }
	                
					console.log(fullRoadAddr);
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					
	                $('#mAddress1').val(data.zonecode) ;
	                $('#mAddress2').val(fullRoadAddr);
	                // 커서를 상세주소 필드로 이동한다.
	                $("#mAddress3").focus();

	            }
		        
		    }).open();
		
	})
	
	
	
	//필수입력사항 입력 검사
	function erchk() {
			mGender = $("#mGender").val();
			console.log($("#photo").val());
			//필수입력값 입력유무 조사
			if($("#mid").val()!="" 
				&& $("#mpwd").val()!="" && $("#mpwd22").val()!="" && $("#mName").val()!="" 
				&& $("#mNick").val()!="" && $("#email1").val()!="" && $("#email2").val()!=""
				&& $("#mBirthDay").val()!=""  && $("#mGender").val()!=""
				&& $("#mAddress1").val()!="" && $("#mAddress2").val()!=""&& $("#mAddress3").val()!=""&& $("#mpr").val()!="" && $("#mFundType").val()!=""){
				//중복확인 유무 조사
				if(i == 1){
					//비밀번호 일치 여부 조사
					if($("#mpwd").val()==$("#mpwd22").val()){
						if(okEmail == 1){
							$("#email").val($("#email1").val() + "@" + $("#email2").val());
							$("#mGender").val(mGender);
							$("#mAddress").val($("#mAddress2").val() + " " + $("#mAddress3").val());
					        var queryString = $("form[name=sub1]").serialize() ;
					        $("#sub1").submit();
					   /*      $.ajax({
					            type : 'post',
					            url : 'insert2.me',
					            data : formData,
					            
					            error: function(xhr, status, error){
					                alert(error);
					            },
					            success : function(data){
					            	swal({
					      			  title: "회원가입료!",
					      			  text: "행복두리는 관리자 승인을 받아야 사이트 이용이 가능합니다!(최대7일)",
					      			  icon: "success"
					      			  }).then(function(){
					                	location.href="nanumLogin.me";
					                });
					            },
					        }); */

						}else{
							swal("이메일을 인증해 주세요!");
						}

					}else{
						swal("비밀번호가 일치하지 않습니다!");
						$("#mpwd2").val("");
						$("#mpwd22").val("");
					}
				
				
					
				}else{
					
					swal("중복확인을 해주세요!");
				}
					
				
			}else{
				swal("필수 입력 사항을 입력해 주세요!");
			}
		   
  }


</script>
</body>
</html>