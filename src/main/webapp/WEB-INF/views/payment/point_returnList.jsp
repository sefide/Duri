<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	String bigtabon="0";
%>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<jsp:include page="../Nanummember/include/common.jsp" />
<title> 나눔두리 마이페이지</title>
<jsp:include page="../common/css.jsp" />
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
		color: #FE9D35;
		font-weight:bold;
		cursor:pointer;
		text-align: center;
		
	}
	#back-btn{
		background: #FE9D35;
		width : 320px;
		height : 50px;
		border-radius : 5px;
		text-align : center;
		padding-top : 8px;
		cursor : pointer;
	}
	#btnReturnPage{
		border-radius : 4px;
		font-weight : 600;
		color : white;
		font-size : 19px;
		cursor : pointer;
	}
</style>
</head>
<body>
<jsp:include page="../common/navi.jsp" />
<jsp:include page="../Nanummember/include/header.jsp" />
<!-- #wrap {position:relative; width:100%;} -->
	<div id="wrap">		
			<div class="contBox inner">
				<jsp:include page="include/tabMypage_point.jsp"/>

			<div class="tableArea">
				<div id="myTitle"> <i class="reply icon"></i>후원포인트 환불신청 </div>
    			<!-- ftco-animate -->
    			<p>둘이두리에서는 결제 기부하신 기부자님들께 연말정산 소득공제를 위한 기부금영수증 발급을 지원합니다. <br>
				소득세법 제 160조의 3에 따라 기부금 영수증을 발행하고 있으며, 개인정보(고유식별정보) 수집 및 이용에
				동의를 해주셔야 기부금 영수증 발급이 가능합니다. </p>
				<div id = "back-btn">
					<a href = "pointReturn.pm" id = "btnReturnPage">환불 신청하러가기</a>
    			</div>
    			
    			<br><br><br><br>
				
				<div id="myTitle"><i class="reply all icon"></i></i>포인트 환불 처리 내역</div>
				<table>
					<thead>
						<tr>
							<th>요청일시</th>
							<th>요청금액</th>
							<th>은행</th>
							<th>예금주명 </th>
							<th>계좌번호</th>
							<th>처리상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>요청일시</td>
							<td>요청금액</td>
							<td>은행</td>
							<td>예금주명 </td>
							<td>계좌번호</td>
							<td>처리상태</td>				
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
			
			
	

	<jsp:include page="../Nanummember/include/myNav.jsp" />
	<br><br>
    
    <!-- footer  -->
    <jsp:include page="../common/footer.jsp"></jsp:include>

	<!-- loader -->
	<jsp:include page="../common/loader.jsp"></jsp:include>
	
</body>
</html>