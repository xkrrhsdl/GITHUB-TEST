<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<h1 class='page-header'>교수 상세 보기</h1>
		
		<!-- 조회결과를 출력하기 위한 표 시작 -->
		<table class="table table-bordered">
			<tbody>
				<tr>
					<th class="info text-center" width="130">교수번호</th>
					<td>${item.profno}</td>
				</tr>
				<tr>
					<th class="info text-center">이름</th>
					<td>${item.name}</td>
				</tr>
				<tr>
					<th class="info text-center">아이디</th>
					<td>${item.userid}</td>
				</tr>
				<tr>
					<th class="info text-center">직급</th>
					<td>${item.position}</td>
				</tr>
				<tr>
					<th class="info text-center">급여</th>
					<td>${item.sal}</td>
				</tr>
				<tr>
					<th class="info text-center">보직수당</th>
					<td>${item.comm}</td>
				</tr>
				<tr>
					<th class="info text-center">입사일</th>
					<td>${item.hiredate}</td>
				</tr>
				<tr>
					<th class="info text-center">소속학과</th>
					<td>${item.dname}</td>
				</tr>
			</tbody>
		</table>
		<!--// 조회결과를 출력하기 위한 표 끝  -->
		
		<!-- 버튼 시작 -->
		<div class="text-center">
			<a href="${pageContext.request.contextPath}/professor/prof_list.do" class="btn btn-primary">목록</a>
			<a href="${pageContext.request.contextPath}/professor/prof_add.do" class="btn btn-info">추가</a>
			<a href="${pageContext.request.contextPath}/professor/prof_edit.do?profno=${item.profno}" class="btn btn-warning">수정</a>
			<a href="${pageContext.request.contextPath}/professor/prof_delete.do?profno=${item.profno}" class="btn btn-danger">삭제</a>
		</div>
		<!--// 버튼 끝 -->
	</div>
</body>
</html>



