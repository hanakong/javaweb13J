<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberIdCheck.jsp</title>
    <style>
  @font-face {
  font-family: 'GmarketSansMedium';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
  font-weight: normal;
  font-style: normal;
	}
	.chk_mid {
		font-size : 18px;
		font-family: 'GmarketSansMedium';
    text-align: center;
	}
  .chk_mid-head {
    font-family: 'GmarketSansMedium';
    font-size: 22px;
    text-align: center;
    margin-bottom: 10px;
  }
  .mid_btn1 {
    display: grid;
    grid-template-columns: 130px;
    justify-content: center;
  }
  .mid_btn2 {
    display: grid;
    grid-template-columns: 170px 130px;
    column-gap: 5px;
    justify-content: center;
  }
  p input[type=button] {
    height: 36px;
    background: #B7BF99;
    font-size: 18px;
    color: #fff;
    border: none;
  }
  
  </style>
  <script>
    'use strict';
    
    function sendCheck() {
    	opener.window.document.myform.mid.value = '${mid}';
    	opener.window.document.myform.pwd.focus();
    	window.close();
    }
    
    function idCheck() {
    	let mid = childForm.mid.value;
    	
    	if(mid.trim() == "") {
    		alert("아이디를 입력해주세요.");
    		childForm.mid.focus();
    	}
    	else {
    		childForm.submit();
    	}
    }
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h3 class="chk_mid-head">아이디 체크폼</h3>
  <c:if test="${res == 1}">
    <h4 class="chk_mid">입력하신 <font color="#B7BF99"><b>${mid}</b></font>는 사용 가능한 아이디입니다.</h4>
    <p class="mid_btn1"><input type="button" value="창닫기" onclick="sendCheck()"/></p>
  </c:if>
  <c:if test="${res != 1}">
    <h4 class="chk_mid">입력하신 <font color="#B7BF99"><b>${mid}</b></font>는 이미 사용중인 아이디입니다.</h4>
    <form name="childForm" method="post" action="${ctp}/MemberIdCheck.mem">
    	<p class="mid_btn2">
    	  <input type="text" name="mid"/>
    	  <input type="button" value="아이디재검색" onclick="idCheck()"/>
    	</p>
    </form>
  </c:if>
</div>
<p><br/></p>
</body>
</html>