<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.Date, java.text.SimpleDateFormat, java.util.Calendar" %>

<% 
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 ");
	Calendar cal = Calendar.getInstance();
 	cal.add(Calendar.MONTH, 1);
%>
 						
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<!-- import cdn -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<title>Insert title here</title>
      <!-- 공통 css 부분 -->
    <jsp:include page="../common/css.jsp"/>
      
    <style>
   		#nav_back{
   			background: #FFBB50; 
   			height:83px; 
   			box-shadow:0 0 6px 0 #B8B8B8; 
   		}
   		
   		#bar1{
   			width:98%; 
   			margin: 2% auto; 
   			border-top:1px solid #B8B8B8;
   			height : 10px;
   		}
   		
   		table {
   			width : 95%;
   			margin: 1%;
   		}
   		
   		tr{
   			height: 90px;
   		}
   		th{
   			font-weight : 400;
   			font-size : 20px;
   			font-family: "Dosis", Arial, sans-serif;
   		}
   		td{	
   			padding-left : 10px;
   			font-weight : 300;
   			font-size : 20px;
   		}
   		
   		#sType{
   			display: block;
   			width : 100%;
   			font-size : 20px;
   		}
   		#sTitle{
   			display: block;
   			font-size : 30px;
   			font-weight : 600;
   		}
   		
   		.d-flex{
   			padding-left : 5%;
   			margin: 1% 0;
   		}
   		
   		#sponPoint{
   			height :40px !important;
   			border-radius : 5px;
   			width :  160px;
   			display : inline-block;
   			margin-right : 2%;
   		}
   		
   		#totaldiv{
   			width : 82%;
   			margin : 2% auto; 
   		}
   		
   		#totalBox{
   			width : 100%; 
   			background: rgba(220,220,220,0.3); 
   			margin : 2% auto; 
   			padding: 4% 2%;
   		}
   		
   		#txtSponValue{
   			display : inline-block;
   			font-weight : 500;
   			font-size: 24px;
   			margin-right : 20px;
   		}
   		#sponValue{
   			display : inline-block;
   			color : #FE9D35;
   			font-weight : 500;
   			font-size: 36px;
   			margin-right : 10px;
   		}
   		.txtWon{
   			display : inline-block;
   			font-size : 25px;
   			font-weight : 500;
   		}
   		
   		#txtLeftValue{
   			display : inline-block;
   			margin-right : 22px;
   		}
   		#nextValue{
   			display : inline-block;
   			font-size: 22px;
   			margin-right : 10px;
   		}
   		
   		.seeTerm{
   			padding : 0.6%;
   			border-radius : 4px;
   			background: rgba(150,150,150,0.4);
   			font-size : 17px;
   			font-weight : 500;
   			cursor : pointer;
   		}
   		.seeTerm:hover{
   			background: rgba(180,180,180,0.4);
   			cursor : pointer;
   		}
   		
   		#btnBox{
   			width : 99%;
   			text-align : center;
   		}
   		
   		#btnSpon{
   			padding : 0.4em 4em;
   			border-radius : 4px;
   			background: #FE9D35;
   			color : #ffff;
   			font-weight : 700;
   			font-size : 28px;
   			cursor : pointer;
   		}
   		.txtWon{
   			display : inline-block;
   			font-size : 19px;
   		}
   		
   		.txtColor_o{
   			color : #FE9D35;
   		}
   		.txtColor_g{
   			color : #32933F;
   		}
   		.txtBold{
   			font-weight : 700;
   		}
   		.disInline{
   			display: inline-block;
   		}
   		.txtInfo{
   			font-size : 16px;
   			font-weight : 400;
   		}
   		
   		#alertRedTxt{
   			display: inline-block;
   	 		color: orangered;
   	 		visibility : hidden;
   	 		font-size : 18px;
   		}
    		
    	#selectDate{
    		width : 100px;
    		height : 40px !important;
    		border-radius : 7px;
    	}
    	
    	
    	/* 약관 팝업창 */
   		.pop{
   			position : absolute;
   			background : rgb(240,240,240);
   			padding : 23px 17px;
   			width : 670px;
   			z-index : 200;
   			/* text-align : center; */
   			top : 70%;
   			left : 30%;
   			visibility : hidden;
   			border : 1px solid lightgray;
   		}
   		.pop_inner{
   			font-size : 15px;
   		}
    		
   		.pop_title{
   			font-weight : bold;
   			font-size : 18px;
   		}
   		.pop_subtitle{
   			font-weight : bold;
   			font-size : 16px;
   		}
   		
   		.pop_box{
   			height : 450px;
   			padding : 5px;
   			background : rgb(254,254,254);
   			overflow-y : scroll;
   		}
   		
   		#pop_close{
   			padding : 5px;
   			background : rgb(254,254,254);
   			border-radius : 7px;
   			width : 75px;
   			cursor : pointer;
   		}	
   		
   		#chkExplain + label{
   			font-size : 18px;
		    color: #000;
		    font-family: "Dosis", Arial, sans-serif;
		    font-weight: 400;
   		}
   		
		.checks {position: relative;} 
		.checks input[type="checkbox"] { 
		/* 실제 체크박스는 화면에서 숨김 */ position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip:rect(0,0,0,0); border: 0 } .checks input[type="checkbox"] + label { display: inline-block; position: relative; cursor: pointer; -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; } 
		.checks input[type="checkbox"] + label:before { /* 가짜 체크박스 */ content: ' '; display: inline-block; width: 21px; /* 체크박스의 너비를 지정 */ height: 21px; /* 체크박스의 높이를 지정 */ line-height: 21px; /* 세로정렬을 위해 높이값과 일치 */ margin: -2px 8px 0 0; text-align: center; vertical-align: middle; background: #fafafa; border: 1px solid #cacece; border-radius : 3px; box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05); } 
		.checks input[type="checkbox"] + label:active:before, .checks input[type="checkbox"]:checked + label:active:before { box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1); } 
		.checks input[type="checkbox"]:checked + label:before { /* 체크박스를 체크했을때 */ content: '\2714'; /* 체크표시 유니코드 사용 */ color: #FE9D35; text-shadow: 1px 1px #fff; background: #e9ecee; border-color: #adb8c0; box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05), inset 15px 10px -12px rgba(255,255,255,0.1); }
		
		#explainBox{
			width : 96%;
			padding : 1.2% 3%;
			border : 1px solid lightgray;
			margin : 10px 0;
		}
		
    </style>
</head>
<body>
    <!-- 네비바 -->
	<jsp:include page="../common/navi.jsp"/>
   
   	<!-- 신용카드 약관 팝업창 -->
    <div class = "pop" id = "pop_div01">
    	<div class = "pop_inner">
    		<div class = "pop_title">신용카드 약관동의 </div>
    		<div class = "pop_box">
				<div class = "pop_subtitle">[제1조 목적] </div>
				&nbsp;&nbsp;본 약관의 목적 '둘이두리'의 회원(후원회원)이 신용카드 서비스를 이용함에 있어 필요한 제반 사항을 정하는데 있습니다.<br><br>
				<div class = "pop_subtitle">[제2조 서비스의 범위] </div>
				&nbsp;&nbsp;'둘이두리'이 제공하는 후원금 신용카드 서비스는, 본 약관을 동의한 회원으로부터 받는 후원금을 회원이 신청한 신용카드에서 자동 출금하여 후원대상의 후원포인트로 입금하는 서비스입니다. <br><br>
				<div class = "pop_subtitle">[제3조 신용카드 이용신청 및 변경] </div>
				&nbsp;&nbsp;1. 회원은 신용카드 신청시 "둘이두리 ", 신용카드 거래의 변경, 해지 등의 신청을 할 때에는 다음 절차에 따라 처리합니다. <br>
				&nbsp;&nbsp;2. 신용카드 변경, 해지  <br>
				&nbsp;&nbsp;&nbsp;&nbsp;① 둘이두리는 회원으로부터 신용카드의 변경이나 해지 요청을 받지 않는 한 후원을 지속하는 것으로 간주하여 별도의 통보 없이 신용카드 결제를 계속 실시합니다. <br>
				&nbsp;&nbsp;&nbsp;&nbsp;② 회원이 신용카드번호를 변경하거나 후원 해지를 원할 경우 신용카드 결제일로부터 6일전에 둘이두리 담당직원을 통한 본인확인 절차를 거쳐야 합니다. <br><br>
				<div class = "pop_subtitle">[제4조 결제일] </div>
				&nbsp;&nbsp;1. 결제일은 매월 1일, 5일, 15일, 25일중 후원자가 정한 출금일로 합니다. <br>
				&nbsp;&nbsp;2. 단, 회원의 신용카드 문제로 결제일에 미출금 재출금할 . <br>
				&nbsp;&nbsp;3. 1, 2의 해당일이 공휴일 및 금융기관 휴무일인 경우 익일로 합니다. <br><br>
				<div class = "pop_subtitle">[제5조 재판관할] </div>
				&nbsp;&nbsp;회원과 둘이두리 , 본 분쟁으로 인한 소는 민사소송법상의 관할을 가지는 대한민국의 법원에 제기합니다. <br><br>
				<div class = "pop_subtitle">[부 칙]</div>
				&nbsp;&nbsp;(시행일) 이 약관은 2019년 01월 01일부터 시행합니다. 
    		</div><br>
			<div  align = "center">
				<div onclick = "closePop(this);" id = "pop_close">&nbsp;확인</div>
			</div>
    	</div>
    </div>
    
    <!-- 개인정보수집 약관 팝업창 -->
	<div class = "pop" id = "pop_div02">
    	<div class = "pop_inner">
    		<div class = "pop_title">개인정보수집 약관동의 </div>
    		<div class = "pop_box">
				&nbsp;&nbsp; '둘이두리'는 후원회원(이하 ‘회원’)의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률 및 “개인정보보호법”을 준수하고 있습니다.
				'둘이두리'는 개인정보취급방침을 통하여 회원께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 
				<br><br>
				<div class = "pop_subtitle">1. 개인정보의 수집항목</div>
				&nbsp;&nbsp; 둘이두리는 회원 가입, 후원 결제, 기부금영수증 발행, 상담, 회원서비스, 사회공헌협력 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
				<br><br>
				1) 수집항목 <br>
				가. 기본정보 <br>
				- 개인회원 : 성명, 생년월일, 성별, 이메일, 휴대전화번호, 주소, 우편물수령방법, 아이디, 비밀번호 <br>
				- 기업회원 : 기업명, 사업자등록번호, 연락처, 이메일, 주소, 우편물수령방법, 아이디, 비밀번호 <br>
				- 단체회원 : 단체명, 담당자성명, 연락처, 이메일, 주소, 우편물수령방법, 아이디, 비밀번호 <br>
				나. 후원금결제정보 <br>
				- 자동이체(CMS) : 은행명, 계좌번호, 예금주명, 예금주 주민등록번호 앞자리(생년월일) <br>
				- 신용카드 : 카드사, 카드번호, 유효기간, 카드명의자명, 카드명의자 주민등록번호 앞자리(생년월일) <br>
				- 휴대폰 : 명의자명, 휴대전화번호, 명의자 주민등록번호 앞 6자리 / 뒤 1자리, 통신사 <br>
				다. 선택항목 : 주민등록번호(국세청연말정산간소화서비스 등록), 후원경로, 후원사연 <br><br>
				2) 개인정보 수집방법 <br>
				온라인 후원신청, 홈페이지(회원가입, 상담문의, 이벤트 응모 등), 서면신청서, 전화상담  <br>
				<br><br>
				<div class = "pop_subtitle">2. 개인정보의 수집 및 활용목적</div>
				둘이두리는 수집한 개인정보를 다음의 목적을 위해 활용합니다. <br>
				1) 후원금 관리, 회비 출금, 기부금영수증발행, 후원내역관리, 후원금사용보고 및 행사참여 등의 안내 서비스, 회원공지 및 뉴스레터, 콘텐츠 제공 <br>
				2) 회원 관리, 본인확인식별, 기부 등 참여내역 및 회원정보 관리, 가입 및 탈퇴 의사 확인 <br>
				3) 회원 후원성향 분석및 후원문화 활성화를 위한 성향 분석 및 통계에 따른 회원서비스 개선 <br>
				 <br><br>
				<div class = "pop_subtitle">3. 개인정보의 보유 및 이용기간  </div>
				둘이두리는 회원이 탈퇴하여 개인정보 수집 및 이용목적이 달성이 종료된 후에는 예외 없이 해당 정보를 지체 없이 파기합니다. 단, 기부금영수증 발행 등을 위하여 아래와 같이 관계법령에서 정한 일정한 기간 동안 개인정보와 후원결제정보를 보관합니다. [법인세법 등에 따라 탈퇴 후 5년간 보관]
				<br><br>
				4. 개인정보의 파기절차 및 방법 <br>
				1) 파기절차회원의 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.
				<br>2) 파기방법파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.종이에 출력된 개인정보는 분쇄기로 분쇄하여 파기합니다.
				<br><br>
				<div class = "pop_subtitle">4. 개인정보의 제공 </div>
				둘이두리는 아래와 같이 법령에 근거가 있는 등의 예외적인 경우를 제외하고 이용자의 동의 없이 개인정보를 제3자에게 제공하지 않습니다. 다만 제휴사, 후원사 등에 이용자의 개인정보를 제공할 수 있으나, 이는 이용자에게 최적, 양적의 서비스를 제공하기 위한 목적으로만 행해지는 것이고 그 경우에도 제공받는 자, 제공받는 자의 이용목적, 제공할 정보의 내용, 제공받는 자의 개인정보보유 및 이용기간을 홈페이지 등에 명시하여 이용자의 동의를 받도록 하겠습니다.
				<br><br>
				1) 둘이두리의 요청에 따라 회원이 사전에 동의한 경우  <br>
				2) 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우 <br>
				3) 행정안전부 및 그 소속청 소관 비영리법인의 설립 및 감독에 관한 규칙(동법 제8조)주무관청은 「민법」 제37조에 따른 비영리법인 사무의 검사 및 감독을 위하여 불가피한 경우에는 관계 서류·장부 또는 그 밖의 참고자료 제출을 명하거나 사무 및 재산 상황 검사할 수 있음 <br>
				4) 결산에 관한 서류 및 공익법인 출연재산 등에 대한 보고서 (상증세법 시행령 제41조) <br>
				5) 외부회계감사를 받아야 할 의무 (상증세법 제50조, 주식회사의외부감사에관한법률 제3조) <br>
				6) 결산서류 공시의무 (상증세법 제50조) <br>
				7) 기부금영수증 발급내역 작성, 보관, 제출의무 (법인세법 제112조) <br>
				8) 제3자 제공 업체 <br>
				<br>
				제공대상 : 사단법인 <br>
				개인정보 이용목적 : 기부금 승인ㆍ정산 <br>
				개인정보 항목 : 은행명, 계좌번호, 예금주명, 예금주 주민등록번호 앞자리(생년월일), 기부금액 <br>
				<br>
				<div class = "pop_subtitle"> 5. 수집한 개인정보의 위탁 </div>
				둘이두리는 안정적인 회원서비스를 위해 아래와 같이 외부 전문업체에 위탁하여 운영하고 있습니다. <br>
				<br>
				- 기부결제 승인ㆍ정산을 위해 PG업체에 위탁하는 경우 <br><br>
				- 제공대상 : (주)이니시스 <br>
				- 개인정보 이용목적 : 기부금 승인ㆍ정산 <br>
				- 개인정보 항목 : 카드사명, 카드번호, 유효기간, 카드명의자명, 카드명의자 주민등록번호 앞자리(생년월일), 휴대전화번호 <br>
				- 신용카드 결제 : 카드사명, 카드번호, 유효기간, 카드명의자명, 카드검증번호 <br>
				<br>
    		</div><br>
			<div  align = "center">
				<div onclick = "closePop(this);" id = "pop_close">&nbsp;확인</div>
			</div>
    	</div>
    </div>
    
    <!-- 정기후원대상자 정보 -->
    <c:set var = "takeM" value = "${ takeMember }"></c:set>
    <!-- 후원자(로그인한 나눔두리) -->
    <c:set var = "giveM" value = "${ sessionScope.loginUser2 }"></c:set>
    
     <section class="ftco-section">
    	<div class="container">
    		<div class="row d-flex">
    			<div class = "ftco-animate" id = "sType">정기후원</div>  
    			<h3 class = "ftco-animate" id = "sTitle">1대 1 결연 맺기</h3><br>
    		</div>
    		<div id = "bar1"></div>
    		<div class ="row d-flex"> 
	    		<h4 class ="ftco-animate">정기후원의 방식은 다음과 같습니다. </h4>
	    		<div id ="explainBox">
	    			<p style ="line-height : 1.2em; margin-top : 10px;">
		    			- 정기후원은 지속적인 지원과 돌봄이 필요한 만7세에서 18세 사이의 아동을 대상으로 매월 지정 금액으로 <br>
		    			&nbsp;&nbsp; 1대1 또는 1대 다수의 형태로 결연을 맺어 건강한 사회의 구성원으로 성장할 수 있도록 지원합니다.<br><br>
		    			- 후원시작일(정기후원 신청일)을 기준으로 다음달 선택한 결제일이 2차 후원일입니다. <br> <br>
		    			- 후원금 결제일은 1일, 5일, 15일, 25일 중 하나를 선택해주시면 됩니다.  <br> <br>
		    			- 매월 결제일마다 지정한 후원금액으로 신용카드 자동결제가 이루어지며 후원된 금액은 후원대상자 행복두리의 후원포인트로 바로 송금됩니다.  <br> <br>
		    			- 둘이두리에서는 후원대상자인 행복두리의 후원 대상 자격여부를 6개월마다 엄격히 확인합니다.  <br> <br>
		    			- 행복두리의 후원대상 자격이 박탈된 행복두리는 후원을 받을 수 없으며 진행중이던 정기후원 또한 자동 취소됩니다. <br>
		    			&nbsp;&nbsp; 따라서 정기후원이 갑자기 중단될 경우 결제 카드의 문제인지 먼저 확인해주시고 이상이 없을 시에는 <br> 
		    			&nbsp;&nbsp; 후원중이던 행복두리의 후원대상자격박탈이 그 이유임을 명시해주시면 됩니다. <br> <br>
		    			- 나눔두리님의 개인적인 사유로 정기후원을 중단하기를 원할 시에는 고객센터로 문의해주시길 바랍니다.
		    		</p>
	    		
	    		</div>
	    		
	    		<div class="checks etrans">
				  <input type="checkbox" id="chkExplain"> 
				  <label for="chkExplain" >정기후원 방식을 이해했습니다. </label> 
				</div>
	    		
    		</div>
    		
    		<div id = "bar1"></div>
    		<div class ="row d-flex"> 
    			<h4 class ="ftco-animate">> 후원 정보</h4>
    		</div>
    		<div class ="row d-flex"> 
    			<table>
    				<tr>
    					<th class = "txtColor_o">행복두리</th>
    					<td class = "txtColor_o txtBold">
    					${takeM.mNickName }
    					(${ takeM.mAddress })
    					</td>
    				</tr>
    				<tr>
    					<th class = "txtColor_o">나눔두리</th>
    					<td class = "txtColor_o txtBold">${ giveM.mName }</td>
    				</tr>
    				<tr>
    					<th>후원금 사용 타입</th>
    					<td><span style ="color : gray; font-weight : 400;">${ valueType }</span></td>
    				</tr>
    				<tr>
    					<th>후원금액</th>
    					<td><input class="form-control" type = "text" name = "point" id = "sponPoint">원 &nbsp;&nbsp;&nbsp;<div id = "alertRedTxt"><i class="exclamation circle small icon"></i>10,000원 이상의 금액을 입력해주세요.</div>
    						<br>
    						<div class = "txtInfo disInline"><div class = "txtColor_g disInline">최소 10,000원 이상</div> 후원할 수 있으며<div class = "txtColor_g disInline">후원 시작일</div>로부터 한달 간격으로 <div class = "txtColor_g disInline">정기결제</div>가 진행됩니다.</div>
    					</td>
    				</tr>
    				<tr>
    					<th>후원 시작일 </th>
    					<jsp:useBean id="now" class="java.util.Date" />
 						<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일" var="now" />
 						
    					<td>${ now }
    						<br>
    						<div class ="txtInfo">정기 후원은 따로 후원 중지를 신청하지 않을 경우, 나눔두리의 후원 상태 종료 시 자동 종료됩니다.</div>
    					</td>
    				</tr>
    				<tr>
    					<th>후원금 결제일 </th>
    					<td>
    						<select name = "selectDate" id = "selectDate" class = "form-control">
    							<option value = "01" >1일 </option>
    							<option value = "05" >5일 </option>
    							<option value = "15" >15일 </option>
    							<option value = "25" >25일 </option>
    						</select>
    					</td>
    				</tr>
    				<tr>
    					<th>다음 후원일 </th>
    					<td>
    					<%-- <jsp:useBean id="next" class="java.util.Date" />
 						<fmt:formatDate value="${next}" type = "DATE" pattern="yyyy년 MM월 dd일" var="next" />
 						<c:set var = "next" value = "<%= new Date(new Date().getTime()+30*60*60*24*1000) %>"/> --%>
 						
 						<c:set var = "next" value = "<%= sdf.format(cal.getTime())%>"/> 
    					<div id = "nextDate"> ${next} 1일 </div>
    					</td>
    				</tr>
    			</table>
    		</div>
    		
    		<div id = "bar1"></div>
    		
    		<div id = "totaldiv">
    			<div class="checks etrans"> 
    				<input type ="checkbox" id= "chkinfo1"><label for = "chkinfo1">신용카드 약관동의 (필수) </label> 
	    			<a id = "seeTerms01" class = "seeTerm">전문보기 </a> <br>
	    			<input type ="checkbox" id= "chkinfo2"><label for = "chkinfo2">개인정보수집 약관동의  (필수) </label> 
	    			<a id = "seeTerms02" class = "seeTerm">전문보기 </a> <br>
    			</div>
    		
    			<div id = "totalBox">
	    			<div align = "right">
	    				<div id = "txtSponValue">후원 금액 </div> <div id = "sponValue">0 </div> <div class = "txtWon"> 원</div>
	    			</div>
	    			<div id = "bar1"></div>
	    			<div align = "right">
	    				<div id = "txtLeftValue">다음 후원금액 </div> <div id = "nextValue">0원 </div>
	    			</div>
    			</div>
    		</div>
    		
    		<div id = "btnBox">
	    		<a id = "btnSpon">후원하기 </a>
    		</div>
    	
    	</div>
    </section>
    <section class="ftco-section">
    	<div class="container">
    		
    	</div>
    </section>
   <!-- footer  -->
   <jsp:include page="../common/footer.jsp"></jsp:include>
  

  <!-- loader -->
   <jsp:include page="../common/loader.jsp"></jsp:include>
  <script>
  var alertRed = 0;
  
  function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

  $(document).ready(function() {
		/* 후원포인트 금액 변경 시 */
		$("#sponPoint").change(function(){
			calValue();
		}).focusout(function(){
			var sponPoint = $("#sponPoint").val();
			if(sponPoint.length < 5){
				 $('#sponPoint').css('border', '1px solid red').focus();
				 $("#alertRedTxt").css("visibility", "visible");
				 alertRed = 1;
			}else {
				alertRed = 0;
				 $('#sponPoint').css('border', '1px solid lightgray');
				 $("#alertRedTxt").css("visibility", "hidden");
			}
		});
		
		var IMP = window.IMP;
		IMP.init('imp35475580'); 
		
	});
 	 var jb = jQuery.noConflict();
 	 
	/* 후원포인트, 잔여포인트 계산 및 표시 */
	function calValue(){
		var sPoint = $("#sponPoint").val();
		$("#sponValue").text(numberWithCommas(sPoint));
		$("#nextValue").text(numberWithCommas(sPoint) + "원");
	}
	
	/* 후원 출금일 선택 시  */
	$("#selectDate").change(function(){
		var day = $("#selectDate").val();
		console.log("선택한 날 : "+ day);
		$("#nextDate").text("${ next } " + day + "일");
	});
	
	/* 신용카드 약관 팝업창 보여주기 */
	$("#seeTerms01").click(function(){
		$("#pop_div01").css("visibility", "visible");
	});
	/* 정보수집 약관 팝업창 보여주기 */
	$("#seeTerms02").click(function(){
		$("#pop_div02").css("visibility", "visible");
	});
	
	/* 약관창 닫기 */	
 	function closePop(obj){
		$(obj).parents(".pop").css("visibility", "hidden");
	}
	
	/* billing 고유번호 생성 */
	function generateUUID() {
	    var d = new Date().getTime();
	    if(Date.now){
	        d = Date.now(); //high-precision timer
	    }
	    var uuid = 'xxxxxx'.replace(/[xy]/g, function(c) {
	        var r = (d + Math.random()*16)%16 | 0;
	        d = Math.floor(d/16);
	        return (c=='x' ? r : (r&0x3|0x8)).toString(16);
	    });
	    return uuid;
	};
	
	/* 후원하기 버튼 클릭 시  */
	$("#btnSpon").click(function(){
		var randomUid = generateUUID();
		var selectDate = $("#selectDate").val();
		
		if(selectDate == null){
			alert("다음 결제일을 선택해주세요. ");
		}else if(!$("#chkinfo1").is(":checked")){
			alert("정기결제 약관에 동의해주세요.");
		}else if(!$("#chkinfo2").is(":checked")){
			alert("수수료 약관에 동의해주세요.");
		}else if(!$("#chkExplain").is(":checked")){
			alert("정기후원 방식 고지를 다시 한번 확인해주세요.");
		}else if(alertRed == 1){
			//alert("10000원 이상부터 정기후원이 가능합니다.");
			$('#sponPoint').css('border', '1px solid red').focus()
		}else {
			var tmno = "${ takeM.mno }";
			var mno = "${ giveM.mno }";
			var name = "${ giveM.mName }";
			var phone = "${ giveM.mPhone }";
			var email = "${ giveM.email }";
			var price = $("#sponPoint").val();
			var type = "${ valueType }";
			
			console.log("name : "+ name + "/ phone : "+ phone + "/ email : "+ email);
			// 빌링키 발급과 동시에 결제를 진행하려면 amount 필드에 금액 파라메터를 전달하여 결제창에 결제될 금액이 표시되도록하고 
			// 빌링키 발급과 동시에 /subscribe/payments/again API를 호출하여 결제승인처리를 하면 구매자로하여금 혼선이 없습니다.
			
			// IMP.request_pay(param, callback) 호출
			IMP.request_pay({ // param
			    pg: "html5_inicis",
			    pay_method: "card", // "card"만 지원됩니다 
			    merchant_uid: 'merchant_' + new Date().getTime() + '_b', // 빌링키 발급용 주문번호
			    customer_uid: mno + randomUid, // 카드(빌링키)와 1:1로 대응하는 값
			    name: "최초인증결제",
			    amount: 0, // 0 으로 설정하여 빌링키 발급만 진행합니다.
			    buyer_email: email,
			    buyer_name: name,
			    buyer_tel: "010-7630-9011"
			    //buyer_postcode: "01181"
			}, function (rsp) { // callback
			    if (rsp.success) {
			        // 빌링키 발급 성공
			        console.log("빌링키 발급 성공");
			        console.log(rsp);
			        console.log("고유ID : "+ rsp.imp_uid);
			        console.log("상점 거래ID : "+ rsp.merchant_uid);
			        
			        $.ajax({
			            url: "directFundGetToken.pm", // 최초 결제 및 토큰 가져오기
			            //method: "POST",
			            type: "post",
			           // headers: { "Content-Type": "application/json" },
			            data: {
			                customer_uid: mno + randomUid, // 카드(빌링키)와 1:1로 대응하는 값
			                imp_uid : rsp.imp_uid,
			                merchant_uid : 'merchant_' + new Date().getTime() + '_n',
			                amount : 100  //price
			            },
			            success:function(data){
							console.log(data.status);
							console.log(data.msg);
							
							if(data.status == '1'){
								console.log("결제 예약 서버 부르자  ");
								
								$.ajax({
						            url: "subscribeDirectFund.pm", // 정기결제 예약 서버
						            type: "post",
						            data: {
						                customer_uid: mno + randomUid, // 카드(빌링키)와 1:1로 대응하는 값
						                imp_uid : rsp.imp_uid,
						                merchant_uid : 'merchant_' + new Date().getTime()+'_s',
						                amount : 100,//price
						                giveMember : mno,
						                takeMember : tmno,
						                type : type,
						                price : price,  //price
						                selectDate : selectDate
						            },success:function(data){
						            	console.log(data);
						            	location.href = "directFundResult.pm?status="+data.status + "&msg="+data.msg;
						            },error:function(data){
						            	console.log(data);
						            	location.href = "directFundResult.pm?status="+data.status + "&msg="+data.msg;
						            }
						        });
							}else {
								console.log("실패");
							}
			            }
			        });  
			        
			        //location.href = "goSuccessPage.pm";
			      /*   location.href = "directFundGetToken.pm?customer_uid="+ mno + randomUid + "&imp_uid=" + rsp.imp_uid + "&merchant_uid="+ 'merchant_' + new Date().getTime()
			        		+ "&amount=" + 100;
			        
			        location.href = "subscribeDirectFund.pm?customer_uid="+ mno + randomUid + "&imp_uid=" + rsp.imp_uid + "&merchant_uid="+ 'merchant_' + new Date().getTime()+'_sub'
	        		+ "&amount=" + 100 + "&giveMember=" + mno + "&takeMember=" + tmno + "&type=" + type + "&price=" + price; */
			      /*   */
			    } else {
			        // 빌링키 발급 실패
			    	console.log("빌링키 발급 실패");
			    	console.log(rsp);
			    	alert("결제 실패 , 조금 뒤에 다시 결제를 시도해주세요. ");
			    }
			}); 
		}
	});
	
	</script>
  
</body>
</html>