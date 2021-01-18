<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param value="index" name="pageTitle"/>
</jsp:include>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <script src="${pageContext.request.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

<style>
/*중복아이디체크관련*/
div#memberId-container{position:relative; padding:0px;}
div#memberId-container span.guide {display:none; font-size: 12px;position:absolute; top:6px; right:10px;}
div#memberId-container span.ok{color:green; font-weight:bold;}
div#memberId-container span.error{color:red; font-weight:bold;}
</style>

    <section class="best-offer" id=best-offer-section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="best-offer-left-content" style="height:570px;">
                        <div class="icon"><img src="${pageContext.request.contextPath }/resources/img/best-offer-icon.png" alt=""></div>
                        <h4>JOIN</h4>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="best-offer-right-content" style="height:570px;">
                        <div class="row">
                            <div class="">
                                <h2><em>회원가입</em></h2>

                                <form id="memberJoinFrm" action="${pageContext.request.contextPath }/member/join" method="POST">
                                	<div class="form-row mt-2">
										<div class="form-group">
											 <div class="custom-control custom-radio form-check form-check-inline p-0">
											    <input type="radio" id="authority1" name="authority" class="custom-control-input" value="ROLE_USER" checked="">
											    <label class="custom-control-label" for="authority1"><h4>일반 회원</h4></label>
											 </div>
											 <div class="custom-control custom-radio form-check form-check-inline">
											    <input type="radio" id="authority2" name="authority" class="custom-control-input" value="ROLE_COMPANY">
											    <label class="custom-control-label" for="authority2"><h4>사업자</h4></label>
											 </div>
										</div>
								
										<div class="form-group" id="memberId-container">
										  <label class="col-form-label" for="memberId"><h4>아이디</h4></label>
										  <input type="text" class="form-control" id="memberId" name="memberId" required>
										  <span class="guide ok">이 아이디는 사용 가능합니다.</span>
										  <span class="guide error">이 아이디는 사용할 수 없습니다.</span>
										  <input type="hidden" id="idValid" value="0" />
										</div>
										<div class="form-group">
										  <label class="col-form-label" for="password"><h4>비밀번호</h4></label>
										  <input type="password" class="form-control" id="password" name="password" required>
										</div>
										<div class="form-group">
										  <label class="col-form-label" for="passwordChk"><h4>비밀번호 확인</h4></label>
										  <input type="password" class="form-control" id="passwordChk" name="passwordChk" required>
										</div>
										
										<div class="form-group">
										  <label class="col-form-label" for="nickname"><h4>닉네임</h4></label>
										  <input type="text" class="form-control" id="nickname" name="nickname" required>
										</div>
										<div class="form-group">
										  <label class="col-form-label" for="phone"><h4>전화번호</h4></label>
										  <input type="tel" class="form-control" id="phone" name="phone" required>
										</div>
										<div class="form-group">
										  <label class="col-form-label" for="businessNo"><h4>사업자번호</h4></label>
										  <input type="text" class="form-control" id="businessNo" name="businessNo" disabled>
										</div>
										</div>								  
	                              <input type="submit" class="btn btn-warning btn-lg rounded-pill mt-4 mx-auto" 
	                              		 style="height:40px; width:60px; font-size:15px; font-weight:700; color:white" 
	                              		 value="JOIN"/>

								</form>
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <%-- <img src="${pageContext.request.contextPath }/resources/img/best-offer-image.png" alt=""> --%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        
        
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
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
