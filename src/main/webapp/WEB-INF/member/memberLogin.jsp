<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${ctp}/css/default.css">
  <link rel="stylesheet" href="${ctp}/css/login.css">
	<title>무화과 농장 로그인</title>
</head>
<body>
	<header>
    <div class="main"><a href="${pageContext.request.contextPath}/index.jsp">무화과 농장</a></div>
  </header>
  <div class="login">
    <h2>로그인</h2>
    <form name="myform" method="post" action="${ctp}/MemberLoginOk.mem">
	    <ul class="first">
	      <li><input type="text" placeholder="아이디" title="아이디입력"></li>
	      <li><input type="password" placeholder="비밀번호" title="비밀번호입력"></li>
	      <li><input type="checkbox" id="chk_id"><label for="chk_id">아이디저장</label></li>
	      <li><button>로그인</button></li>
	    </ul>
	    <div class="sub">
	      <ul class="second">
		      <li><a href="${ctp}/MemberJoin.mem">회원가입</a></li>
		      <li><a href="">아이디 찾기</a></li>
		      <li><a href="">비밀번호 찾기</a></li>
	      </ul>
	    </div>
	   </form>
  </div>
</body>
</html>