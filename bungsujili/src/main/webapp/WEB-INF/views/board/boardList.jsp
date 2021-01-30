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
				<tr>
					<th>1</th>
					<td>경기도 군포시</td>
					<td>
						<a href="${pageContext.request.contextPath }/board/1">붕어빵집!!</a>
						<%-- <a href="${pageContext.request.contextPath }/board/${ board.boardNo }">붕어빵집!!</a> --%>
					</td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>2</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>3</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>4</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>5</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>6</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>7</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>8</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>9</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
				<tr>
					<th>10</th>
					<td>경기도 군포시</td>
					<td><a href="#">붕어빵집!!</a></td>
					<td>붕어빵조아</td>
				</tr>
			</tbody>
		
		</table>
	</div>
</section>

<jsp:include page="/WEB-INF/views/common/footer2.jsp"/>
   
