<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>상세 내역 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Sales vo = (Sales) request.getAttribute("sales");
%>
<div class="container-fluid" id="content">
	<div class="row" id="content_row">
		<% if(sid!=null && sid.equals("admin")) { %>
		<%@ include file="../admin/admin_sidebar.jsp" %>
		<% } %>
		<% if(sid!=null && sid.equals("admin")) { %>
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<% } else { %>
		<main class="content container">
		<% } %>
			<h2 class="title">판매 상세 내역</h2>
			<table class="table">
				<tbody>
					<tr>
						<th>판매 번호</th>
						<td><%=vo.getSaleNo() %></td>
					</tr>
					<tr>
						<th>판매 제품 번호</th>
						<td><%=vo.getProNo() %></td>
					</tr>
					<tr>
						<th>판매 수량</th>
						<td><%=vo.getAmount() %></td>
					</tr>
					<tr>						
						<th>판매일</th>
						<td><%=vo.getSaleDate() %></td>
					</tr>
					<tr>						
						<th>배송 현황</th>
						<td>
						<% if(vo.getParselState()==0) { %>
						<span>배송전</span>
						<% } else if(vo.getParselState()==1) { %>
						<span>배송중</span>
						<% } else if(vo.getParselState()==2) { %>
						<span>도착</span>
						<% } else if(vo.getParselState()==3) { %>
						<span>구매결정 완료</span>
						<% } %>
						</td>
					</tr>
					<tr>						
						<th>결제 번호</th>
						<td><%=vo.getSalePayNo() %></td>
					</tr>					
				</tbody>
			</table>
			<div class="btn-group">
				<a href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl" class="btn btn-primary">목록으로</a>
				<% if(vo.getParselState()==0) { %>
				<a href="<%=request.getContextPath() %>/DeleteSalesCtrl?saleNo=<%=vo.getSaleNo() %>" class="btn btn-primary">직권 결제 취소</a>
				<a href="<%=request.getContextPath() %>/UpdateParselCtrl?parselNo=<%=vo.getParselNo() %>" class="btn btn-primary">배송 정보 등록</a>			
				<% } %>
			</div>
		</main>
</div>
</div>
</body>
</html>