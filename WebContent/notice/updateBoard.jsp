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
	<form class="frm1" action="UpdateBoardProCtrl" method="post">
	<table class="table">
		<tbody>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" id="title" value='<%=vo.getTitle() %>' required autofocus></td>
				<td><input type="hidden" class="notiNo" name="notiNo" id="notiNo" value='<%=vo.getNotiNo() %>'readonly required></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea cols=80 rows=10 name="content" value='<%=vo.getContent() %>'required></textarea></td>			
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="author" id="author" value='<%=vo.getAuthor() %>'readonly required></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%=vo.getResDate() %></td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
		<button type="submit" class="btn btn-outline-primary">글 수정</button>
		<button type="reset" class="btn btn-outline-primary">글 삭제</button>
		<a href="GetBoardListCtrl" class="btn btn-danger">목록으로</a>
	</div>
	</form>
</div>
</body>
<%@ include file="../footer.jsp" %>
</html>