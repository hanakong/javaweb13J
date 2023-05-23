<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>무화과 농장</title>
	<jsp:include page="/include/bs4.jsp" />
  <link rel="stylesheet" href="${ctp}/css/reset.css">
  <script src="https://kit.fontawesome.com/9700a15502.js" crossorigin="anonymous"></script>
  <style>
  	@font-face {
    font-family: 'EF_watermelonSalad';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_watermelonSalad.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
		}
		@font-face {
		    font-family: 'GmarketSansMedium';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		* {
		  box-sizing: border-box;
		  font-family: 'GmarketSansMedium';
		  color: #262614;
		}
		a {
		  all: unset;
		}
		.login-box {
		  display: flex;
		  justify-content: flex-end;
		  margin:30px 11.5% 15px 0;
		  cursor: pointer;
		}
		.login-box a {
		  padding: 10px 20px ;
		}
		.header {
		  display: flex;
		  align-items: center;
		  justify-content: space-around;
		}
		.header a{
		  font-family: 'EF_watermelonSalad';
		  text-decoration: none;
		  font-weight: 900;
		  cursor: pointer;
		  padding: 20px;
		}
		.header > a {
		  font-size: 22px;
		}
		.nav {
		  display: flex;
		  width: 35%;
		  justify-content: space-around;
		  height: 60px;
		  align-items: center;
		}
		.nav .nav-item a {
		  font-family: 'GmarketSansMedium';
		  display: inline-flex;
		  justify-content: space-evenly;
		  width: 85px;
		  font-size: 18px;
		}
		.header-hr hr {
		  width: 75%;
		  margin: 0 auto 0;
		  justify-content: center;
		  align-items: center;
		}
		.intro {
		  width: 75%;
		  margin: 50px auto 0;
		}
		.intro-head {
		  font-size: 30px;
		  margin-bottom: 15px;
		}
		.intro-content {
		  display: flex;
		}
		.intro-content-w {
		  margin-left: 50px;
		  font-size: 18px;
		}
		.intro-content-w .intro-content2 {
		  font-weight: bolder;
		  padding-top: 50px;
		}
		.intro-content2, .intro-content3, .intro-content4 {
		  margin: 10px 0px 20px;
		}
		.intro-content1 hr {
		  width: 500px;
		}
		.intro-content-img img {
		  width: 710px;
		  height: 300px;
		}
		.insta-box-header {
		  display: flex;
		  margin-top: 50px;
		  margin-bottom: 15px;
		  font-size: 27px;
		  justify-content: space-between;
		}
		.insta-box-header i {
			color: #262614;
		}
		.insta {
		  width: 75%;
		  margin: 0 auto 0;
		}
		.arrow-container {
		  display: flex;
		  transition: transform 0.5s;
		}
		.arrow-container i {
		  padding: 10px;
		  cursor: pointer;
		}
		.foto-box {
		  overflow: hidden;
		}
		.insta-foto {
		  display: flex;
		  justify-content: space-between;
		}
		.insta-foto img {
		  width: 340px;
		  height: 340px;
		  cursor: pointer;
		  margin-right: 20px;
		}
		.banner2 {
		  width: 75%;
		  margin: 100px auto 0;
		}
		.banner-box-lt {
		  height: 200px;
		  display: flex;
		  border: 1px solid;
		  justify-content: flex-start;
		}
		.banner-lt-img img {
		  width: 100%;
		  height: 200px;
		}
		.arrow-container2 {
		  display: flex;
		  justify-content: end;
		  font-size: 20px;
		}
		.arrow-container2 i {
		  padding: 10px;
		  cursor: pointer;
		}
		.footer {
		  margin-top: 40px;
		  margin: 100px auto 0;
		}
		.footer-box {
		  padding: 40px;
		  background-color: #D9D9D9;
		}
		.box-inner {
		  text-align: center;
		  margin: 7px;
		  font-size: 16px;
		  color: #262614;
		}
  </style>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<div class="banner-container">
	  <div id="carouselExampleIndicators" class="carousel slide mt-4" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="${ctp}/images/index/banner0.png" class="d-block w-100" alt="무화과축제">
		    </div>
		    <div class="carousel-item">
		      <img src="${ctp}/images/index/banner1.png" class="d-block w-100" alt="무화과축제">
		    </div>
		    <div class="carousel-item">
		      <img src="${ctp}/images/index/banner2.png" class="d-block w-100" alt="무화과축제">
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </button>
		</div>
	</div>
  <section>
    <div class="intro">
      <div class="intro-head">무화과 농장</div>
      <div class="intro-content">
        <div class="intro-content-img"><img src="images/index/11.jpg" alt="무화과농장"></div>
        <div class="intro-content-w">
          <div class="intro-content1"><hr/></div>
          <div class="intro-content2">영업시간 : 09:20 - 17:50</div>
          <div class="intro-content3">대표전화 : 043-225-2111</div>
          <div class="intro-content4">휴무 : 5.30(화)</div>
        </div>
      </div>
    </div>
  </section>
  <section>
    <div class="insta">
      <div class="insta-box-header">
        <h3><i class="fa-brands fa-instagram"></i> 인스타그램</h3>
        <div class="arrow-container">
          <div class="prev"><i class="fa-solid fa-chevron-left"></i></div>
          <div class="next"><i class="fa-solid fa-chevron-right"></i></div>
        </div>
      </div>
      <div class="foto-box">
        <ul class="insta-foto">
          <li ><a href="https://instagram.com"><img src="images/index/4.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/index/5.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/index/6.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/index/7.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/index/8.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/index/9.jpg"></img></a></li>
        </ul>
      </div>
    </div>
  </section>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>