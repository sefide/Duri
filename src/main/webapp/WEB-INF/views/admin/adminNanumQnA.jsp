<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta content="" name="description" />
<meta content="webthemez" name="author" />
<title>나눔두리 Q&A 답변 목록 페이지</title>
<jsp:include page="include/adminStyle.jsp" />
</head>
<body>
	<jsp:include page="include/adminNavi.jsp" />
	<div id="page-wrapper">
		<div class="header">
			<h1 class="page-header">나눔두리 문의 게시판</h1>
		</div>
		<div id="page-inner">
			<div class="row">
				<div class="col-md-12">
					<!-- Advanced Tables -->
					<div class="panel panel-default">
						<div class="panel-heading">나눔두리 Q&A 목록</div>
						<div class="panel-body">
							<div>
								<table class="table table-striped table-bordered table-hover dataTables-example">
									<thead>
										<tr>
											<th>No</th>
											<th style="display: none;">회원번호</th>
											<th style="display: none;">글번호</th>
											<th>답변 상태</th>
											<th>제목</th>
											<th>글쓴이</th>
											<th>작성일자</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="row" items="${adminNanumQnAList}" varStatus="status">
											<tr class="odd gradeX">
												<td>${status.count}</td>
												<td class="center" style="display: none;">${row.mno}</td>
												<td class="center" style="display: none;">${row.qNo}</td>
												<c:if test="${row.qAnswer==null}">
													<td class="center">미답변</td>
												</c:if>
												<c:if test="${row.qAnswer!=null}">
													<td class="center">답변완료</td>
												</c:if>
												<td class="center">${row.qTitle}</td>
												<td class="center">${row.mName}(${row.mid})</td>
												<td class="center">${row.qDate}</td>
												<c:if test="${row.qAnswer==null}">
													<td class="center"><a
														class="btn btn-default btn-sm QnAanswer">답변하러하기</a></td>
												</c:if>
												<c:if test="${row.qAnswer!=null}">
													<td class="center"></td>
												</c:if>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!--End Advanced Tables -->
				</div>
			</div>
			<!-- /. ROW  -->
		</div>
	</div>

	<jsp:include page="include/admintableFooter.jsp" />
	<script type="text/javascript">
		$(".QnAanswer").click(
				function() {
					var Mnonum = $(this).parent().parent().children().eq(1)
							.text();
					var Qnanum = $(this).parent().parent().children().eq(2)
							.text();
					location.href = "adminNanumQnADetail.ad?Mnonum=" + Mnonum
							+ "&Qnanum=" + Qnanum;
				});
	</script>
</body>
</html>
