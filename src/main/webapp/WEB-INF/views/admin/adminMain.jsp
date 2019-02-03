<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
	<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">
			<li><a href="adminMain.ad" class="active-menu"><i
					class="fa fa-dashboard"></i>통계관리</a></li>
			<li><a href="adminNanum.ad"><i class="fa fa-desktop"></i>나눔두리
					관리</a></li>

			<li><a href="#"><i class="fa fa-sitemap"></i>행복두리 관리<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="adminHappyAll.ad">행복두리 전체관리</a></li>
					<li><a href="adminHappy.ad">행복두리 승인관리</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-edit"></i>Q&A 관리<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="QnA.ad">나눔두리 Q&A</a></li>
					<li><a href="QnA.ad">행복두리 Q&A</a></li>
				</ul></li>

			<li><a href="#"><i class="fa fa-qrcode"></i>후원 관리<span
					class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="adminCrowd.ad">크라우드 펀딩 관리</a></li>
					<li><a href="adminGoods.ad">후원 물품관리</a></li>
				</ul></li>
		</ul>
	</div>
	</nav>



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
									<h3>18명</h3><br>
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
									<h3>4명</h3><br>
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
									<h3>4건</h3><br>
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
									<h3>23건</h3><br>
									<big>진행 펀딩글</big>
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
								<span class="percent">100,000</span>
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
								<span class="percent">34개</span>
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
								<span class="percent">430,500</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3">
					<div class="panel panel-default">
						<div class="panel-body easypiechart-panel">
							<h4>포인트 충전금액</h4>
							<div class="easypiechart" id="easypiechart-red" data-percent="46">
								<span class="percent">470,000</span>
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
											<td>129명</td>
										</tr>
										<tr>
											<td class="total">누적 행복두리</td>
											<td>584명</td>
										</tr>
										<tr>
											<td class="total">총 누적 후원 금액 </td>
											<td>34,434,500원</td>
										</tr>
										<tr>
											<td class="total">누적 정기후원 금액</td>
											<td>345,000원</td>
										</tr>
										<tr>
											<td class="total">누적 펀딩후원 금액</td>
											<td>34,089,500원</td>
										</tr>
										<tr>
											<td class="total">누적 후원물품 갯수</td>
											<td>43,043개</td>
										</tr>
										<tr>
											<td class="total">누적 정기후원 연결 건수</td>
											<td>345건</td>
										</tr>
										<tr>
											<td class="total">누적 펀딩후원 게시 건수</td>
											<td>12,340건</td>
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
						<div class="panel-heading">Area Chart</div>
						<div class="panel-body">
							<div id="morris-area-chart"></div>
						</div>
					</div>
				</div>

			</div>
			<!-- /. ROW  -->
			<div class="row">

				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">Line Chart</div>
						<div class="panel-body">
							<div id="morris-line-chart"></div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">Donut Chart</div>
						<div class="panel-body">
							<div id="morris-donut-chart"></div>
						</div>
					</div>
				</div>

			</div>

<footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez.com</a></p></footer>
		</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<jsp:include page="include/adminFooter.jsp" />
</body>

</html>