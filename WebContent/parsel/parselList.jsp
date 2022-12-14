<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>배송 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.title { padding-top:36px; padding-bottom:20px; text-align:center; color:#84c2f2; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	List<Parsel> ParList = (ArrayList<Parsel>) request.getAttribute("ParList");
%>
<div class="content container" id="content">
	<div class="row" id="content_row">
		<% if(sid!=null && sid.equals("admin")){ %>
		<%@ include file="../admin/admin_sidebar.jsp" %>
		<% } %>
		<% if(sid!=null && sid.equals("admin")) { %>
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<% } else { %>
		<main role="content container">
		<% } %>
		
			<h2 class="title">배송 관리 목록</h2>
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck1" checked>
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck2">
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck3">
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck4">
			<div class="btn-group" id="tb_btn_box">
				<label for="tb_ck1" class="btn btn-primary">배송전</label>
				<label for="tb_ck2" class="btn-outline-primary">배송중</label>
				<label for="tb_ck3" class="btn-outline-primary">배송도착</label>
				<label for="tb_ck4" class="btn-outline-primary">구매결정</label>
			</div>
			<table class="table" id="parsel0">
				<caption><h3>배송 전</h3></caption>
				<thead>
					<tr>
						<th>번호</th><th>배송지</th><th>고객 연락처</th><th>운송장번호</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<ParList.size();i++){
					Parsel vo = ParList.get(i);
					if(vo.getParselState()==0){
					}
				%>
				<tr>
					<td><%=ParList.size()-i %></td>
					<td><%=vo.getParselAddr()%></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselState() %>

						<a href="<%=vo.getParselUrl(vo.getParselCompany())%><%=vo.getBaleCode() %>"target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<% } %>	
				</tbody>
			</table>
			<table class="table" id="parsel1">
				<caption><h3>배송 중</h3></caption>
				<thead>
					<tr>
						<th>번호</th><th>배송지</th><th>고객 연락처</th><th>운송장번호</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<ParList.size();i++){
					Parsel vo = ParList.get(i);
					if(vo.getParselState()==1){
					}
				%>
				<tr>
					<td><%=ParList.size()-i %></td>
					<td><%=vo.getParselAddr()%></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselState() %>
						<a href="<%=vo.getParselUrl(vo.getParselCompany())%><%=vo.getBaleCode() %>"target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<% } %>	
				</tbody>
			</table>		
			<table class="table" id="parsel0">
				<caption><h3>도착</h3></caption>
				<thead>
					<tr>
						<th>번호</th><th>배송지</th><th>고객 연락처</th><th>운송장번호</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<ParList.size();i++){
					Parsel vo = ParList.get(i);
					if(vo.getParselState()==3){
					}
				%>
				<tr>
					<td><%=ParList.size()-i %></td>
					<td><%=vo.getParselAddr()%></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselState() %>
						<a href="<%=vo.getParselUrl(vo.getParselCompany())%><%=vo.getBaleCode() %>"target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<% } %>	
				</tbody>
			</table>	
		</main>
		<script>
		$(document).ready(function(){
			$("#tb_btn_box label").click(function(){
				$(this).removeClass("btn-outline-primary").addClass("btn-primary");
				$(this).siblings("label").removeClass("btn-primary").addClass("btn-outline-primary");
			});
		});
		</script>						
		</div>
</div>
</body>
<%@ include file="../footer.jsp" %>
</html>