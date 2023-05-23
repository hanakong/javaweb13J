<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>무화과 농장 소개</title>
	<jsp:include page="/include/bs4.jsp" />
	<style>
	.content-container {
	  width: 75%;
	  margin: 0 auto 0;
	  justify-content: center;
	  align-items: center;
	}
	.soge-hr1 {
	  margin: 100px auto 0;
	  width: 21.5%;
	  align-items: center;
	}
	.soge-hr2 {
	  margin: 0 auto 20px;
	  width: 21.5%;
	  align-items: center;
	}
	.soge-head {
	  font-size: 35px;
	  font-weight: 400;
	  text-align: center;
	}
	.soge-img {
	  width: 100%;
	  margin-top: 40px;
	  background-size: cover;
	  background-repeat: no-repeat;
	  background-image: url(${ctp}/images/soge/sogebanner.jpeg);
	  height: 500px;
	}
	.soge-img2 {
	  width: 100%;
	  margin-top: 40px;
	  background-size: cover;
	  background-repeat: no-repeat;
	  background-image: url(${ctp}/images/soge/soge1.jpg);
	  height: 500px;
	}
	.soge-img3 {
	  width: 100%;
	  margin-top: 40px;
	  background-size: cover;
	  background-repeat: no-repeat;
	  background-image: url(${ctp}/images/soge/map.png);
	  height: 800px;
	}
	.location {
	  font-size: 35px;
	  font-weight: 400;
	  text-align: center;
	}
	.location-above {
	  margin-top: 20px;
	}
	.location-box {
	  margin: 5px 0 200px;
	  display: flex;
	  justify-content: space-between;
	  font-size: 24px;
	}
	.loca-img {
	  width: 30px;
	  height: 30px;
	  align-items: center;
	  margin-bottom: 5px;
	}
	</style>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<div class="content-container">
    <div class="soge-img"></div>
    <hr class="soge-hr1"/>
    <div class="soge-head">무화과 농장의 장점</div>
    <hr class="soge-hr2"/>
    <div class="soge-img2"></div>
    <hr class="soge-hr1"/>
    <div class="location">오시는 길</div>
    <hr class="soge-hr2"/>
    <div class="soge-img3"></div>
    <hr class="location-above"/>
    <div class="location-box">
      <div class="location-inner"><img class="loca-img" src="${ctp}/images/soge/loca.jpeg" alt="위치"> 충청북도 청주시 서원구 사창동 148-7 4,5층</div>
      <div class="location-inner-tel"><img class="loca-img" src="${ctp}/images/soge/tel.jpeg" alt="위치"> 043-225-2111</div>
    </div>
  </div>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>