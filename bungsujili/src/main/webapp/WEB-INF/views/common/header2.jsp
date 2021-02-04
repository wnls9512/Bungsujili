<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%-- 한글 인코딩 처리 --%>
<fmt:requestEncoding value="utf-8" />

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>붕수지리</title>
<!-- 
Avalon Template 
https://templatemo.com/tm-513-avalon
-->
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontAwesome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hero-slider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl-carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/datepicker.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/templatemo-style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap2.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap2.css">
		
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	
		<script src="${pageContext.request.contextPath }/resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
		
	<style>
		.link-unstyled {
			color: gray;
			text-decoration:none;
		}
		.link-unstyled:hover {
			color: black;
		}
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
	<c:if test="${ not empty msg }">
		alert('${ msg }');
		console.log('${ msg }');
	</c:if>
	</script>
    </head>
<body>

	<section class="header">
		<nav class="navbar navbar-expand-lg navbar-light bg-light position-fixed w-100" style="z-index:200;">
		  <div class="container-fluid">
		    <a class="navbar-brand fs-1" href="#">
				<img src="${pageContext.request.contextPath }/resources/img/logo/팥붕어빵.png" alt="로고" width="50px" />
			</a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarSupportedContent">
		      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
		        <li class="nav-item">
		          <a class="nav-link active fs-3" aria-current="page" href="${pageContext.request.contextPath}">Home</a>
		        </li>
		        <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle fs-3" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            Menu
		          </a>
		          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item fs-3" href="#">가까운 음식점 찾기</a></li>
		            <li><a class="dropdown-item fs-3" href="${pageContext.request.contextPath }/shop" id="checkLogin">가게 제보하기</a></li>
		            <li><a class="dropdown-item fs-3" href="${pageContext.request.contextPath }/list">제보 글 모아보기</a></li>
		          </ul>
		        </li>
		      </ul>
		      <div class="fs-4">
		      
		      <c:if test="${ empty loginMember }">
				  <a class="p-2 link-unstyled" href="${pageContext.request.contextPath }/sign-up">회원가입</a>
				  <a class="p-2 link-unstyled" href="${pageContext.request.contextPath }/sign-in">로그인</a>
		      </c:if>
		      <c:if test="${ not empty loginMember }">
		      	${ loginMember.nickname } 😉😉		      
				  <a class="p-2 link-unstyled" href="${pageContext.request.contextPath }/sign-out">로그아웃</a>
		      </c:if>
				  <a class="p-2 link-unstyled" href="#">마이페이지</a>
			  </div>
			  &nbsp; &nbsp; &nbsp;
		      <form class="d-flex">
		        <input class="form-control me-2 fs-3" type="search" placeholder="Search" aria-label="Search">
		        <button class="btn btn-outline-success fs-3" type="submit">Search</button>
		      </form>
		    </div>
		  </div>
		</nav>
		
		

		
	</section>
	
	

<script>
$("#checkLogin").on("click",function(event){
	<c:if test="${ empty loginMember }">
		alert("로그인 후 이용해주세요.");
	    event.preventDefault();
	</c:if>
});

</script>