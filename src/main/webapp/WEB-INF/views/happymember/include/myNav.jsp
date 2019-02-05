<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
/* 모달 창 */
/*background */
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

/*내용 */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 중앙정렬 */
	padding: 20px;
	border: 1px solid #888;
	width: 50%;
	height: 950px;
}

input {font-size: 20px;}
select {font-size: 15px;}
.num {font-size: 15px;}

/* 닫기 버튼 */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

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
}
.resetBtn:hover {color: silver; cursor: pointer;}
.deliveryBtn:hover {color: orange; cursor: pointer;}
</style>
</head>
<body>
<div id="subvisual">
	<div id="subvisual-sub">
		<!-- 네비 왼쪽 -->
		<div style="float: left; margin-left: 270px;">
			<div style="float: left;">
				<img class="defaultPhoto" src="resources/HappyMyPage/images/status/girlProfile.png">
			</div>
			<span class="box-left-content">
				제니<br>
				500,000&nbsp;<i class="yellow product hunt icon"></i>
			</span>
			<br>
			<div style="font-weight: bold; color: white; font-size:20px;">
				후원 총 누적액 : 1,507,000 원
			</div>
		</div>
		
		<!-- 네비 가운데 -->
		<div class="box-center" style="float: left;"></div>
		
		<!-- 네비 오른쪽 -->
		<div class="box-right">
			<!-- Trigger/Open The Modal -->
			<span><a class="a-tag" href="Aerin_return.happy" style="margin-right: 80px;">포인트 환급</a></span>
			<span><a class="a-tag" id="modalBtn">보유물품</a></span><br>
			<span><a class="a-tag" href="#" style="margin-right: 80px;">내 정보 수정</a></span>
			<span><a class="a-tag" href="#">알림</a></span><br>
		</div>
	</div>
</div>
<!-- 물품목록 모달 띄우기 S -->
<!-- 모달 창  -->
<div id="myModal" class="modal">
 
	<!-- 내용 -->
	<div class="modal-content">
		<!-- 닫기 버튼 -->
		<span class="close">&times;</span>       
                                                       
		<h1 align="center"><&nbsp;보유 물품 현황&nbsp;></h1>
		<br><br>
		<div>
			<!-- 왼쪽 세로 물품 -->
			<div style="float: left; margin-left:30px;">
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;생리대중형(10개입)
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;스킨&로션
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;쌀
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;통조림
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
			</div>
			
			<!-- 가운데 세로 물품 -->
			<div style="float: left; margin-left:80px;">
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;속옷
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;도서
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;라면
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;세제
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br>
			</div>
			
			<!-- 오른쪽 세로 물품 -->
			<div style="float: left; margin-left: 150px;">
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;양말
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;학용품
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;스팸
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
				<br><br><br><br><br><br>
				<div style="float: left;"><input type="radio"/></div>
				<div style="float: left;">
					<h3>&nbsp;&nbsp;샴푸&린스
						<select>
						<option>3</option>
						<option>2</option>
						<option>1</option>
						</select>
					</h3>
				</div>
			</div>
		</div>
		<!-- 페이징 -->
		<div class="numbox pt40 pb50"> 
			<span><a class="num" href="#">&lt;</a></span>
			<span><a class="num on" href="#">1</a></span>
			<span><a class="num" href="#">2</a></span>
			<span><a class="num" href="#">3</a></span>
			<span><a class="num" href="#">4</a></span>
			<span><a class="num" href="#">5</a></span>
			<span><a class="num" href="#">&gt;</a></span>
		</div>
		<br><br><br><br><br>
		<div>
			<div style="float: left; margin-left: 25%;" class="textBlack1">배송 받을 물품을&nbsp;</div>
			<div style="float: left;" class="textOrange1">맞게 선택하셨나요?</div><br>
			<div style="float: left; margin-left: 8%;" class="textBlack2" >배송 받을 주소가 변경되었다면&nbsp;</div>
			<div style="float: left;" class="textOrange2">내 정보 수정</div>
			<div style="float: left;" class="textBlack2">에서 꼭!수정해주세요!&nbsp;</div>
		</div>
		<br>
		<!-- 취소, 배송받기 위에 선 표현 -->
		<h2 class="ui dividing header">&nbsp;</h2><br>
		<div align="center"><a class="resetBtn">취소</a></div>
		<div align="center"><a class="deliveryBtn">배송받기</a></div>
	</div>
</div>
<script>

	//모달 가져오기
	var modal = document.getElementById('myModal');

	//모달창 여는 a태그
	var modalbtn = document.getElementById("modalBtn");

	//모달 닫기 버튼
	var modalclose = document.getElementsByClassName("close")[0];

	//버튼을 눌렀을 때 모달 창 띄우기
	modalbtn.onclick = function() {
		modal.style.display = "block";
	}

	//(x)를 눌렀을 때 모달 창 닫기
	modalclose.onclick = function() {
		modal.style.display = "none";
	}

	//외부의 검은 화면 클릭 시 모달 창 닫기
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>
<!-- 물품목록 모달 띄우기 E -->


<script type="text/javascript">
function openNav() {
  document.getElementById("myNav").style.width = "100%";
}

function closeNav() {
  document.getElementById("myNav").style.width = "0%";
}
</script>
</body>


