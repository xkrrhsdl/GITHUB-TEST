<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
		<h1 class='page-header'>학생정보</h1>
		
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th class="info text-center" width="130">학생번호</th>
					<td>${item.studno}</td>
				</tr>
				<tr>
					<th class="info text-center">학생이름</th>
					<td>${item.name}</td>
				</tr>
				<tr>
					<th class="info text-center">아이디</th>
					<td>${item.userid}</td>
				</tr>
				<tr>
					<th class="info text-center">학년</th>
					<td>${item.grade}</td>
				</tr>
				<tr>
					<th class="info text-center">주민번호</th>
					<td>${item.idnum}</td>
				</tr>
				<tr>
					<th class="info text-center">생년월일</th>
					<td>${item.birthdate}</td>
				</tr>
				<tr>
					<th class="info text-center">연락처</th>
					<td>${item.tel}</td>
				</tr>
				<tr>
					<th class="info text-center">키</th>
					<td>${item.height}</td>
				</tr>
				<tr>
					<th class="info text-center">몸무게</th>
					<td>${item.weight}</td>
				</tr>
				<tr>
					<th class="info text-center">학과이름</th>
					<td>${item.dname}</td>
				</tr>
				<tr>
					<th class="info text-center">담당교수이름</th>
					<td>${item.pname}</td>
				</tr>
			</tbody>
		</table>

		<div class="text-center">
			<a href="${pageContext.request.contextPath}/student/stud_list.do" class="btn btn-primary">목록</a>
			<a href="${pageContext.request.contextPath}/student/stud_add.do" class="btn btn-info">추가</a>
			<a href="${pageContext.request.contextPath}/student/stud_edit.do?studno=${item.studno}" class="btn btn-warning">수정</a>
			<a href="${pageContext.request.contextPath}/student/stud_delete.do?studno=${item.studno}" class="btn btn-danger">삭제</a>
		</div>
		
	</div>
</body>
</html>