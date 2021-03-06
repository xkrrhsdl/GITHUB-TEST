<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!doctype html>
<html lang='ko'>
<head>
	<meta charset='utf-8' />
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<title>Spring Example</title>
	<!-- Bootstrap + jQuery -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!--// Bootstrap + jQuery -->
</head>
<body>
<div class="container">
	<!-- 세션 등록 폼 -->
	<div class="page-header">
		<h1>Session 저장</h1>
		<!-- 저장된 값 출력하기 -->
		<c:choose>
			<c:when test="${my_session_value == ''}">
				<h2>저장된 세션 없음</h2>
			</c:when>
			<c:otherwise>
				<h2>저장된 세션=${my_session_value}</h2>
			</c:otherwise>
		</c:choose>
		<!-- JSTL을 통한 세션 데이터 접근 -->
		<c:if test="${my_session != null}">
			<h3>${my_session}(이)가 저장되었습니다.</h3>
		</c:if>
	</div>
	<form method="post" action="${pageContext.request.contextPath}/session/save.do">
		<div class="form-group">
			<input type="text" name="memo" id="memo" class="form-control" />
		</div>
		<div class="form-group">
			<input type="submit" class="btn btn-primary btn-block" value="Session 저장" />
		</div>
	</form>
</div>
</body>
</html>