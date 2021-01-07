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

    <section class="best-offer" id=best-offer-section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="best-offer-left-content" style="height:450px;">
                        <div class="icon" style="margin-top:0px;"><img src="${pageContext.request.contextPath }/resources/img/best-offer-icon.png" alt=""></div>
                        <h4>LOGIN</h4>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="best-offer-right-content" style="height:450px;">
                        <div class="row" style="margin-top:30px;">
                            <div class="">
                                <h2><em>로그인</em></h2>
                                
                                <form>
                                	<div class="form-row">
								    <div class="form-group col-md-5">
								      <label for="inputEmail4"><h4>아이디</h4></label>
								      <input type="text" class="form-control" id="memberId" placeholder="ID">
								    <small id="idHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
								    </div>
								    <div class="form-group col-md-5">
								      <label for="password">비밀번호</label>
								      <input type="password" class="form-control" id="password" placeholder="Password">
								    </div>
								  </div>
								  <div class="form-check">
								    <input type="checkbox" class="form-check-input" id="exampleCheck1">
								    <label class="form-check-label" for="exampleCheck1"> Check me out</label>
								  </div>								  
										<input type="submit" class="btn btn-warning btn-lg rounded-pill mt-4 mx-auto" 
	                              		 style="height:40px; width:70px; font-size:15px; font-weight:700; color:white" 
	                              		 value="LOGIN"/>
	                              		 <input type="button" class="btn btn-light btn-lg rounded-pill mt-4 mx-auto" 
	                              		 style="height:40px; width:60px; font-size:15px; font-weight:700;" 
	                              		 value="JOIN" onClick="location.href='${pageContext.request.contextPath }/member/join'"/>
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
        
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
