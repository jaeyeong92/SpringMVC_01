<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>BoardList</title>
</head>
<body>

	<div class="container">
		<h2 align="center">Spring MVC 01</h2>
		<div class="card">
			<div class="card-header">Board</div>
			<div class="card-body">
				<table class="table table-bordered table-hover">
					<tr>
						<td>번호</td>
						<td>제목</td>
						<td>작성자</td>
						<td>작성일</td>
						<td>조회수</td>
					</tr>
					<c:forEach items="${list}" var="vo">
					<tr>
						<td>${vo.idx}</td>
						<td><a href="boardContent.do?idx=${vo.idx}">${vo.title}</a></td>
						<td>${vo.writer}</td>
						<td>${fn:split(vo.indate," ")[0]}</td>
						<td>${vo.count}</td>
					</tr>
					</c:forEach>
				</table>
				
				<a class="btn btn-dark btn-sm" href="boardForm.do">Write</a>
			
			</div>
			<div class="card-footer">Inflearn_Spring MVC 01</div>
		</div>
	</div>

</body>
</html>