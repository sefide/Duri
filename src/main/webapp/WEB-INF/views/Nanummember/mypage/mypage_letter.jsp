<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="3";
%>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<%@ include file="../include/common.jsp" %>
<title> 나눔두리 마이페이지</title>
<%@ include file="../../common/css.jsp" %>
<style>
.mb50 {
     margin-bottom: 0px !important; 
}
#myTitle{
	margin-bottom: 20px;
	font-size:25px;
	color: rgba(250, 143, 61);
	font-weight: bold;
	
}	
.tableArea{
	width : 95%;
	margin : 0 auto;
	padding-top: 50px;
	padding-bottom: 20px;
/* 	margin-left: 20px;
	margin-right: 20px;   */
}
	table {
		width : 96%;
		margin : 0 auto;
		color : #434343;
		border-top : 4px solid #FE9D35; 
		text-align:center;	
		margin-bottom: 10px;
	}
	th{				
		color :  rgba(250, 143, 61);
		background : #FFEDBF;
		font-weight: bold;
		font-size: 17px;
	}
	tr{
		height : 50px;
	}
	td{
		font-size: 16px;
	}
	.categotyBtn{
		width: 80px;
		height: 30px;
		text-align: center;
		display: table-cell;
        vertical-align: middle; 
		background-color: #FFEDBF; 
		/* border-top: 3px solid #FE9D35;
		border-left: 3px solid #FE9D35; */
		/* border-right: 1px solid #FE9D35; */	 
		color: #FE9D35;
		font-weight:bold;
		/*margin-left : 10px;
		margin-right: 10px;		
		padding-left: 10px;
		padding-right: 10px;  */
		cursor:pointer;
		text-align: center;
		
	}
.categotyBtn:hover{
		color:  rgb(50, 147, 63);
	}

.hoverTr:hover{
	background-color : rgb(249, 246, 234);
	cursor: pointer;
}
</style>
</head>
<body>
<%@ include file="../../common/navi.jsp" %>
<%@ include file="../include/header.jsp" %>
<!-- #wrap {position:relative; width:100%;} -->
<br><br><br><br>	
			<div class="contBox inner">
				<%@ include file="../include/tabMypage.jsp"%>

			<div class="tableArea">
				<div id="myTitle"><i class="envelope icon"></i></i>정기 행복두리 편지</div>
				<div style="width: 96%; margin: 0 auto;">
				<div class="categotyBtn" onclick="#" style="margin-right: 30px;">진행중</div>
				<div class="categotyBtn" onclick="#">종료</div>
				</div>
				<table>
					<thead>
						<tr>
							<th style="width: 20%;">행복두리</th>
							<th style="width: 80%;">감사편지 제목</th>
						</tr>
					</thead>
					<tbody>
						<tr class="hoverTr" onclick="location.href='mypageLetterDetail.nanum'">
							<td >공룡이</td>
							<td>행복두리님 이번달 후원으로 다행히 급식비를 낼 수 있게 되었어요 감사합니다</td>						
						</tr>
						<tr class="hoverTr">						
							<td>밍구밍구</td>
							<td>이번 달 월세는 밀리지 않고 내서 불안하지 않게 잘 살고 있습니다! 감사해요</td>
						</tr>
						<tr class="hoverTr">
							<td>링이1004</td>
							<td>추운 겨울 나눔두리님 덕분에 연탄도 사고 따듯한 겨울 보내고 있어요</td>					
						</tr>
					</tbody>
				</table>
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>

			<div class="tableArea">
				<div id="myTitle"><i class="envelope outline icon"></i>크라우드펀딩 행복두리 편지</div>
				<div style="width: 96%; margin: 0 auto;">
				<div class="categotyBtn" onclick="#" style="margin-right: 30px;">금액</div>
				<div class="categotyBtn" onclick="#">물품</div>
				</div>
				<table>
					<thead>
						<tr>
							<th style="width: 20%;">제목</th>
							<th style="width: 80%;">진행현황</th>						
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>냥냥이</td>
							<td>생리대가 부족했었는데 많은 행복두리님 덕분에 충분해졌습니다 감사해요</td>						
						</tr>
						<tr>							
							<td>뭉뭉이</td>
							<td>5명의 동생들과 먹을 쌀이 부족했는데,,도와주셔서 밥을 먹게되어 행복해요</td>
						</tr>
						<tr>
							<td>행복행복이</td>
							<td>비누로 씼어 피부염이 났는데,,좋은 바디워시등을 선물해주셔서 나아가고있어요!</td>						
						</tr>
					</tbody>
				</table>
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>	

			
			
	

	<%@ include file="../include/myNav.jsp" %>

</body>
</html>