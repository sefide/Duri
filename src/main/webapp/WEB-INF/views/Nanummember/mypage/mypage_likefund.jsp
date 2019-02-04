<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="5";
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
		cursor : pointer;
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
				<div id="myTitle"><i class="heart icon"></i>보고싶은 정기 행복두리</div>
				<table>
					<thead>
						<tr>
							<th style="width: 20%;">행복두리</th>
							<th style="width: 80%;">자기소개</th>							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>행콩이</td>
							<td>4남매 중 첫째인 저는 소녀가장입니다. 4남매다 보니 보조금은 턱없이 부족합니다....</td>
						</tr>
						<tr>
							<td>뭉뭉이</td>
							<td>안녕하세요. 외 증조 할머니와 살고있는 고등학생입니다. 학교가기도 너무힘들고 ....</td>							
						</tr>
						<tr>
							<td>햇살이</td>
							<td>차가운 물, 보일러도 안들어오는 집에 살고있는 중입니다. 저희는 ....</td>							
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
				<div id="myTitle"><i class="heart icon"></i>보고싶은 크라우드 펀딩</div>
				<div style="width: 96%; margin: 0 auto;">
				<div class="categotyBtn" onclick="#" style="margin-right: 30px;">금액</div>
				<div class="categotyBtn" onclick="#">물품</div>
				</div>
				<table>
					<thead>
						<tr>
							<th style="width: 20%;">행복두리</th>
							<th style="width: 80%;">크라우드 펀딩 제목</th>
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>눈송이</td>
							<td>간이 아픈 제 동생의 수술비를 도와주세요.</td>							
						</tr>
						<tr>
							<td>솔솔향기</td>
							<td>추운겨울 집에서 쫓겨날 위기에 처해있어요.</td>						
						</tr>
						<tr>
							<td>하하호호</td>
							<td>학교에 가고싶은데 입학금이 부족해요.</td>						
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