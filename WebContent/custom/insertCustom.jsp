<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>회원 가입</title>
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
    .content {
    text-align: center;
}
  #cusId { width:780px; float:left; margin-right:30px; margin-left:6px; }  
    </style>
</head>
<%@ include file="../header.jsp" %>
<body>
	<div class="content">
<h3 class="title">회원가입</h3>
		<form name="frm1" id="frm1"  action="../InsertCustomCtrl" method="post" onsubmit="return joinCheck(this)">
			<table class="tb">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
						<div class="form_row">
							<input type="text" id="cusId" name="cusId" class="form-control" placeholder="아이디 입력" class="form-control" autofocus required >
							<button type="button" onclick="idCheck()" style="margin-left:20px" class="btn btn-outline-primary">아이디 중복 확인</button><br>
							<input type="hidden" name="idck" value="no"> <br>
						</div>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" id="cusPw" name="cusPw" class="form-control" placeholder="비밀번호 입력" required><br>
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" id="cusPw2" name="cusPw2" class="form-control" placeholder="비밀번호 입력" required><br>
					</td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" id="cusName" name="cusName" class="form-control" placeholder="이름 입력" required><br>
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" id="address1" name="address1" class="form-control" placeholder="주소 입력" required><br>
					<input type="text" id="address2" name="address2" class="form-control"  placeholder="상세 주소 입력" required><br>
					<input type="text" name="postcode" id="postcode" style="width:160px;float:left; margin-right:20px;" placeholder="우편번호" class="form-control" required/><br>
					<button type="button" id="post_btn" onclick="findAddr()" class="btn btn-outline-primary" style="" >우편번호 검색</button>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" id="tel" name="tel" class="form-control" placeholder="010-000-0000 입력"><br>
					</td>
				</tr>				
			</tbody>
			</table>
				<div class="btn-group">
					<input type="submit" name="submit_btn" class="btn btn-outline-primary" value="가입하기">
					<input type="reset" name="reset_btn" class="btn btn-outline-secondary" value="취소">
				</div>
		</form>
	</div>
</body>
<script>
function idCheck(){
	var cusId = document.frm1.cusId.value;
	var win = window.open("idCheck.jsp?cusId="+cusId, "id 중복 체크", "width=400, height=300");

	
}

function joinCheck(f){
		if(f.cusPw.value!=f.cusPw2.value){
			alert("비밀번호와 비밀번호 확인이 같지 않습니다.")
			f.cusPw.focus();
			return false;
		}
		if(f.idck.value!="yes"){
			alert("아이디 중복 체크를 하지 않으셨습니다.")
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