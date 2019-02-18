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
    
    <title>크라우드 펀딩관리</title>
	 
	 <jsp:include page="include/adminStyle.jsp"/>
	 
</head>
<body>
   <jsp:include page="include/adminNavi.jsp"/>
  
  
        
   
        <div id="page-wrapper" >
			  <div class="header"> 
                        <h1 class="page-header">
                            	크라우드 펀딩 게시글 관리
                        </h1>
		</div>
		
            <div id="page-inner"> 
            		
			<div class="row">

			  <div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">
				 크라우드 펀딩 후원글 보러가기
				</div>        
							  
							<div class="panel-body"> 
								<a href="Eunji_cloudList.bo">
								<div class="alert alert-info" style="text-align: center;">
									<strong>(금액후원)</strong> 크라우드 펀딩 게시 목록 보러가기
								</div>
								</a>
								<a href="Eunji_cloudList2.bo">
								<div class="alert alert-warning" style="text-align: center;">
									<strong>(물품후원)</strong> 크라우드 펀딩 게시 목록 보러가기
								</div>
								</a>
							</div>
				</div>
			</div>						
				</div>		
                         <h1 class="page-header">
                            	크라우드 펀딩 승인 관리
                        </h1>
                                 
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	신규 <strong style="color: #c95c0e;">금액</strong> 펀딩 게시글 목록
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th style="display: none;">펀딩글 넘버</th>
                                            <th style="display: none;">작성자 번호</th>
                                            <th>펀딩 제목</th>
                                            <th>신청일자</th>
                                            <th>행복두리ID</th>
                                            <th>카테고리</th>
                                            <th>후원유형</th>
                                            <th>목표금액</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="row" items="${adminMoneyFundingList }" varStatus="status">
                                       <tr class="odd gradeX">
                                        	<td class="center">${status.count}</td>
                                        	<td class="center" style="display: none;">${row.fNo}</td>
                                        	<td class="center" style="display: none;">${row.fWriter}</td>
                                            <td class="center">${row.fTitle}</td>
                                            <td class="center">${row.fWriteDate}</td>
                                            <td class="center">${row.mid}</td>
                                            <td class="center">${row.mFundtype}</td>
                                            <td class="center">${row.fValueType }</td>
                                            <td class="center">${row.fValue}원</td>
                                            <td class="center"> <a class="btn btn-default btn-sm adminMoneyFunding">승인하러하기</a></td>
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
           
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	신규 <strong style="color: #c95c0e;">물품</strong> 펀딩 게시글 목록
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th style="display: none;">펀딩글 넘버</th>
                                            <th style="display: none;">작성자 번호</th>
                                            <th>펀딩 제목</th>
                                            <th>신청일자</th>
                                            <th>행복두리ID</th>
                                            <th>카테고리</th>
                                            <th>물품종류</th>
                                            <th>목표수량</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <c:forEach var="row" items="${adminGoodsFundingList }" varStatus="status">
                                       <tr class="odd gradeX">
                                        	<td class="center">${status.count}</td>
                                        	<td class="center" style="display: none;">${row.fNo}</td>
                                        	<td class="center" style="display: none;">${row.fWriter}</td>
                                            <td class="center">${row.fTitle}</td>
                                            <td class="center">${row.fWriteDate}</td>
                                            <td class="center">${row.mid}</td>
                                            <td class="center">${row.mFundtype}</td>
                                            <td class="center">${row.goodsName }</td>
                                            <td class="center">총 ${row.totalCount}개</td>
                                            <td class="center"> <a class="btn btn-default btn-sm adminGoodsFunding">승인하러하기</a></td>
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
           
         
                   
               <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
				<jsp:include page="include/admintableFooter.jsp"/>
	
	
	
	<script type="text/javascript">
    	$(".adminMoneyFunding").click(function () {
			var fundingnum = $(this).parent().parent().children().eq(1).text();
			var membernum = $(this).parent().parent().children().eq(2).text();
		
			location.href= "adminCrowdDetailMoney.ad?membernum="+membernum+"&fundingnum="+fundingnum ; 
		});
    	$(".adminGoodsFunding").click(function () {
			var fundingnum = $(this).parent().parent().children().eq(1).text();
			var membernum = $(this).parent().parent().children().eq(2).text();
		
			location.href= "adminCrowdDetailGoods.ad?membernum="+membernum+"&fundingnum="+fundingnum ; 
		});
    
    </script>
    
   
</body>
</html>
