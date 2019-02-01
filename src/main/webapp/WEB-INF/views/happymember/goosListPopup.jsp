<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
/* 모달 background */
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

/* 모달 내용 */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 중앙정렬 */
	padding: 20px;
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}
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
</style>

<title>Insert title here</title>
</head>
<body>

<!-- Trigger/Open The Modal -->
<button id="modalBtn">Open Modal</button>
 
<!-- 모달 창  -->
<div id="myModal" class="modal">
 
	<!-- 내용 -->
	<div class="modal-content">
		<span class="close">&times;</span>                                                               
		<p>Some text in the Modal..</p>
	</div>
 
</div>
<script>

	//모달 가져오기
	var modal = document.getElementById('myModal');

	//모달창 여는 버튼
	var btn = document.getElementById("modalBtn");

	//모달 닫기
	var spanclose = document.getElementsByClassName("close")[0];

	//버튼을 눌렀을 때 모달 창 띄우기
	btn.onclick = function() {
		modal.style.display = "block";
	}

	//(x)를 눌렀을 때 모달 창 닫기
	spanclose.onclick = function() {
		modal.style.display = "none";
	}

	//외부의 검은 화면 클릭 시 모달 창 닫기
	window.onclick = function(event) {
		if (event.target == modal) {
			modal.style.display = "none";
		}
	}
</script>

</body>
</html>