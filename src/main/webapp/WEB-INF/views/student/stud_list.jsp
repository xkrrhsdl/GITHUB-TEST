<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>My JSP Page</title>
	<!-- Twitter Bootstrap3 & jQuery -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="page-header clearfix">
		<h1 class='pull-left'>학생목록</h1>
			<div style='margin-top: 30px;' class="pull-right">
				<form method='get' action='${pageContext.request.contextPath}/student/stud_list.do' style="width: 300px;">
					<div class="input-group">
						<input type="text" name='keyword' class="form-control" 
							placeholder="학생이름 검색" value="${keyword}" />
						<span class="input-group-btn">
							<button class="btn btn-success" type="submit">
								<i class='glyphicon glyphicon-search'></i>
							</button>
							<a href="${pageContext.request.contextPath}/student/stud_add.do" class="btn btn-primary">학생추가</a>
						</span>
					</div>
				</form>
			</div>
		</div>
		
		<table class="table">
			<thead>
				<tr>
					<th class="info text-center">학생번호</th>
					<th class="info text-center">학생이름</th>
					<th class="info text-center">아이디</th>
					<th class="info text-center">학년</th>
					<th class="info text-center">주민번호</th>
					<th class="info text-center">생년월일</th>
					<th class="info text-center">연락처</th>
					<th class="info text-center">키</th>
					<th class="info text-center">몸무게</th>
					<th class="info text-center">학과이름</th>
					<th class="info text-center">담당교수이름</th>
					<th class="info text-center">수정/삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach var="item" items="${list}">
				<tr>
					<td class="text-center">${item.studno}</td>
					<td class="text-center">
						<c:url var="readUrl" value="/student/stud_view.do">
							<c:param name="studno" value="${item.studno}" />
						</c:url>
					<a href="${readUrl}">${item.name}</a></td>
					<td class="text-center">${item.userid}</td>
					<td class="text-center">${item.grade}</td>
					<td class="text-center">${item.idnum}</td>
					<td class="text-center">${item.birthdate}</td>
					<td class="text-center">${item.tel}</td>
					<td class="text-center">${item.height}</td>
					<td class="text-center">${item.weight}</td>
					<td class="text-center">${item.dname}</td>
					<td class="text-center">${item.pname}</td>
					<td class="text-center">
					<a href="${pageContext.request.contextPath}/student/stud_edit.do?studno=${item.studno}" class="btn btn-xs btn-warning">수정</a>
					<a href="${pageContext.request.contextPath}/student/stud_delete.do?studno=${item.studno}" class="btn btn-xs btn-danger">삭제</a>
					</td>
				</tr>
				</c:forEach>
				</c:when>
				<c:otherwise>
				<tr>
					<td colspan="8" class="text-center" style="line-height: 100px">조회된 데이터가 없습니다.</td>
				</tr>
				</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<!--// 조회결과를 출력하기 위한 표 끝  -->
		<!-- 페이지 번호 -->
		<nav class='text-center'>
    		<ul class="pagination">
        		<!-- 이전 그룹 -->
				<c:choose>
					<c:when test="${page.prevPage > 0}">
						<c:url var="prevUrl" value="/student/stud_list.do">
							<c:param name="keyword" value="${keyword}"></c:param>
							<c:param name="page" value="${page.prevPage}"></c:param>
						</c:url>
						<li><a href="${prevUrl}">&laquo;</a></li>
					</c:when>
					<c:otherwise>
						<li class='disabled'><a href="#">&laquo;</a></li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지 번호 -->
				<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}" step="1">
					<c:url var="pageUrl" value="/student/stud_list.do">
						<c:param name="keyword" value="${keyword}"></c:param>
						<c:param name="page" value="${i}"></c:param>
					</c:url>
					<c:choose>
						<c:when test="${page.page == i}">
							<li class='active'><a href="#">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${pageUrl}">${i}</a></li>
						</c:otherwise>
					</c:choose>	
				</c:forEach>
        		<!-- 다음 그룹 -->
				<c:choose>
					<c:when test="${page.nextPage > 0}">
						<c:url var="nextUrl" value="/student/stud_list.do">
							<c:param name="keyword" value="${keyword}"></c:param>
							<c:param name="page" value="${page.nextPage}"></c:param>
						</c:url>
						<li><a href="${nextUrl}">&raquo;</a></li>
					</c:when>
					<c:otherwise>
						<li class='disabled'><a href="#">&raquo;</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
	</div>
</body>
</html>