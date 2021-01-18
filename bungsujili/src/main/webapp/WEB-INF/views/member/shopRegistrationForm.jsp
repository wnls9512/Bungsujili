<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 한글 인코딩 처리  -->
<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>


    <section class="contact-us" id="contact-section"> 
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                
                <!-- Please visit https://templatemo.com/contact page if you do not know how to setup the contact form -->
                
                    <form id="shopRegistrationForm" class="contact" action="${pageContext.request.contextPath }/shop" method="post">
                        <div class="row">
                            <div class="">
                              <fieldset>
                              	<label for="shopName" class="text-light">가게명</label>
                                <input name="shopName" type="text" class="form-control text-light" id="shopName" placeholder="가게명" required>
                              </fieldset>
                            </div><br />
                            <div class="">
                              <fieldset>
                              	<label for="shopAddr" class="text-light">가게주소</label>
                                <input name="shopAddr" type="text" class="form-control text-light" id="shopAddr" placeholder="가게주소" required>
                              </fieldset>
                            </div>
                             <div class="">
                              <fieldset>
                              	<label for="openTime" class="text-light">개점시간</label>
                                <input name="openTime" type="time" class="form-control" id="openTime">
                              </fieldset>
                              <fieldset>
                              	<label for="closeTime" class="text-light">폐점시간</label>
                                <input name="closeTime" type="time" class="form-control" id="closeTime">
                              </fieldset>
                            </div>
                            <div class="">
                              <fieldset>
                              	<label for="shopPhone" class="text-light">연락번호</label>
                                <input name="shopPhone" type="tel" class="form-control text-light" id="shopPhone" placeholder="연락번호">
                              </fieldset>
                            </div>
                            
                            <div class="">
                              <fieldset>
                                <button type="submit" id="form-submit" class="btn text-center">Send it now</button>
                              </fieldset>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-4">
                    <div class="contact-right-content">
                        <div class="icon"><img src="${pageContext.request.contextPath }/resources/img/map-marker-icon.png" alt=""></div>
                        <h4>You can find us on maps</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
   
