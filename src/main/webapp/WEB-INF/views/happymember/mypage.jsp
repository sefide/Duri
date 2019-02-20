<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	td:hover {cursor: pointer;}
</style>
</head>
<body>
<!-- 로그인 세션이 만료 되면 errorPage로 이동 -->
<c:if test="${empty sessionScope.loginUser}">
	<c:set var="message" value="해당 페이지는 로그인을 해야 이용하실 수 있습니다." scope="request"></c:set>
	<jsp:forward page="../common/errorPage.jsp"/>
</c:if>
 
<!-- 로그인 세션이 유지 되어 있고, 멤버구분이 행복두리면 마이페이지를 보여준다 -->
<c:if test="${not empty sessionScope.loginUser and loginUser.mtype == 'H'}">
<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<%@ include file="include/myNav.jsp" %>



<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->

		<%@ include file="include/tabMypage.jsp" %>

<!-- 물품후원 S-->
		<div  class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>물품 후원 현황</h1></div>
			<div style="float: left;">
				<h4 style="font-weight: 600">
					진행중&nbsp;<i class="green circle icon" alt="진행중"></i>&nbsp;&nbsp;
					종료&nbsp;<i class="red circle icon" alt="기간만료종료"></i>&nbsp;&nbsp;
					승인대기중&nbsp;<i class="yellow circle icon" alt="승인대기중"></i>&nbsp;&nbsp;
					목표달성종료&nbsp;<i class="blue circle icon" alt="목표달성종료"></i>
				</h4>
			</div>
			<span>마이페이지 &gt; 내 사연 &gt; 물품 후원 현황</span>
		</div>
		<br>
		
		<table class="boardList mt30">
			<colgroup>
				<col style="width:6%;"><!-- No -->
				<col style="width:8%;"><!--  -->
				<col style="width:20%;"><!--  -->
				<col style="width:10%;"><!--  -->
				<col style="width:13%;"><!--  -->
				<col style="width:7%;"><!--  -->
			</colgroup>
			<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">제목</th>
				<th scope="col">내용</th>
				<th scope="col">물품명</th>
				<th scope="col">진행기간</th>
				<th scope="col">진행상태</th>
			</tr>
			</thead>
			<tbody id="itemTbody">
			<!-- itemTable() ajax 페이징 -->
			</tbody>
		</table>

		<div class="numbox pt40 pb50" id="itemPageArea"> 
			<!-- itemTable() ajax 페이징 -->
		</div>
<!-- 물품후원 E-->
		<br><br><br><br>
		
<!-- 금액후원 S-->
		<div class="titNavi">
			<div style="float: left;"><h1><i class="chevron right icon"></i>금액 후원 현황</h1></div>
			<div style="float: left;">
				<h4 style="font-weight: 600">
					진행중&nbsp;<i class="green circle icon"></i>&nbsp;&nbsp;
					종료&nbsp;<i class="red circle icon"></i>&nbsp;&nbsp;
					승인대기중&nbsp;<i class="yellow circle icon"></i>&nbsp;&nbsp;
					목표달성종료&nbsp;<i class="blue circle icon"></i>
					<!-- <img src="/duri/resources/HappyMyPage/images/status/ing.PNG" width="26px" height="25px" alt="진행중"> -->
					<!-- <img src="/duri/resources/HappyMyPage/images/status/finish.PNG" width="23px" height="24px" alt="종료"> -->
					<!-- <img src="/duri/resources/HappyMyPage/images/status/wating.PNG" width="22px" height="24px" alt="승인대기중"> -->
				</h4>
			</div>
			<span>마이페이지 &gt; 내 사연 &gt; 금액 후원 현황</span>
		</div>
<!-- 금액후원 E -->
		<br>
		
		
		<table class="boardList mt30">
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
				<td class="tleft"><a href="cloudMoneyDetail.happy">제 꿈은 수학자입니다. 그런데 교과서 살 돈이 모자라서 늘 짝꿍 책을 같이 보다..</a></td>
				<td>2018-11-04 ~ 2019-01-04</td>
				<td><!-- <img src="/duri/resources/HappyMyPage/images/status/ing.PNG" width="25px" height="25px" alt="진행중"></td> -->
					<i class="green circle icon" alt="진행중"></i>
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
			<button onclick="location.href='cloudWrite.happy'" class="massive ui instagram button">사연 신청하러 가기</button>
		</div>

</div><!--// inner E-->
</div> 


<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>

<script>
	
	//물품후원 목록 조회
	function itemTable(currentPage){
		/* console.log("currentPage는? : " + currentPage); */
		
		$.ajax({
			url:"itemDonateList.happy",
			type:"get",
			data:{currentPage:currentPage},
			success:function(data){
				/* console.log("리스트 : " + data.itemDonateList[0].fitemname);
				console.log("페이징 : " + data.pi.startPage); */
		      
				
				//테이블 리스트 띄우기
				var itemTbodyHtml = [];//테이블 html 담을 배열생성
				
				for(var i = 0; i < data.itemDonateList.length; i++){
					//날짜변환
					var sd = new Date(data.itemDonateList[i].fstartdate);
					var	ed = new Date(data.itemDonateList[i].fenddate);
			        var startDate = "";		var endDate = "";
			        startDate = sd.getFullYear() + '-' + ('0' + (sd.getMonth() + 1)).slice(-2) + '-' + ('0' + (sd.getDate())).slice(-2);
			        endDate = ed.getFullYear() + '-' + ('0' + (ed.getMonth() + 1)).slice(-2) + '-' + ('0' + (ed.getDate())).slice(-2);
			        //제목,내용 길이 제한
					var title = (data.itemDonateList[i].ftitle).substring(0, 11);
					var content = (data.itemDonateList[i].fcontent).substring(0, 25);
					
			        itemTbodyHtml.push('<tr>');
					itemTbodyHtml.push('<td>'+data.itemDonateList[i].rnum+'</td>');
				if(data.itemDonateList[i].ftitle.length > 11){
					itemTbodyHtml.push('<td>'+title+'...</td>');
				}else{
					itemTbodyHtml.push('<td>'+data.itemDonateList[i].ftitle+'</td>');
				}
				if(data.itemDonateList[i].fcontent.length > 25){
					itemTbodyHtml.push('<td><a href="cloudThingDetail.happy">'+content+'...</a></td>');
				}else{
					itemTbodyHtml.push('<td><a href="cloudThingDetail.happy">'+data.itemDonateList[i].fcontent+'</a></td>');
				}	
					itemTbodyHtml.push('<td>'+data.itemDonateList[i].fitemname+'</td>');
					itemTbodyHtml.push('<td>'+startDate+'~'+endDate+'</td>');
				if(data.itemDonateList[i].fstatus == 'ING'){
					itemTbodyHtml.push('<td><i class="green circle icon" alt="진행중"></i></td>');
				}else if(data.itemDonateList[i].fstatus == 'END'){
					itemTbodyHtml.push('<td><i class="red circle icon" alt="기간종료"></i></td>');
				}else if(data.itemDonateList[i].fstatus == 'GOAL'){
					itemTbodyHtml.push('<td><i class="blue circle icon" alt="달성되어종료"></i></td>');
				}else{
					itemTbodyHtml.push('<td><i class="yellow circle icon" alt="승인전"></i></td>');
				} 
					itemTbodyHtml.push('</tr>');
				}
	
				$("#itemTbody").html("");//깨끗히 비우고
				$("#itemTbody").append(itemTbodyHtml.join(''));//''를 기준으로push된거 넣기
				
				
				
				//페이징 처리
				var itemTbodyPageHtml = [];	
				var currentPage = data.pi.currentPage;
				//<<, <버튼 만들기
				itemTbodyPageHtml.push('<span><a class="num" onclick="itemTable(1);">&lt;&lt;</a></span>');
			if(currentPage <= 1){
				itemTbodyPageHtml.push('<span><a class="num" disabled>&lt;</a></span>');
			}else{//1보다 큰 수의 페이지면
				itemTbodyPageHtml.push('<span><a class="num" onclick="itemTable('+(currentPage-1)+')">&lt;</a></span>');
			}
			
				//숫자 버튼 만들기
			for(var i = data.pi.startPage; i <= data.pi.endPage; i++ ){
				if(i == currentPage){
					itemTbodyPageHtml.push('<span><a class="num on" disabled>'+i+'</a></span>');
				}else{
					itemTbodyPageHtml.push('<span><a class="num" onclick="itemTable('+i+')">'+i+'</a></span>');
				}
			}
				//>>, >버튼 만들기
				if(currentPage >= data.pi.maxPage){
					itemTbodyPageHtml.push('<span><a class="num" disabled>&gt;</a></span>');
				}else{
					itemTbodyPageHtml.push('<span><a class="num" onclick="itemTable('+(currentPage+1)+')">&gt;</a></span>');
				}
				itemTbodyPageHtml.push('<span><a class="num" onclick="itemTable('+data.pi.maxPage+');">&gt;&gt;</a></span>');
				
				
				$("#itemPageArea").html("");
				$("#itemPageArea").append(itemTbodyPageHtml.join(''));
				
			
			},
			error:function(data){
				console.log("데이터 통신 실패");
				alert("실패");
				
				
			}
			
		});
	}
	
	/* //금액후원 목록 조회
	function moneyTable(){
		
	} */

	$(function (){
		itemTable(1);
	});

</script>
	
</body>
</html>