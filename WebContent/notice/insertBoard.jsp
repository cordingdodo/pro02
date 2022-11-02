<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Notice vo = (Notice) request.getAttribute("notice");
%>
<div class="content container">
	<h2 class="title">Notice</h2>
	
	<table class="table">
		<tbody>
			<tr>
				<th>제목</th>
				<td><input type="text" id="title" name="title" placeholder="제목을 입력하세요" autofocus required></td>
				<td><input type="hidden" id="notino" name="notino" readonly required<%=vo.getNotiNo() %>></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols=100 rows=8 id="content" title="content" placeholder="내용을 입력하세요" required></textarea> </td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" id="author" name="author" value="admin" readonly required></td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
	<a href="GetBoardListCtrl" class="btn btn-danger">목록으로</a>
		<a href="GetBoardListCtrl" class="btn btn-danger">목록으로</a>
	</div>
</div>
</body>
</html>