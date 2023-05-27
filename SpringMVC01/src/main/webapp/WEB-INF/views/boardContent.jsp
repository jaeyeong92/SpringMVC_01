<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% pageContext.setAttribute("newLineChar", "\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>Board Content</title>
</head>
<body>

	<div class="container">
		<h2>Panel Heading</h2>
		<div class="card">
			<div class="card-header">Board</div>
			<div class="card-body">
				<table class="table">
					<tr>
						<td>제목</td>
						<td>${vo.title}</td>
					</tr>
					<tr>
						<td>내용</td>
						<td>${fn:replace(vo.content,newLineChar,"<br/>")}</td>
					</tr>
					<tr>
						<td>작성자</td>
						<td>${vo.writer}</td>
					</tr>
					<tr>
						<td>작성일</td>
						<td>${fn:split(vo.indate," ")[0]}</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<a href="boardUpdateForm.do?idx=${vo.idx}" class="btn btn-dark btn-sm">Modify</a>
							<a href="boardDelete.do?idx=${vo.idx}" class="btn btn-danger btn-sm">Delete</a>
							<a href="boardList.do" class="btn btn-warning btn-sm">List</a>
						</td>
					</tr>
				</table>
			</div>
			<div class="card-footer">Inflearn_Spring MVC 01</div>
		</div>
	</div>

</body>
</html>