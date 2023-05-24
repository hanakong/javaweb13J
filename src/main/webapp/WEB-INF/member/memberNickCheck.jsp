<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head> 
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberNickCheck.jsp</title>
  <style>
  @font-face {
  font-family: 'GmarketSansMedium';
  src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
  font-weight: normal;
  font-style: normal;
	}
	.chk_nick {
		font-size : 18px;
		font-family: 'GmarketSansMedium';
    text-align: center;
	}
  .chk_nick-head {
    font-family: 'GmarketSansMedium';
    font-size: 22px;
    text-align: center;
    margin-bottom: 10px;
  }
  .nick_btn1 {
    display: grid;
    grid-template-columns: 130px;
    justify-content: center;
  }
  .nick_btn2 {
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
    	opener.window.document.myform.nickName.value = '${nickName}';
    	opener.window.document.myform.name.focus();
    	window.close();
    }
    
    function nickCheck() {
    	let nickName = childForm.nickName.value;
    	
    	if(nickName.trim() == "") {
    		alert("닉네임을 입력해주세요");
    		childForm.nickName.focus();
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
  <h3 class="chk_nick-head">닉네임 체크폼</h3>
  <c:if test="${res == 1}">
    <h4 class="chk_nick">입력하신 <font color="#B7BF99"><b>${nickName}</b></font> 은/는 사용 가능한 닉네임입니다.</h4>
    <p class="nick_btn1"><input type="button" value="창닫기" onclick="sendCheck()"/></p>
  </c:if>
  <c:if test="${res != 1}">
    <h4 class="chk_nick">입력하신 <font color="#B7BF99"><b>${nickName}</b></font> 은/는 이미 사용중인 닉네임입니다.</h4>
    <form name="childForm" method="post" action="${ctp}/MemberNickCheck.mem">
    	<p class="nick_btn2">
    	  <input type="text" name="nickName"/>
    	  <input type="button" value="닉네임재검색" onclick="nickCheck()"/>
    	</p>
    </form>
  </c:if>
</div>
<p><br/></p>
</body>
</html>