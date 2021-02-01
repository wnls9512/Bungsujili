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

<section id="board-detail" class="py-5">>
	<div class="text-center mb-5 text-light" id="board-title" style="height:250px; line-height:250px;">
		<span class="fs-1 align-middle">🥨🥨 붕어빵 제보 목록 🥨🥨</span>
	</div>
	
	<div id="board-content" class="mx-auto my-5 py-5 w-75">
		<table class="table mx-auto">
			<thead>
				<tr class="table-light">
					<td class="px-4" align="center" width="60%"><strong>당동 붕어빵</strong></td>
					<td align="right">붕어빵조아</td>
					<td align="right" class="px-4">2021. 1. 29</td>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td colspan="3" align="center">
						<div id="map" class="mb-2" style="width:100%;height:450px;"></div>
						<span><strong>경기도 군포시</strong></span>
					</td>
				</tr>

				<tr>
					<td colspan="3">
						<div class="my-5 py-2">
							팥 붕어빵, 슈크림 붕어빵 있어요! 3개에 천 원!! 바삭바삭!!!
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		
		<table class="table mx-auto">
			<thead>
				<tr class="table-dark">
					<td colspan="2"><strong> 리뷰 2개 💬 </strong></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<div class="mt-2">
							<strong>계란빵좋아</strong>&nbsp;&nbsp;&nbsp;&nbsp;
							<span class="text-muted fs-5">2021.01.30 &nbsp; 17:47:53</span>
						</div>
						<div class="mt-2 mb-2">
						<!-- 별점 출력 -->
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							  <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.523-3.356c.329-.314.158-.888-.283-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767l-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288l1.847-3.658 1.846 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.564.564 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
							</svg>
							&nbsp;&nbsp;&nbsp;&nbsp;
							맛있어요!
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="mt-2">
							<strong>붕어빵마니머거</strong>&nbsp;&nbsp;&nbsp;&nbsp;
							<span class="text-muted fs-5">2021.01.30 &nbsp; 17:50:15</span>
						</div>
						<div class="mt-2 mb-2">
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							<svg xmlns="http://www.w3.org/2000/svg" class="text-warning" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							  <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
							</svg>
							&nbsp;&nbsp;&nbsp;&nbsp;
							최고입니당!
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="bg-light p-5" style="height:170px;">
		<form action="">
			<div class="mb-2">
				<textarea class="form-control" name="comment" id="comment" rows="5" style="width:100%"></textarea>
			</div>
			<div class="float-end mt-2">
				<button type="submit" class="btn btn-warning px-3 fs-4">등록</button>
			</div>
		</form>
		</div>
	</div>
	
</section>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6d8fdaa58f0a1c4fb7cfa958eddc3fe&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

//마커를 생성합니다
var marker = new kakao.maps.Marker({
position: markerPosition
});

//마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null);    

</script>

<jsp:include page="/WEB-INF/views/common/footer2.jsp"/>
   
