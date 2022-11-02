<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
 .btn-outline-success { color: #84c2ef; 
    border-color: #e3f2fd; }
 .btn-outline-success:hover {
    color: #fff;
    background-color: #84c2ef;
    border-color: #84c2ef;
 .navbar-light .navbar-brand { color: #7bb1e8;}
 .body {color : #71797e;}
 
</style>
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
	  <a class="navbar-brand" href="index.jsp">Swingset</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Swingset<span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item dropdown">
	     	<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
	          Archive</a>
	          <div class="dropdown-menu">
	          <a class="dropdown-item" href="#">22SS</a>
	        </div>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
	          Shop
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="#">RING</a>
	          <a class="dropdown-item" href="#">EARRINGS</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">NECKLACE</a>
	          <a class="dropdown-item" href="#">HAIR</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">KEYRING</a>
	        </div>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Press</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="true">
	          Community
	        </a>
	        <div class="dropdown-menu">
	          <a class="dropdown-item" href="GetBoardListCtrl">Notice</a>
	          <a class="dropdown-item" href="#">Q&A</a>
	          <a class="dropdown-item" href="#">Use After</a>
	        </div>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>