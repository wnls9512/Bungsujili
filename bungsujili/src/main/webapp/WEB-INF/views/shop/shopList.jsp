<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 한글 인코딩 처리  -->
<fmt:requestEncoding value="utf-8"/>

<style>
tr {cursor:pointer;}
</style>

<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>

<section id="board-container" class="py-5">
	<div class="text-center mb-5 text-light" id="board-title" style="height:250px; line-height:250px;">
		<span class="fs-1 align-middle">🥨🥨 붕어빵 제보 목록 🥨🥨</span>
	</div>
	<div class="mx-auto my-5 py-5">
		<table class="table table-hover w-75 mx-auto">
			<thead class="table-light border-top">
				<tr>
					<th>No</th>
					<th>주소</th>
					<th>제목</th>
					<th>글쓴이</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${shopList}" var="item" varStatus="i">
					<tr onclick="shopDetail('${item.sNo}')">
						<th>${i.count }</th>
						<td>${item.addr }</td>
						<td>${item.sTitle }</td>
						<td>${item.memberId }</td>
					</tr>
				</c:forEach>
			</tbody>		
		</table>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer2.jsp"/>

<script>
function shopDetail(sNo){
	location.href = "<c:url value='list/" + sNo + "'/>";	
}
</script>