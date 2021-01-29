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
	<div id="board-content" class="mx-auto my-5 py-5">
		<table class="table w-75 mx-auto">
			<thead>
				<tr class="table-light">
					<td class="px-4" align="center" width="80%"><strong>붕어빵집!!!</strong></td>
					<td align="right">붕어빵조아</td>
					<td align="right" class="px-4">2021. 1. 29</td>
				</tr>
				<tr>
					<td colspan="3">
						지도, 주소, 첨부이미지, 내용
					</td>
				</tr>
			</thead>
			
			<tbody>
			</tbody>
		</table>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer2.jsp"/>
   
