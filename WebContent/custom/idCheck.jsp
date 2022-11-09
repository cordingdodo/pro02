<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String cusId = request.getParameter("cusId");  
	
%>
<!DOCTYPE html>
<html>
<head>
<style>
 .title {text-align:center;}
</style>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
</head>
<div class="fr">
	<h3 class="title">아이디 중복 검사</h3>
	<form action="<%=request.getContextPath() %>/idCheckCtrl" id="id" name="id" method="post" onsubmit="return invalidCheck(this)">
		<label for="cusId">아이디</label>
		<input type="text" id="cusId" name="cusId"  placeholder="아이디 입력"  value="<%=cusId %>"/>
		<button type="submit" class="in_btn">중복 확인</button>
	</form>
</div>
	<script>
	function invalidCheck(f){
		var id = f.id.value;
		id = id.trim();
		if(id.length<3 || id.length>12){
			alert("아이디의 글자수는 3글자 이상 12글자 이하 이어야 합니다.");
			return false;
		}
	}
	</script>
</body>
<%@ include file="../footer.jsp" %>
</html>