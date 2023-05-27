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
<title>Board Update</title>
</head>
<body>

	<div class="container">
		<h2>Panel Heading</h2>
		<div class="card">
			<div class="card-header">Board</div>
			<div class="card-body">
				<form action="boardUpdate.do" method="post">
					<input type="hidden" name="idx" value="${vo.idx}"/>
					<table class="table table-bordered">
						<tr>
							<td>제목</td>
							<td><input type="text" name="title" class="form-control" value="${vo.title}"/></td>
						</tr>
						<tr>
							<td>내용</td>
							<td>
								<textarea rows="7" name="content" class="form-control">
									${vo.content}
								</textarea>
							</td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" class="form-control" value="${vo.writer}" readonly="readonly"/></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<button type="submit" class="btn btn-dark btn-sm">Modify</button>
								<button type="reset" class="btn btn-danger btn-sm">reset</button>
								<button type="button" class="btn btn-warning btn-sm" onclick="location.href='boardList.do'">List</button>
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