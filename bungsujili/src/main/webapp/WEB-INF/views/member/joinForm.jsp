<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<fmt:requestEncoding value="utf-8"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>회원가입</title>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<!-- bootstrap js: jquery load 이후에 작성할것.-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	<!-- bootstrap css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap2.min.css" />	

<style>
@font-face {
     font-family: 'S-CoreDream-3Light';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
            
*{
	font-family: 'S-CoreDream-3Light' !important;
	font-size: 17px;
}
</style>
<script>
$(function(){
	$("#joinModal").modal()
					.on("hide.bs.modal", function(){
						location.href = "${ header.referer }";
					});
});

<%-- RedirectAttributes에 등록된 msg값 존재여부 확인 후 출력 --%>
<c:if test="${ not empty msg }">
	alert('${ msg }');
	console.log('${ msg }');
</c:if>

</script>

<style>
/*중복아이디체크관련*/
div#memberId-container{position:relative; padding:0px;}
div#memberId-container span.guide {display:none; font-size: 12px;position:absolute; top:12px; right:10px;}
div#memberId-container span.ok{color:green; font-weight:bold;}
div#memberId-container span.error{color:red; font-weight:bold;}
</style>

</head>
<body>
	
	<div class="modal fade" id="joinModal" tabindex="-1" role="dialog" aria-labelledby="joinModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
					    	
				<div class="modal-header">
					<h5 class="modal-title" id="joinModalLabel">회원가입</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
							
				<!-- _csrf인증 토큰 발행 -->
				<!-- security 관련 -->	      
					<form:form id="memberJoinFrm" action="${pageContext.request.contextPath }/member/joinMember" method="POST">
					<div class="mx-auto w-75 my-3">
						<div class="form-group">
							 <div class="custom-control custom-radio form-check form-check-inline p-0">
							    <input type="radio" id="authority1" name="authority" class="custom-control-input" value="ROLE_USER" checked="">
							    <label class="custom-control-label" for="authority1">일반 회원</label>
							 </div>
							 <div class="custom-control custom-radio form-check form-check-inline">
							    <input type="radio" id="authority2" name="authority" class="custom-control-input" value="ROLE_COMPANY">
							    <label class="custom-control-label" for="authority2">사업자</label>
							 </div>
						</div>
				
						<div class="form-group" id="memberId-container">
						  <label class="col-form-label" for="memberId">아이디</label>
						  <input type="text" class="form-control" id="memberId" name="memberId" required>
						  <span class="guide ok">이 아이디는 사용 가능합니다.</span>
						  <span class="guide error">이 아이디는 사용할 수 없습니다.</span>
						  <input type="hidden" id="idValid" value="0" />
						</div>
						<div class="form-group">
						  <label class="col-form-label" for="password">비밀번호</label>
						  <input type="password" class="form-control" id="password" name="password" required>
						</div>
						<div class="form-group">
						  <label class="col-form-label" for="passwordChk">비밀번호 확인</label>
						  <input type="password" class="form-control" id="passwordChk" name="passwordChk" required>
						</div>
						
						<div class="form-group">
						  <label class="col-form-label" for="nickname">닉네임</label>
						  <input type="text" class="form-control" id="nickname" name="nickname" required>
						</div>
						<div class="form-group">
						  <label class="col-form-label" for="phone">전화번호</label>
						  <input type="tel" class="form-control" id="phone" name="phone" required>
						</div>
						<div class="form-group">
						  <label class="col-form-label" for="businessNo">사업자번호</label>
						  <input type="text" class="form-control" id="businessNo" name="businessNo" disabled>
						</div>
						
				
						<div class="text-center my-4">
							<div class="d-inline-block" style="width:80px;">
								<input type="button" class="btn btn-secondary" value="취소"/>
							</div>
							<div class="d-inline-block" style="width:80px;">
								<input type="submit" class="btn btn-primary" value="가입"/>
							</div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>

</body>

<script>
$("#memberId").keyup(function(){

	// 중복 검사 후 아이디 재작성하는 경우
	if(/^\w{4,}$/.test($(this).val()) == false){
		$(".guide").hide();
		$("#idValid").val(0);
		return;
	}
	
	$.ajax({
		url : "${ pageContext.request.contextPath }/member/checkIdDuplicate.do",
		data :	{
				memberId : $(this).val()
			},
			dataType : "json",
			success : function(data){
				console.log(data);

				if(data.isUsable == true) {
					$(".guide.error").hide();
					$(".guide.ok").show();
					$("#idValid").val(1);	
				}
				else {
					$(".guide.error").show();
					$(".guide.ok").hide();
					$("#idValid").val(0);	
				}
				
					
			},
			error : function(xhr, status, err){
				console.log("처리실패", xhr, status, err);
			}
	});
});

$("#passwordChk").blur(function(){
	var $p1 = $("#password"), $p2 = $("#passwordChk");
	if($p1.val() != $p2.val()){
		alert("패스워드가 일치하지 않습니다.");
		$p1.focus();
	}
});


$("#memberJoinFrm").submit(function(){
	var $memberId = $("#memberId");
	if(/^\w{4,}$/.test($memberId.val()) == false){
		alert("아이디는 최소 4자리이상이어야 합니다.");
		$memberId.focus();
		return false;
	}

	//중복검사
	var $idValid = $("#idValid");
	if($idValid.val() == 0){
		alert("아이디 중복검사를 해주세요.");
		return false;
	}

	return true;
});

$('#authority2').on('click', function() {
	$('#businessNo').attr('disabled', false);
});
$('#authority1').on('click', function() {
	$('#businessNo').val('');
	$('#businessNo').attr('disabled', true);
});

</script>


</html>   




