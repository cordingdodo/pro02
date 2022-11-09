<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<%
	Custom custom = (Custom) request.getAttribute("custom");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>회원정보 확인 및 수정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.title {
    padding-top: 36px;
    padding-bottom: 20px;
    text-align: center;
    color: #7BB1E8;
}
 .h2, h3 {    
 	font-size: 2rem;
    padding-top: 30px;
    padding-bottom: 30px;
    text-align: center; }
 .agree_fr { 
 	width: 700px; white-space:pre-wrap; margin: 10px auto; 
 	padding: 24px; border:2px solid #eee; height:600px; overflow-y:auto; margin-top:40px;}
 .form-check {
 margin-left : 350px; padding-top:15px; padding-bottom:15px;}
 .btn_fr {
    padding-left: 580px; 
    padding-bottom: 50px;
    padding-top:50px; }
  #cusId { width:780px; float:left; margin-right:30px; margin-left:6px; } 
  .btn-group, .btn-group-vertical {     
  	margin: 20px;
    margin-left: 550px;
    }
    </style>
</head>
<%@ include file="../header.jsp" %>
<body>
	<div class="content">
<h3 class="title">회원정보 확인 및 수정</h3>
		<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/UpdateCustomCtrl" method="post" onsubmit="return updateCheck(this)">
			<table class="tb">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<div class="form_row">
							<input type="text" id="cusId" name="cusId" class="form-control" placeholder="아이디 입력" class="form-control" value="<%=custom.getCusId() %>" autofocus required readonly>
							<input type="hidden" name="idck" value="no">
						</div>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" id="cusPw" name="cusPw" class="form-control" placeholder="비밀번호 입력" required>
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" id="cusPw2" name="cusPw2" class="form-control" placeholder="비밀번호 입력" required>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" id="cusName" name="cusName" value="<%=custom.getCusName()%>" class="form-control" placeholder="이름 입력" required>
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
					<p><%=custom.getAddress()%></p>
					<input type="hidden" name="address" id="address"> 
					<p>주소 변경시에만 입력하시기 바랍니다.</p>
					<input type="text" id="address1" name="address1" class="form-control" placeholder="주소 입력"><br>
					<input type="text" id="address2" name="address2" class="form-control"  placeholder="상세 주소 입력"><br>
					<input type="text" name="postcode" id="postcode" style="width:160px;float:left; margin-right:20px;" placeholder="우편번호" class="form-control" required/>
					<button id="post_btn" onclick="findAddr()" class="btn btn-outline-primary" >우편번호</button>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" id="tel" name="tel" class="form-control" value="<%=custom.getTel()%>" placeholder="010-000-0000 입력">
					</td>
				</tr>		
				<tr>
					<th>등급</th>
					<td><%
					if(custom.getLevel()==0){
						out.println("<span>준회원</span>");
					} else if(custom.getLevel()==1) {
						out.println("<span>정회원</span>");						
					} else if(custom.getLevel()==2) {
						out.println("<span>우수회원</span>");
					} else if(custom.getLevel()==3) {
						out.println("<span>VIP회원</span>");
					} else {
						out.println("<span>관리자</span>");
					}
					%></td>
				</tr>
				<tr>
					<th>회원 포인트</th>
					<td><%=custom.getPoint() %> 점</td>
				</tr>				
				<tr>
					<th>방문 횟수</th>
					<td><%=custom.getVisited() %> 번</td>
				</tr>		
			</tbody>
		</table>
			<div class="btn-group">
				<input type="submit" name="submit_btn" class="btn btn-outline-primary" value="정보 수정">
				<input type="reset" name="reset_btn" class="btn btn-outline-secondary" value="취소">
			</div>
		</form>
	</div>
</body>
<script>
function updateCheck(f){
	if(f.edit_cusPw.value!=f.edit_cusPw2.value){
		alert("비밀번호와 비밀번호 확인이 서로 다릅니다.")
		f.edit_cusPw.focus();
		return false;
	}
}
</script>
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
<%@ include file="../footer.jsp" %>
</html>