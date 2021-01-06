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

        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontAwesome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hero-slider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl-carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/datepicker.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <script src="${pageContext.request.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

    <section class="best-offer" id=best-offer-section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="best-offer-left-content">
                        <div class="icon"><img src="${pageContext.request.contextPath }/resources/img/best-offer-icon.png" alt=""></div>
                        <h4>LOGIN</h4>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="best-offer-right-content">
                        <div class="row">
                            <div class="">
                                <h2>Modern Web Design<br><em>Avalon Theme</em></h2>
                                <p>Avalon Theme is a full-width modern HTML template for everyone. Please tell your friends about 
                                <a href="https://fb.com/templatemo" target="_parent">TemplateMo</a>. 
                                Thank you. You are allowed <strong>to use this template</strong> for your business. 
                                
                                <form>
                                	<div class="form-row">
								    <div class="form-group col-md-5">
								      <label for="inputEmail4">Email</label>
								      <input type="email" class="form-control" id="inputEmail4" placeholder="Email">
								    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
								    </div>
								    <div class="form-group col-md-5">
								      <label for="inputPassword4">Password</label>
								      <input type="password" class="form-control" id="inputPassword4" placeholder="Password">
								    </div>
								  </div>
								  <div class="form-check">
								    <input type="checkbox" class="form-check-input" id="exampleCheck1">
								    <label class="form-check-label" for="exampleCheck1"> Check me out</label>
								  </div>								  
	                              <div class="pink-button">
	                                  <a href="#" class="scroll-link" data-id="events-section">login</a>
	                                  <a href="#" class="scroll-link" data-id="events-section">join</a>
	                              </div>
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
