<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../happymember/include/common.jsp" />

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
 
<title>마이페이지>내사연</title>

<style>
	a {color: #333;}
	#button{text-align: center;}
</style>
</head>
<body>

 
<div id="wrap"><!-- Wrap S -->

<jsp:include page="../happymember/include/header.jsp" />

<jsp:include page="../happymember/include/myNav.jsp" />

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->

		<jsp:include page="include/tabMypage.jsp" />

		<div  class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>물품 후원 현황</h1></div>
			<div style="float: left;">
				<h4 style="font-weight: 600">
					진행중&nbsp;<i class="green circle icon" alt="요청접수"></i>&nbsp;&nbsp;
					종료&nbsp;<i class="red circle icon" alt="환급완료"></i>&nbsp;&nbsp;
					<!-- <img src="/duri/resources/HappyMyPage/images/status/ing.PNG" width="26px" height="25px" alt="진행중"> -->
					<!-- <img src="/duri/resources/HappyMyPage/images/status/finish.PNG" width="23px" height="24px" alt="종료"> -->
					<!-- <img src="/duri/resources/HappyMyPage/images/status/wating.PNG" width="22px" height="24px" alt="승인대기중"> -->
				</h4>
			</div>
			<span>마이페이지 &gt; 내 사연 &gt; 물품 후원 현황</span>
		</div>
		<br>
		
		<table class="boardList mt30">
			<caption>문의내역 리스트입니다.</caption>
			<colgroup>
				<col style="width:6%;"><!-- No -->
				<col style="width:14%;"><!--  -->
				<col style="width:30%;"><!--  -->
				<col style="width:15%;"><!--  -->
				<col style="width:10%;"><!--  -->
				<col style="width:6%;">
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">환급요청일시</th>
				<th scope="col">요청금액</th>
				<th scope="col">예금주명</th>
				<th scope="col">계좌번호</th>
				<th scope="col">처리상태</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>생리대가 부족해요</td>
				<td class="tleft"><a href="myQnaView.jsp">안녕하세요 저는 올해 15살로 초경을 시작하게 되었습니다.</a></td>
				<td>2018-11-04 ~ 2019-01-04</td>
				<td></td>
				<td>
					<i class="green circle icon" alt="요청접수"></i>
				</td> 	
			</tr>
			<tr>
				<td>2</td>
				<td>저보고 입냄새 난대요</td>
				<td class="tleft"><a href="myQnaView.jsp">칫솔이 다 닳아 버리고 새 칫솔을 사지 못해 이를 잘 닦지 못합니다.. </a></td>
				<td>2019-01-11 ~ 2019-02-11</td>
				<td></td>
				<td>
					<i class="green circle icon" alt="요청접수"></i>
				</td> 
			</tr>
			<tr>
				<td>3</td>
				<td>폼클렌징 써보고 싶어요</td>
				<td class="tleft"><a href="myQnaView.jsp">안녕하세요 저는 동생들과 셋이 살고 있습니다. 매일 빨래비누로 세수를 하다..</a></td>
				<td>2019-03-15 ~ 2019-04-15</td>
				<td></td>
				<td><!-- <img src="/duri/resources/HappyMyPage/images/status/finish.PNG" width="22px" height="23px" alt="종료">-->
					<i class="red circle icon" alt="환급완료"></i>
				</td> 	
			</tr>
			</tbody>
		</table>

		<div class="numbox pt40 pb50"> 
			<span><a class="num" href="#">&lt;</a></span>
			<span><a class="num on" href="#">1</a></span>
			<span><a class="num" href="#">2</a></span>
			<span><a class="num" href="#">3</a></span>
			<span><a class="num" href="#">4</a></span>
			<span><a class="num" href="#">5</a></span>
			<span><a class="num" href="#">&gt;</a></span>
		</div>
		<br><br><br><br>
		
		
		<div style="height: 10px;"></div>
		
		<div id="button">
			<button class="massive ui instagram button" onclick = "location.href = 'pointReturnHappy.pm'">포인트 환급 받기</button>
		</div>

</div><!--// inner E-->
</div> 

</div><!--// Wrap E-->




</body>
</html>