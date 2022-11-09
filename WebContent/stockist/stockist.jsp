<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>stockist</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.title {
    padding-top: 36px;
    padding-bottom: 20px;
    color: #7BB1E8;
}

      .page {
        clear: both;
        width: 100%;
        height: 500px;
        margin-top: 30px;
        
      }

      .page_wrap {
        width: 1200px;
        margin: 0 auto;
      }
      
		ul.left {
		    text-align: right;
		    float: left;
		    width: 400px;
		    margin-right: 100px;
		}
</style>
<%@ include file="../header.jsp" %>

</head>
<body>
       <section class="page" id="page1">
          <div class="page_wrap">
			<table class="lst">
				<ul class="left">
					<h3 class="title"><strong>KOREA</strong></h3>
						<li><a href="https://gift.kakao.com/brand/11279" style="color:#7BB1E8; font-size:17px;'">KAKAOTALK</a></li>
						<li><a href="https://www.musinsa.com/brands/swingset" style="color:#7BB1E8; font-size:17px; '">MUSINSA</a></li>
						<li><a href="https://www.wconcept.co.kr/Search?kwd=SWINGSET" style="color:#7BB1E8; font-size:17px; '">WCONCEPT</a></li>
					<br>
					<br>
					<h3 class="title"> <strong>CHINA</strong></h3>
						<li><a style="color:#7BB1E8; font-size:17px;">MONOTE STORE</a></li>  
						<li><a style="color:#7BB1E8; font-size:17px;">FLIPPED VINTAGE</a></li>
						<li><a href="http://www.100bang.co.kr/" style="color:#7BB1E8; font-size:17px;">100BANG</a></li>
						<li><a href="https://www.fdu.co.kr/cn/index.php" style="color:#7BB1E8; font-size:17px;">FDU</a></li>
					<br>
					<br>
					<h3 class="title"> <strong>JAPAN</strong></h3>
						<li><a style="color:#7BB1E8; font-size:17px;">SIXTY PERCENT </a></li>  
						<li><a href="https://www.qoo10.jp/shop/sellerwork" style="color:#7BB1E8; font-size:17px;">Qoo10</a></li>
						<li><a href="https://www.buyma.com/buyer/2687981.html" style="color:#7BB1E8; font-size:17px;">BUYMA</a></li>
				 </ul>
					<ul class="right">
						<h3 class="title"> <strong>OFFLINE STORE</strong></h3> 
						<li><a style="color:#7BB1E8; font-size:17px;">KKOTBATT<br> B1 40 Toegye-ro 27-gil, Seoul</a></li><br>
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.673457032417!2d126.98903041539532!3d37.5627565321022!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca37b4f4fc8bb%3A0xf2b1564181b329cd!2z6r2D67CtIEtLT1RCQVRU!5e0!3m2!1sko!2skr!4v1667986816863!5m2!1sko!2skr" 
						width="250" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
					</ul>
          </table>          
          </div>
    </section>
</body>
<%@ include file="../footer.jsp" %>
</html>