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
    <title>행복두리 승인페이지</title>
	 <jsp:include page="include/adminStyle.jsp"/>
	 
	 
<script type="text/javascript">


//환불전ajax
function refundbefore(currentPage) {
	var currentPage = 1;
		$.ajax({
			url : "adminRefund.ad",
			type :"get",
			data: {currentPage:currentPage}
			success : function (data) {
				
				var beforeListHtml = [];
				var no =0;
				for(var i=0; i<data.adminRefundList.length; i++){
					beforeListHtml.push('<tr>');
					beforeListHtml.push('	<th scope="row">' + (i+1) + '</th>');
					beforeListHtml.push('	<td class="center" style="display: none;">' +data.adminRefundList[i].rNo + '</td>');
					beforeListHtml.push('	<td class="center">' +data.adminRefundList[i].mid + '</td>');
					beforeListHtml.push('	<td class="center">' +data.adminRefundList[i].mname + '</td>');
					beforeListHtml.push('	<td class="center">' +data.adminRefundList[i].rName+ '</td>');
					beforeListHtml.push('	<td class="center">' +data.adminRefundList[i].rDate+ '</td>');
					beforeListHtml.push('	<td class="center">' +data.adminRefundList[i].rAccount+ '</td>');
					beforeListHtml.push('	<td class="center">' +data.adminRefundList[i].rBank+"은행"+ '</td>');
					beforeListHtml.push('	<td class="center">' +data.adminRefundList[i].rValue+"원"+'</td>');
					beforeListHtml.push('	<td class="center"><a href="complete()" class="btn btn-warning btn-sm">환급진행하기</a></td>');
					beforeListHtml.push('</tr>');
					

				}
				$("#beforeList").html("");//이전틀 지우고
				$("#beforeList").append(beforeListHtml.join(''));//""를 기준으로 배열에 담긴 데이터 꺼내오기
				
				//페이징 처리
				var beforeListPageHtml = [];	
				var currentPage = data.pi.currentPage;
				//<<, <버튼 만들기
				beforeListPageHtml.push('<span><a class="num" onclick="itemTable(1);">&lt;&lt;</a></span>');
					if(currentPage <= 1){
						beforeListPageHtml.push('<span><a class="num" disabled>&lt;</a></span>');
					}else{//1보다 큰 수의 페이지면
						beforeListPageHtml.push('<span><a class="num" onclick="itemTable('+(currentPage-1)+')">&lt;</a></span>');
					}
			
				//숫자 버튼 만들기
				for(var i = data.pi.startPage; i <= data.pi.endPage; i++ ){
					if(i == currentPage){
						beforeListPageHtml.push('<span><a class="num on" disabled>'+i+'</a></span>');
					}else{
						beforeListPageHtml.push('<span><a class="num" onclick="itemTable('+i+')">'+i+'</a></span>');
					}
				}
				//>>, >버튼 만들기
				if(currentPage >= data.pi.maxPage){
					beforeListPageHtml.push('<span><a class="num" disabled>&gt;</a></span>');
				}else{
					beforeListPageHtml.push('<span><a class="num" onclick="itemTable('+(currentPage+1)+')">&gt;</a></span>');
				}
				beforeListPageHtml.push('<span><a class="num" onclick="itemTable('+data.pi.maxPage+');">&gt;&gt;</a></span>');
				
				
				$("#BeforePagingArea").html("");
				$("#BeforePagingArea").append(beforeListPageHtml.join(''));
					
				
				 addBtnEvent();//버튼 함수 불러오기
				 
				 
				 
			}
		});
	}
	
/* //환불후 ajax
function refundafter() {
		
		$.ajax({
			url : "${pageContext.request.contextPath}/adminRefund.ad",
			type :"get",
			success : function (data) {
				
				var afterListHtml = [];
				var no =0;
				for(var i=0; i<10; i++){
					afterListHtml.push('<tr>');
					afterListHtml.push('	<th scope="row">' + (i+1) + '</th>');
					afterListHtml.push('	<td class="center">' +data[i].mid + '</td>');
					afterListHtml.push('	<td class="center">' +data[i].mname + '</td>');
					afterListHtml.push('	<td class="center">' +data[i].rName+ '</td>');
					afterListHtml.push('	<td class="center">' +data[i].rDate+ '</td>');
					afterListHtml.push('	<td class="center">' +data[i].rAccount+ '</td>');
					afterListHtml.push('	<td class="center">' +data[i].rBank+"은행"+ '</td>');
					afterListHtml.push('	<td class="center" >' +data[i].rValue+"원"+'</td>');
					afterListHtml.push('	<td class="center" style="width: 50px;">환급완료</td>');
					afterListHtml.push('</tr>');
					

				    
                 
				}
				$("#afterList").html("");//이전틀 지우고
				$("#afterList").append(afterListHtml.join(""));//""를 기준으로 배열에 담긴 데이터 꺼내오기
				
		
				 
				 
				 
			}
		});
	}
 */

$(function () {
	refundbefore(1);
/* 	refundafter(1); */
}); 

</script>
	 
</head>
<body>
     <jsp:include page="include/adminNavi.jsp"/>
   
          
        <div id="page-wrapper" >
		  <div class="header"> 
                        <h1 class="page-header">
                            	행복두리 환불 관리
                        </h1>
		</div>
            <div id="page-inner"> 
            
              
           
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	환급 신청 행복두리 목록	
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th style="display: none;">환급목록 번호</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                            <th>예금주</th>
                                            <th>신청날짜</th>
                                            <th>계좌번호</th>
                                            <th>환급은행</th>
                                            <th>환급금액</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody id="beforeList">
                                   
                                    </tbody>
                               		 
                                </table>
                            </div>
                            <div class="pagingArea" align="center" id="BeforePagingArea">
							<!-- ajax에서 도는부분 -->
							</div>
				
                                <button onclick="Refundprint()">인쇄하기</button>
                        </div>
                    </div>
                    <!--End Advanced Tables -->
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             	환급 완료 행복두리 목록	
                        </div>
                        <div class="panel-body">
                            <div >
                                <table class="table table-striped table-bordered table-hover dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>ID</th>
                                            <th>이름</th>
                                            <th>예금주</th>
                                            <th>신청날짜</th>
                                            <th>계좌번호</th>
                                            <th>환급은행</th>
                                            <th >환급금액</th>
                                            <th style="width: 50px;"></th>
                                        </tr>
                                    </thead>
                                     <tbody id="afterList">
                              
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
             <!-- /. PAGE INNER  -->
    
    <jsp:include page="include/admintableFooter.jsp" />
    <script type="text/javascript">
    		function Refundprint() {
				print();
			}
    		
    		
    </script>
</body>
</html>
