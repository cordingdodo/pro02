<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Press</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
<script src="https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js"></script>
<style>
<%@ include file="../header.jsp" %>
  <style>
.grid {
    margin: 50px;
}

.grid-item {
    margin-right: 10px;
    margin-bottom: 30px;
}
    </style>
</head>
<body>
<div class="grid" style="text-align:center">
  <div class="grid-item"><img src="../img/press/1.jpg"></div>
  <div class="grid-item"><img src="../img/press/2.jpeg"></div>
  <div class="grid-item"><img src="../img/press/3.jpeg"></div>
  <div class="grid-item"><img src="../img/press/4.jpg"></div>
  <div class="grid-item"><img src="../img/press/5.jpeg"></div>
  <div class="grid-item"><img src="../img/press/6.jpeg"></div>
  <div class="grid-item"><img src="../img/press/7.jpeg"></div>
  <div class="grid-item"><img src="../img/press/8.jpeg" /></div>
  <div class="grid-item"><img src="../img/press/9.gif" style="width:700px;"/></div>
  <div class="grid-item"><img src="../img/press/10.png" /></div>
  <div class="grid-item"><img src="../img/press/11.png" /></div>
  <div class="grid-item"><img src="../img/press/12.png" /></div>
</div>

<script>

var msnry = new Masonry( '.grid', {
	  itemSelector: '.grid-item',
	  columnWidth: 200
	});

</script>

</body>
</html>