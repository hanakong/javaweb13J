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
	<link rel="stylesheet" href="${ctp}/css/index.css">
  <link rel="stylesheet" href="${ctp}/css/reset.css">
  <script src="https://kit.fontawesome.com/9700a15502.js" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<section class="banner-container">
	  <div class="banner-box">
	    <div class="banner-img"><img src="${ctp}/images/banner2.png" /></div>
	  </div>
  </section>
  <section>
    <div class="intro">
      <div class="intro-head">무화과 농장</div>
      <div class="intro-content">
        <div class="intro-content-img"><img src="images/11.jpg" alt="무화과농장"></div>
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
        <h3><i class="fa-brands fa-instagram"></i>인스타그램</h3>
        <div class="arrow-container">
          <div class="prev"><i class="fa-solid fa-chevron-left"></i></div>
          <div class="next"><i class="fa-solid fa-chevron-right"></i></div>
        </div>
      </div>
      <div class="foto-box">
        <ul class="insta-foto">
          <li ><a href="https://instagram.com"><img src="images/4.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/5.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/6.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/7.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/8.jpg"></img></a></li>
          <li ><a href="https://instagram.com"><img src="images/9.jpg"></img></a></li>
        </ul>
      </div>
    </div>
  </section>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>