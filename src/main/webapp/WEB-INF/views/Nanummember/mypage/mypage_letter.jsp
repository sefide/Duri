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
	
</style>
</head>
<body>
<%@ include file="../../common/navi.jsp" %>
<%@ include file="../include/header.jsp" %>
<!-- #wrap {position:relative; width:100%;} -->
	<div id="wrap">		
			<div class="contBox inner">
				<%@ include file="../include/tabMypage.jsp"%>

			<div class="tableArea">
				<div id="myTitle"><i class="envelope icon"></i></i>정기 행복두리 편지</div>
				<table>
					<thead>
						<tr>
							<th style="width: 45%;">제목</th>
							<th style="width: 15%;">진행현황</th>
							<th style="width: 30%;">내가 후원한 호인트</th>
							<th style="width: 15%;">100%달성여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>굶어서 영양실조에 걸린 제 동생을 도와주세요</td>
							<td>80%</td>
							<td>20,000원</td>
							<td>X</td>
						</tr>
						<tr>
							<td>학교에 가고 싶어요</td>
							<td>70%</td>
							<td>50,000원</td>
							<td>X</td>
						</tr>
						<tr>
							<td>추운겨울 월세를 못내서,,,</td>
							<td>100%</td>
							<td>40,000원</td>
							<td>O</td>
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
							<th style="width: 45%;">제목</th>
							<th style="width: 15%;">진행현황</th>
							<th style="width: 30%;">내가 후원한 호인트</th>
							<th style="width: 15%;">100%달성여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>밀린 월세를 도와주세요</td>
							<td>77%</td>
							<td>10,000원</td>
							<td>X</td>
						</tr>
						<tr>
							<td>계속해서 공부를 하고싶어요</td>
							<td>100%</td>
							<td>40,000원</td>
							<td>O</td>
						</tr>
						<tr>
							<td>제 동생의 간 수술비를 도와주세요</td>
							<td>100%</td>
							<td>20,000원</td>
							<td>O</td>
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
	</div>		
			
			
	

	<%@ include file="../include/myNav.jsp" %>

</body>
</html>