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
	<style type="text/css">
		img {
		text-align : center;
		}
	</style>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<p><br/><p>
	<div class="container">
		<div class="header">무화과 농장의 장점</div>
		<img alt="무화과 농장의 장점" src="${ctp}/images/soge1.jpg">
	</div>
	<p><br/><p>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>