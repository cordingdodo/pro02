<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>22SS</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
</head>
<style>
.content {
    width: 1000px;
    margin: 50px auto;
}
    .title {
    padding-top: 50px;
    text-align: center;
    color: #7BB1E8; }

}
    
</style>
<%@ include file="../header.jsp" %>
<body>
	<h3 class="title"> 22S </title>
<div class="content">
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="<%=request.getContextPath() %>/img/1.png" class="d-block w-100" alt="1">
		    </div>
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/2.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/3.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/4.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/5.PNG" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/6.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/7.jpg" class="d-block w-100" alt="...">
		    </div>   
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/8.png" class="d-block w-100" alt="...">
		    </div> 
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/9.jpg" class="d-block w-100" alt="...">
		    </div> 
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/10.jpg" class="d-block w-100" alt="...">
		    </div> 
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/11.png" class="d-block w-100" alt="...">
		    </div> 
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/12.png" class="d-block w-100" alt="...">
		    </div> 
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/13.jpg" class="d-block w-100" alt="...">
		    </div>     
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/14.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="<%=request.getContextPath() %>/img/15.jpg" class="d-block w-100" alt="...">
		    </div>                             
		  </div>
		 <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </button>
		</div>
	</div>
</body>
<%@ include file="../footer.jsp" %>
</html>