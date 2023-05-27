<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<title>BoardForm</title>
</head>
<body>

	<div class="container">
		<h2>Panel Heading</h2>
		<div class="card">
			<div class="card-header">Board</div>
			<div class="card-body">
				<form action="boardInsert.do" method="post">
					<table class="table">
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" class="form-control" /></td>
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea rows="7" name="content" class="form-control"></textarea></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" name="writer" class="form-control" /></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button type="submit" class="btn btn-dark btn-sm">UPLOAD</button>
								<button type="reset" class="btn btn-danger btn-sm">Cancel</button>
							</td>
						</tr>
					</table>
				</form>
			
			</div>
			<div class="card-footer">Inflearn_Spring MVC 01</div>
		</div>
	</div>

</body>
</html>