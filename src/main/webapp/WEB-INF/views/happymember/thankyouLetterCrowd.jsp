<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
	String bigtabon="4";
%>
<%@ include file="include/common.jsp" %>

<!-- semantic ui -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
	.to {font-size: 30px; font-weight: 600;}
	a {color: #333;}
	#button{text-align: center;}
	/* .textSilver {color: silver; font-weight: 600;}
	.textOrange {color: orange; font-weight: 600;} */
	#ftitle {cursor: text; width: 450px; height: 40px; font-size: 16px;}
</style>

<title>마이페이지>감사편지 쓰기</title>
<!-- 감사편지 쓰기 -->

</head>
<body>
<c:if test="${empty sessionScope.loginUser}">
	<c:set var="message" value="해당 페이지는 로그인을 해야 이용하실 수 있습니다." scope="request"></c:set>
	<jsp:forward page="../common/errorPage.jsp"/>
</c:if>
 
<c:if test="${not empty sessionScope.loginUser and loginUser.mtype == 'H'}">
<div id="wrap"><!-- Wrap S -->

<%@ include file="include/header.jsp" %>

<%@ include file="include/myNav.jsp" %>

<div id="subContainer">
	<div class="contBox inner"><!-- inner S -->
	 
		<%@ include file="include/tabMypage.jsp" %>
<form id="crowdfundingLetterForm" action="insertCrowdfundingLetter.happy">
		<div>
			<h1>
				<i class="chevron right icon"></i>TO. 나눔두리님들<i class="orange heart icon"></i>
			</h1>
		</div>
		<br>
		<br>
		
		<div align="center">
			<!-- 감사편지 쓰기 : 펀딩글 제목 -->
			<div style="float: left; margin-left: 45px; margin-top: 4px;">
				&nbsp;<div class="ui grey basic button" id="ftitle">${f.ftitle}</div>&nbsp;&nbsp;
				<input type="hidden" value="${f.ftitle}" class="ftitle"/>
			</div>
			
			
			<!-- 감사편지 쓰기 : 제목 -->
			<div>
				<div class="ui button" style="cursor: text;">제목</div>&nbsp;&nbsp;
				<div class="ui input" style="width: 39.5%;">
					<input type="text" name="letterTitle" style="font-size: 16px;" placeholder="제목을 입력해주세요">
				</div>
			</div>
			<br>
			
			
			<!-- 감사편지 쓰기 : 내용 -->
			<div>
				<div class="field">
				    <textarea name="letterContent" style="width: 92%; height: 600px;"></textarea>
				 </div>
			</div>
		</div>
		
		<div style="height: 100px;">
			<input type="hidden" name="fno" class="fno" value="${f.fno}"/>
			<input type="hidden" name="ftype" class="ftype" value="${f.ftype}"/>
		</div>
		
		<div id="button">
			<div onclick="insertThankyouLetter();" class="massive ui instagram button">감사편지 보내기</div>&nbsp;&nbsp;&nbsp;&nbsp;
			<button onclick="reset();" style="width: 21%;" id="reset" class="massive ui button">취소하기</button>
		</div>
</form>	

	</div><!--// inner E-->
</div>

<%-- <%@ include file="/hyun/myPost/include/footer.jsp" %> --%>


</div><!--// Wrap E-->
</c:if>

<script>
	function reset(){
		$("#reset").empty();
	}
	
	function insertThankyouLetter(){
		<!-- 보낸 단체 감사편지 중복체크  -->\
		var ftype = $(".ftype").val();
		var fno = $(".fno").val();
		
			$.ajax({
				url:"letterCheck.happy",
				type:"get",
				data:{ftype:ftype, fno:fno},
				success:function(data){
					console.log("성공 후 ftitle : " + data.count);
					if(data.count == "success"){
						swal({
							  title: "",
							  text: "나눔두리님들께 감사편지를 보내시겠습니까?",
							  icon: "warning",
							  buttons: true,
							  dangerMode: true,
							})
							.then((willDelete) => {
							  if (willDelete) {
							    swal("감사편지가 전달됩니다!", {
							      icon: "success",
							    }).then(function(){
							    	$("#crowdfundingLetterForm").submit();
							    });
							    
							  } else {
							    swal("감사편지 전송을 취소합니다.");
							  }
							});
					}else{
						swal("이미 감사편지를 전했습니다!", "크라운드 펀딩 감사편지는 1번만 보내실 수 있습니다.")
						.then(function(){
							location.href="mypage.happy";
						});
					}
				},
				error:function(data){
					console.log("통신실패");
				}
			});
			
		
	}
	
	
	
	
	
	
	
	

	
</script>
</body>
</html>