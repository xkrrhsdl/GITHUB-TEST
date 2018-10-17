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
	<script src="http://cdn.ckeditor.com/4.5.10/standard/ckeditor.js"></script>
</head>
<body>
<div class='container'>
	<h1 class="page-header">Upload Test</h1>
	
	<form method="post" action="${pageContext.request.contextPath}/upload/upload_ok.do" enctype="multipart/form-data">
	<div class="form-group">
            <label for='memo'>파일설명</label>
            <input type="text" class="form-control" name="memo" id="memo" />
    </div>
    
    <div class="form-group">
            <label for='upload_file'>첨부파일</label>
            <input type="file" class="form-control" name="upload_file" id="upload_file" multiple />
    </div>   
        
        
    <div class="form-group">
        	<input type="submit" class="btn btn-primary btn-block" value="업로드" />
    </div>
	</form>
</div>
</body>
</html>
