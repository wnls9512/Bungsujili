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
					<td class="px-4" align="center" width="80%"><strong>붕어빵집!!!</strong></td>
					<td align="right">붕어빵조아</td>
					<td align="right" class="px-4">2021. 1. 29</td>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td colspan="3" align="center">
						<div id="map" class="mb-2" style="width:100%;height:450px;"></div>
						<span>경기도 군포시</span>
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
					<td colspan="2"><strong> 댓글 2개 💬 </strong></td>
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
							계란빵은 안 파나요?
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
							헉 집 근처! 저도 먹으러 가야겠어요!
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

//마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
{
    title: '카카오', 
    latlng: new kakao.maps.LatLng(33.450705, 126.570677)
},
{
    title: '생태연못', 
    latlng: new kakao.maps.LatLng(33.450936, 126.569477)
},
{
    title: '텃밭', 
    latlng: new kakao.maps.LatLng(33.450879, 126.569940)
},
{
    title: '근린공원',
    latlng: new kakao.maps.LatLng(33.451393, 126.570738)
}
];

//마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

for (var i = 0; i < positions.length; i ++) {

// 마커 이미지의 이미지 크기 입니다
var imageSize = new kakao.maps.Size(24, 35); 

// 마커 이미지를 생성합니다    
var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    map: map, // 마커를 표시할 지도
    position: positions[i].latlng, // 마커를 표시할 위치
    title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
    image : markerImage // 마커 이미지 
});
}
</script>

<jsp:include page="/WEB-INF/views/common/footer2.jsp"/>
   
