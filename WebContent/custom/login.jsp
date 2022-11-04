<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>로그인</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../common.css">
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<%@ include file="../header.jsp" %>
<body>
<div class="tb">
	<h2 class="title"> 로그인</h2>
		<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/CustomLoginCtrl" method="post">
			<table class="tb2">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<input type="text" id="cusId" name="cusId" placeholder="아이디 입력" class="form-control">
					</td>			
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input type="password" id="cusPw" name="cusPw" placeholder="비밀번호 입력" class="form-control">
					</td>			
				</tr>			
			</tbody>
			</table>
			<div class="btn_group">
				<input type="submit" id="submit" name="submit_btn" value="로그인">
				<input type="reset" id="reset" name="reset_btn" value="취소">
				<a href="<%=request.getContextPath() %>/custom/membership.jsp" class="btn btn-primary">회원가입</a>
			</div>
		</form>
</div>
</body>
</html>