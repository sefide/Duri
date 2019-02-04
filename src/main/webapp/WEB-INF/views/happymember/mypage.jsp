<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="1";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
 
<title>마이페이지>내사연</title>

<style>
	a {color: #333;}
	#button{text-align: center;}
	/* .textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;} */
</style>
</head>
<body>

 
<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<%@ include file="include/myNav.jsp" %>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->

		<%@ include file="include/tabMypage.jsp" %>

		<div  class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>물품 후원 현황</h1></div>
			<div style="float: left;">
				<h4 style="font-weight: 600">
					진행중&nbsp;<i class="green circle icon" alt="진행중"></i>&nbsp;&nbsp;
					종료&nbsp;<i class="red circle icon" alt="종료"></i>&nbsp;&nbsp;
					승인대기중&nbsp;<i class="yellow circle icon" alt="승인대기중"></i>
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
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">제목</th>
				<th scope="col">내용</th>
				<th scope="col">기간</th>
				<th scope="col">진행상태</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>생리대가 부족해요</td>
				<td class="tleft"><a href="myQnaView.jsp">안녕하세요 저는 올해 15살로 초경을 시작하게 되었습니다.</a></td>
				<td>2018-11-04 ~ 2019-01-04</td>
				<td><!-- <img src="/duri/resources/HappyMyPage/images/status/ing.PNG" width="25px" height="25px" alt="진행중">-->
					<i class="green circle icon" alt="진행중"></i>
				</td> 	
			</tr>
			<tr>
				<td>2</td>
				<td>저보고 입냄새 난대요</td>
				<td class="tleft"><a href="myQnaView.jsp">칫솔이 다 닳아 버리고 새 칫솔을 사지 못해 이를 잘 닦지 못합니다.. </a></td>
				<td>2019-01-11 ~ 2019-02-11</td>
				<td><!-- <img src="/duri/resources/HappyMyPage/images/status/wating.PNG" width="22px" height="25px" alt="승인요청중">-->
					<i class="yellow circle icon" alt="승인대기중"></i>
				</td> 
			</tr>
			<tr>
				<td>3</td>
				<td>폼클렌징 써보고 싶어요</td>
				<td class="tleft"><a href="myQnaView.jsp">안녕하세요 저는 동생들과 셋이 살고 있습니다. 매일 빨래비누로 세수를 하다..</a></td>
				<td>2019-03-15 ~ 2019-04-15</td>
				<td><!-- <img src="/duri/resources/HappyMyPage/images/status/finish.PNG" width="22px" height="23px" alt="종료">-->
					<i class="red circle icon" alt="종료"></i>
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
		
		<div class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>금액 후원 현황</h1></div>
			<div style="float: left;">
				<h4 style="font-weight: 600">
					진행중&nbsp;<i class="green circle icon"></i>&nbsp;&nbsp;
					종료&nbsp;<i class="red circle icon"></i>&nbsp;&nbsp;
					승인대기중&nbsp;<i class="yellow circle icon"></i>
					<!-- <img src="/duri/resources/HappyMyPage/images/status/ing.PNG" width="26px" height="25px" alt="진행중"> -->
					<!-- <img src="/duri/resources/HappyMyPage/images/status/finish.PNG" width="23px" height="24px" alt="종료"> -->
					<!-- <img src="/duri/resources/HappyMyPage/images/status/wating.PNG" width="22px" height="24px" alt="승인대기중"> -->
				</h4>
			</div>
			<span>마이페이지 &gt; 내 사연 &gt; 금액 후원 현황</span>
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
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">제목</th>
				<th scope="col">내용</th>
				<th scope="col">기간</th>
				<th scope="col">진행상태</th>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>1</td>
				<td>수학공부 잘 하고 싶어요</td>
				<td class="tleft"><a href="myQnaView.jsp">제 꿈은 수학자입니다. 그런데 교과서 살 돈이 모자라서 늘 짝꿍 책을 같이 보다..</a></td>
				<td>2018-11-04 ~ 2019-01-04</td>
				<td><!-- <img src="/duri/resources/HappyMyPage/images/status/ing.PNG" width="25px" height="25px" alt="진행중"></td> -->
					<i class="green circle icon" alt="진행중"></i>
			</tr>
			<tr>
				<td>2</td>
				<td>제 동생 좀 도와주세요</td>
				<td class="tleft"><a href="myQnaView.jsp">동생이 감기에 걸렸습니다. 약만 먹으면 금방 낫는데 약 살 돈이 모자라서 감기..</a></td>
				<td>2019-01-11 ~ 2019-02-11</td>
				<td><!-- <img src="/duri/resources/HappyMyPage/images/status/finish.PNG" width="22px" height="25px" alt="완료"></td> -->
					<i class="red circle icon" alt="종료"></i>
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
		
		<div style="height: 100px;"></div>
		
		<div id="button">
			<button class="massive ui instagram button">사연 신청하러 가기</button>
		</div>

</div><!--// inner E-->
</div> 

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->




</body>
</html>