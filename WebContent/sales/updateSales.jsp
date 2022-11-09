<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>배송 정보 수정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="common.css">

<style>
.title { padding-top:36px; padding-bottom:20px; }
.table tr td img { max-width:400px; height:auto; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Parsel pro = (Parsel) request.getAttribute("parsel");
%>
<div class="content container" id="content">
	<h2 class="title">배송 정보 수정</h2>
	<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/UpdateSalesProCtrl" method="post" onsubmit="return payCheck(this)">	
		<table class="table">
			<tbody>
				<tr>
					<th>배송지 주소</th>
					<td>
						<input type="hidden" name="parselNo" id="parselNo" value="<%=pro.getParselNo() %>"><br>
						<p><%=pro.getParselAddr() %></p>
						<input type="hidden" name="parselAddr" id="parselAddr" value="<%=pro.getParselAddr() %>"><br>
						변경할 주소: <br>
						<input type="text" name="address1" id="address1" placeholder="기본 주소 입력" class="form-control" required /><br>
						<input type="text" name="address2" id="address2" placeholder="상세 주소 입력" class="form-control" required /><br>
						<input type="text" name="postcode" id="postcode" style="width:160px;float:left;margin-right:20px;" placeholder="우편번호" class="form-control" required>
						<button type="button" id="post_btn" onclick="findAddr()" class="btn btn-primary" style="margin-bottom:36px;">우편번호 검색</button>
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>	
						<input type="tel" name="cusTel" id="cusTel" placeholder="연락처 입력" class="form-control" value="<%=pro.getCusTel() %>">
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit" class="btn btn-info" value="배송 정보 변경">
			<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
			<a href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl" class="btn btn-info">목록으로</a>
		</div>
	</form>
	<script>
	function findAddr() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data);
				var roadAddr = data.roadAddress;
				var jibunAddr = data.jibunAddress;
				document.getElementById("postcode").value = data.zonecode;
				if(roadAddr !== '') {
					document.getElementById("address1").value = roadAddr;				
				} else if(jibunAddr !== ''){
					document.getElementById("address1").value = jibunAddr;
				}
				document.getElementById("address2").focus();
			}
		}).open();
	}
	</script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</div>
</body>
<%@ include file="../footer.jsp" %>
</html>