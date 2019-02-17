<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
/* 모달 창 : modal-물품목록, modal2-알림창 */
/*모달의 background(window부분)*/
.modal {
	display: none; /* 버튼 누르기 전은 숨겨놓기 */
	position: fixed; /* Stay in place */
	z-index: 1; /* 뷰 위에 띄워야 하니까 1로 설정 (뷰는 0) */
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4); /* 투명도 */
}

.modal2 {
	display: none; 
	position: fixed;
	z-index: 1; 
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto; 
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4); 
}

/*내용 */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 중앙정렬 */
	padding: 20px;
	border: 1px solid #888;
	width: 50%;
	height: 950px;
}
.modal-content2 {
	background-color: #F9E79F;
	margin: 15% auto; /* 중앙정렬 */
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
	height: 300px;
}

input {font-size: 20px;}
select {font-size: 15px;}
.num {font-size: 15px;}
p {font-size: 20px; text-align: center;}

/* 닫기 버튼 */
#close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}
#close2 {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

#close:hover, #close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
#close2:hover, #close2:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}/*모달 창 끝*/

/* 네비 a태그*/
.a-tag {
	font-size: 25px;
	font-weight: bold;
	color: white;
	text-align: left;
}
.a-tag:hover {
	color: orange;
	cursor: pointer;
}
/* 프로필 사진 고정 */
.defaultPhoto {
    width: 100px; 
    height: 100px;
    object-fit: cover;
    object-position: top;
    border-radius: 50%; 
}

/*메인 네비바 왼,오*/
.box-left-content {
	color: white;	  
	text-align: left;
	line-height: 40px;
	display: table-cell;
	vertical-align: middle;
	font-size:23px !important;
	padding-left: 10px;
	padding-top: 15px;
	font-weight: bold;
}
.box-center{
 	color: white;
 	width: 1px; 
 	height: 150px; 
 	background: gray;
 	margin:  1px 240px;
}
.box-right {
  	flex: 1;
  	color: white !important;
  	text-align: left; 	
  	display: table-cell;
	vertical-align: middle;
	line-height: 80px;
	/* font-weight: bold;  */
	/* font-family: Nanum Pen Script; */
}

.textBlack1, .textBlack2{color: black; font-weight: 600;}
.textOrange1, .textOrange2 {color: orange; font-weight: 600;}
.textBlack1, .textOrange1 {font-size: 25px;}
.textBlack2, .textOrange2 {font-size: 22px;}

/*취소, 배송받기 버튼*/
.resetBtn {
	font-size: 27px; 
	font-weight: bold;
	color: silver;
	width: 50%; 
	float: left;
}
.deliveryBtn {
	font-size: 27px; 
	font-weight: bold;
	color: orange;
	width: 50%; 
}
.resetBtn:hover {color: silver; cursor: pointer;}
.deliveryBtn:hover {color: orange; cursor: pointer;}

</style>
</head>
<body>
<div id="subvisual">
	<div id="subvisual-sub">
		<!-- 네비 왼쪽 -->
		<div style="float: left; margin-left: 17%;">
			<div style="float: left;">
				<img class="defaultPhoto" src="resources/HappyMyPage/images/status/girlProfile.png">
			</div>
			<span class="box-left-content">
				${loginUser.mNickName}<br>
				${loginUser.mPoint}&nbsp;<i class="yellow product hunt icon"></i>
			</span>
			<br>
			<div style="font-weight: bold; color: white; font-size:20px;">
				매 달 정기후원 금액 : ${loginUser.dMoney} 원
			</div>
			<div style="font-weight: bold; color: white; font-size:20px;">
				일시 후원 총 누적액 : ${loginUser.cfMoney} 원
			</div>
		</div>
		
		<!-- 네비 가운데 -->
		<div class="box-center" style="float: left;">
		<input type="hidden" name="mno" value="${loginUser.mno}"/>
		</div>
		
		<!-- 네비 오른쪽 -->
		<div class="box-right">
			<!-- Trigger/Open The Modal -->
			<span><a class="a-tag" href="pointReturnListHappy.pm" style="margin-right: 80px;">포인트 환급</a></span>

			<span><a class="a-tag" id="modalBtn" onclick="items(${loginUser.mno}<%-- ,${loginUser.mAddress} --%>);">보유물품</a></span><br>
			<span><a class="a-tag" href="myInfoModifyHappy.happy" style="margin-right: 80px;">내 정보 수정</a></span>
			<span><a class="a-tag" id="modalBtn2">알림</a></span><br>
		</div>
	</div>
</div>
<!-- 물품목록 모달 띄우기 S -->
<!-- 모달 창  -->
<div id="myModal" class="modal">
 
	<!-- 내용 -->
	<div class="modal-content">
		<!-- 닫기 버튼 -->
		<span id="close">&times;</span>       
                                                       
		<h1 align="center"><&nbsp;보유 물품 현황&nbsp;></h1>
		<br><br>
		
		<div id="itemsList" style="height: 550px;">
			<!-- 왼쪽 세로 물품 -->
			<form action="getDelivery.happy" id ="getDeliveryForm">
			<div id="items1" style="float: left; margin-left:30px;">
				<!-- 
				<div style="float: left;">
					<input type="radio" name = "item" value = "생리대"/>
				</div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;생리대
						<select name = "amount" >
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br>-->
			</div>
			
			<!-- 가운데 세로 물품 -->
			<div id="items2" style="float: left; margin-left:80px;"></div>
			
			<!-- 오른쪽 세로 물품 -->
			<div id="items3" style="float: left; margin-left: 100px;"></div>
			</form>
		</div>
		<br><br><br>
		<div style="height: 80px;">
			<div style="float: left; margin-left: 24%" class="textBlack1">배송 받을 물품을&nbsp;</div>
			<div style="float: left;" class="textOrange1">맞게 선택하셨나요?</div><br>
			<div style="float: left; margin-left: 7%" class="textBlack2" >배송 받을 주소가 변경되었다면&nbsp;</div>
			<div style="float: left;" class="textOrange2">내 정보 수정</div>
			<div style="float: left;" class="textBlack2">에서 꼭!수정해주세요!&nbsp;</div>
		</div>
		<h4 class="ui dividing header"></h4>
		<div align="center"><a onclick="selectReset();" class="resetBtn">취소</a></div>
		<div align="center" onclick="getDelivery();"><a class="deliveryBtn">배송받기</a></div>
	</div>
</div>
<!-- 물품목록 모달 띄우기 E -->

<!-- 알림 모달 띄우기 S -->
<div id="myModal2" class="modal2">
	<!-- 내용 -->
	<div class="modal-content2">
		<!-- 닫기 버튼 -->
		<span id="close2">&times;</span>  
		
		<h1 align="center"><&nbsp;내용&nbsp;></h1>
		<br><br>
		<div>
			<p>●'기초생활 수급자.jpg'제출이 반려되었습니다.</p>
			<p>●'한부모 가족 증명서.png'제출이 반려되었습니다.</p>
		</div>
	</div>	    
</div>
<!-- 알림 모달 띄우기 E -->
<script>
     
   //클릭시 모달 가져오기(알림)
	$(function () {
        $("#modalBtn2").click(function () {
        	$("#myModal2").css("display", "block");
        });
     });
	
	//모달 닫기 버튼
	$(function (){
		$("#close").click(function(){
			$("#myModal").css("display", "none");
		});
	});
	$(function (){
		$("#close2").click(function(){
			$("#myModal2").css("display", "none");
		});
	});
	
	

	/* //외부의 검은 화면 클릭 시 모달 창 닫기
	var modal = document.getElementById("myModal");
	var modal2 = document.getElementById("myModal2");
	
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}else if(event.target == modal2){
			modal2.style.display = "none";
		}
	} */

	//클릭시 모달 가져오고
	//보유하고 있는 물품명&수량 뿌리기
	function items(mno){
		$("#myModal").css("display", "block");
		console.log("ajax 회원번호 : " + mno);
		/* console.log("ajax 회원주소 : " + address); */
		
		$.ajax({
			url:"donateItemList.happy",
			type:"get",
			data:{mno:mno},
			success:function(data){
				console.log(data.ownlist);
				console.log(data.fundItemList);
	
				$itemsList = $("#itemsList");
				$items1 = $("#items1");
				$items2 = $("#items2");
				$items3 = $("#items3");
				
				
				for(var i in data.fundItemList){
					/* console.log(data.fundItemList[i]); */
					console.log(data.fundItemList[i].iname);//후원가능 물품 명 다 뽑기
					console.log(data.ownlist[i]);//보유 물품 뽑기(번호, 수량 등)
					
					//물품명 뽑기
					var fundItemList01= "<div style='float: left;'><input type='checkbox' name = 'item' value = "+data.fundItemList[i].ino+"></div><div style='float: left;'><h3>&nbsp;&nbsp;"+data.fundItemList[i].iname;
					var fundItemList02= "</h3></div><br><br><br><br>"
					
						//수량 뽑기
						$itemsSelect = $("<select name = 'amount' id='amount'>");
						$itemsSelect.append($("<option>").text(0));
						var itemsOption = "";
						
						//<select>	<option>3</option><option>2</option><option>1</option></select>
						for(var o in data.ownlist){//보유물품리스트를 순서대로 인덱스를 줘서 정보 뽑기
							console.log("보유물품번호 : " + data.ownlist[o].o_ino + "/ 후원물품번호 : " + data.fundItemList[i].ino);
							if(data.ownlist[o].o_ino == data.fundItemList[i].ino){
								console.log("if문 진입했습니다용")
								var optionStart = "<option>";
								var optionEnd = "</option>";
								$itemsSelect.empty();
								
								for(var j = data.ownlist[o].ovalue; j >0; j--){
									console.log("오 !!option 추가했다");
									itemsOption = (optionStart+ j + optionEnd);
									$itemsSelect.append(itemsOption);
									
								}
							}
							if(data.ownlist[o].ovalue <= 0){
								$itemsSelect.empty();
								$itemsSelect.append($("<option>").text(0));
							} 
						}
						
					console.log($itemsSelect);
					if(i < 7){
						$items1.append(fundItemList01);
						$items1.append($itemsSelect);
						$items1.append(fundItemList02);
					} else if(i >= 7 && i < 13){
						$items2.append(fundItemList01);
						$items2.append($itemsSelect);
						$items2.append(fundItemList02);
					} else {
						$items3.append(fundItemList01);
						$items3.append($itemsSelect);
						$items3.append(fundItemList02);
					}
				}
				
			},
			error:function(data){
				console.log("통신실패");
			}
		});
	}
	
	//배송 받기 버튼 클릭 함수
	//배송 현황 목록 추가
	//배송 상세 현황 목록 추가
	function getDelivery(){
		var item = [];
		var itemAmount = [];
		var address = "${ loginUser.mAddress }";
		
		$("input[name='item']:checked").each(function(){//=for문
			item.push($(this).val());	//물품번호 가져오기
			itemAmount.push($(this).parent().next().next($("#amout option:selected")).val());//select값(물품수량)가져오기

		});
			console.log("체크박스 값 : " + item);
			console.log("개수 : " + itemAmount);
		
			location.href="getDelivery.happy?item="+item+"&itemAmount="+itemAmount+"&mno="+${loginUser.mno} + "&address="+ address;
			/* console.log("주소 : " + (${loginUser.mAddress})); */
	}
	
	//보유물품 - 취소 버튼 클릭 함수
	function selectReset(){
		$("#getDeliveryForm")[0].reset();
		$("#myModal").css("display", "none");
		
	}
	
</script>

</body>




