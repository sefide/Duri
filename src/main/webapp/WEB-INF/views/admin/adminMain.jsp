<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta content="" name="description" />
<meta content="webthemez" name="author" />
<style type="text/css">
.total{
	background-color: #f2f5f9;
	font-weight: bold;
	}


</style>
<title>통계관리</title>
<jsp:include page="include/adminStyle.jsp" />

</head>


<body>

<div id="wrapper">
	
	<jsp:include page="include/adminNavi.jsp" />
	
	
	



	<div id="page-wrapper">
		
		<div class="header">
			<h1 class="page-header">
				TODAY <small>DURI</small>
			</h1>
		</div>


		<div id="page-inner">
			<div class="row">
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
						<div class="panel panel-primary">
							<div class="number">
								<h3>
									<h3>${Todaylist[0]}명</h3><br>
									<big>신규 나눔두리</big>
								</h3>
							</div>
							<div class="icon">
								<i class="fa fa-user fa-5x blue"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
						<div class="panel panel-primary">
							<div class="number">
								<h3>
									<h3>${Todaylist[1]}명</h3><br>
									<big>신규 행복두리</big>
								</h3>
							</div>
							<div class="icon">
								<i class="fa fa-user fa-5x yellow"></i>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
						<div class="panel panel-primary">
							<div class="number">
								<h3>
									<h3>${Todaylist[2]}건</h3><br>
									<big>정기후원 연결</big>
								</h3>
							</div>
							<div class="icon">
								<i class="fa fa-eye fa-5x nam"></i>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-12 col-xs-12">
					<div class="board">
						<div class="panel panel-primary">
							<div class="number">
								<h3>
									<h3>${Todaylist[3]}건</h3><br>
									<big>신규 승인 펀딩글</big>
								</h3>
							</div>
							<div class="icon">
								<i class="fa fa-comments fa-5x green"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6 col-xs-12"></div>
			</div>

			<div class="row">
				<div class="col-xs-6 col-md-3">
					<div class="panel panel-default">
						<div class="panel-body easypiechart-panel">
							<h4>정기후원 금액</h4>
							<div class="easypiechart" id="easypiechart-blue"
								data-percent="82">
								<span class="percent"><fmt:formatNumber value = "${Todaylist[4]}" type="currency" currencySymbol=" "/></span>
								
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3">
					<div class="panel panel-default">
						<div class="panel-body easypiechart-panel">
							<h4>후원물품 갯수</h4>
							<div class="easypiechart" id="easypiechart-orange"
								data-percent="55">
								<span class="percent">${Todaylist[5]}개</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3">
					<div class="panel panel-default">
						<div class="panel-body easypiechart-panel">
							<h4>펀딩후원 금액</h4>
							<div class="easypiechart" id="easypiechart-teal"
								data-percent="84">
								<span class="percent"><fmt:formatNumber value = "${Todaylist[6]}" type="currency" currencySymbol=" "/></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3">
					<div class="panel panel-default">
						<div class="panel-body easypiechart-panel">
							<h4>포인트 충전금액</h4>
							<div class="easypiechart" id="easypiechart-red" data-percent="46">
								<span class="percent"><fmt:formatNumber value = "${Todaylist[7]}" type="currency" currencySymbol=" "/></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--/.row-->



			<h1 class="page-header">
				TOTAL <small>statistics</small>
			</h1>



			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">Since 2019 Total</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered">
									<tbody>
										<tr>
											<td class="total">누적 나눔두리</td>
											<td>${Totallist[0]}명</td>
										</tr>
										<tr>
											<td class="total">누적 행복두리</td>
											<td>${Totallist[1]}명</td>
										</tr>
										<tr>
											<td class="total">총 누적 후원 금액 </td>
											<td><fmt:formatNumber value = "${Totallist[5]}" type="currency" currencySymbol=" "/>원</td>
										</tr>
										<tr>
											<td class="total">누적 정기후원 금액</td>
											<td><fmt:formatNumber value = "${Totallist[2]}" type="currency" currencySymbol=" "/>원</td>
										</tr>
										<tr>
											<td class="total">누적 펀딩후원 금액</td>
											<td><fmt:formatNumber value = "${Totallist[3]}" type="currency" currencySymbol=" "/>원</td>
										</tr>
										<tr>
											<td class="total">누적 후원물품 갯수</td>
											<td>${Totallist[4]}개</td>
										</tr>
										<tr>
											<td class="total">누적 정기후원 연결 건수</td>
											<td>${Totallist[6]}건</td>
										</tr>
										<tr>
											<td class="total">누적 펀딩후원 게시 건수</td>
											<td>${Totallist[7]}건</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- /. ROW  -->



			<h1 class="page-header">
				GRAPH <small>statistics</small>
			</h1>



			<div class="row">


				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">Bar Chart</div>
						<div class="panel-body">
							<div id="morris-bar-chart"></div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">Donut Chart</div>
						<div class="panel-body">
							<div id="morris-donut-chart">
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- /. ROW  -->

		<div id="barChartValue" style="display: none;">
			<c:forEach items="${barChartList}" var="vo" varStatus="index">
				<span id="${vo.MONTH}">${vo.MONTHCNT}</span>
			</c:forEach>
		</div>
			

<footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez.com</a></p></footer>
		</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<jsp:include page="include/adminFooter.jsp" />
</body>

<script type="text/javascript">
(function ($) {
	Morris.Bar({
	    element: 'morris-bar-chart',
	    data: [{
	        y: $("#barChartValue").children("span").eq(0).attr("id"),
	        a: $("#barChartValue").children("span").eq(0).text(),
	        b: 90
	    }, {
	        y: '2',
	        a: 75,
	        b: 65
	    }, {
	        y: '3',
	        a: 50,
	        b: 40
	    }, {
	        y: '4',
	        a: 75,
	        b: 65
	    }, {
	        y: '5',
	        a: 50,
	        b: 40
	    }, {
	        y: '2011',
	        a: 75,
	        b: 65
	    }, {
	        y: '2012',
	        a: 100,
	        b: 90
	    }],
	    xkey: 'y',
	    ykeys: ['a', 'b'],
	    labels: ['Series A', 'Series B'],
		 barColors: [
	'#FABE28','#30A5FF',
	'#A8E9DC' 
	],
	    hideHover: 'auto',
	    resize: true
	});
}(jQuery));
</script>

</html>