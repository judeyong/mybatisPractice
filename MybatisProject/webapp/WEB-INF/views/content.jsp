<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕 나는 메뉴바야</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<style>

    body{
        margin:0px;
    }
	.outer{
		width : 900px;
		background-color : lightpink;
		color : white;
		margin : auto;
		margin-top : 20px;
	}
	
	.login-area a{
		text-decoration : none;
		font-size : 14px;
		color : black;
	}
	
	.nav-area, #footer{
		background-color : lightpink;
		height : 60px;
		color : white;
	}

    #footer{
	background-color : lightpink;
	height : 60px;
	color : white;
        line-height: 60px;
        padding-right : 20px;
        font-size: 17px;
        text-align:right;
        font-weight: 600;
    }

    #sakura{
        background-image:url('https://www.crossroadfukuoka.jp/storage/special_features/38/responsive_images/q0hE9tjduBiHqz9D4hlPG9Rx4qnsyGjp3aFupoG1__1673_1115.jpg');
        width:90%; 
        height:600px; 
        margin : 20px 0px;
        background-size: cover;
        float : left;
    }

    

    #sakura2{
        background-image:url('https://www.gotokyo.org/kr/story/guide/hanami-guide/images/sg009_1376_1.jpg');
        width:90%; 
        height:600px; 
        margin : 20px 0px;
        float : right;
        background-size: cover;
    }



    .scroll_image {
        opacity:0;
        margin-bottom:-300px;
        max-width:100%;
    }

</style>
</head>
<body>

        <div class="jumbotron">
            <h1>MyBatis 배워보기</h1>
            <br>
            <p>오늘은 마이바티스를 배워봅시당</p>
        </div>

        <div id="sakura" data-aos="fade-right"
	     data-aos-offset="350"
	     data-aos-easing="ease-in-sine">

        </div>

        <br clear="both">

        <div id="sakura2" data-aos="fade-left"
	     data-aos-offset="350"
	     data-aos-easing="ease-in-sine">

        </div>

        <br clear="both">
	

	
	<br>

    <div id="footer">
        Copyright © 1998-2024 승철 Educational Institute All Right Reserved
    </div>

<script>
  AOS.init();
</script>

</body>
</html>