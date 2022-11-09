<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Swingset</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>

	.banner_wraper { padding-top:100px; height: 300px; width: 1000px; overflow: hidden; }
	.banner_wraper img {  height: auto; position: absolute; }
</style>
<%@ include file="header.jsp" %>
</head>
<body>
	<div class=content_wrap>
		<div class="container" id="content">
			<div class="banner_wraper">
		    <img src="img/ba/1.PNG">
		    <img src="img/ba/2.PNG">
		    <img src="img/ba/3.PNG">
		    <img src="img/ba/4.PNG">
		    <img src="img/ba/5.PNG">
		    <img src="img/ba/6.PNG">
		    <img src="img/ba/7.PNG">
			</div>
		</div>
	</div>
</body>
 <script type="text/javascript">

            //client rolling banner
   window.onload = function() {
            var bannerLeft=0;
            var first=1;
            var last;
            var imgCnt=0;
            var $img = $(".banner_wraper img");
            var $first;
            var $last;

            $img.each(function(){   // 5px 간격으로 배너 처음 위치 시킴
                $(this).css("left",bannerLeft);
                bannerLeft += $(this).width()+5;
                $(this).attr("id", "banner"+(++imgCnt));  // img에 id 속성 추가
            });

            
            if( imgCnt > 5){                //배너 9개 이상이면 이동시킴



                last = imgCnt;

                setInterval(function() {
                    $img.each(function(){
                        $(this).css("left", $(this).position().left-1); // 1px씩 왼쪽으로 이동
                    });
                    $first = $("#banner"+first);
                    $last = $("#banner"+last);
                    if($first.position().left < -200) {    // 제일 앞에 배너 제일 뒤로 옮김
                        $first.css("left", $last.position().left + $last.width()+5 );
                        first++;
                        last++;
                        if(last > imgCnt) { last=1; }   
                        if(first > imgCnt) { first=1; }
                    }
                }, 50);   //여기 값을 조정하면 속도를 조정할 수 있다.(위에 1px 이동하는 부분도 조정하면 

//깔끔하게 변경가능하다           

 }

};


</script>
<%@ include file="footer.jsp" %>
</html>