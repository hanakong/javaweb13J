<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<%
  int level = session.getAttribute("sLevel")==null ? 99 : (int) session.getAttribute("sLevel");
  pageContext.setAttribute("level", level);
%>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');
	
	/* Reset */
	html,body,h1,h2,h3,h4,h5,h6,div,p,blockquote,pre,code,address,ul,ol,li,nav,section,article,header,footer,main,aside,dl,dt,dd,table,thead,tbody,tfoot,label,caption,th,td,form,fieldset,legend,hr,input,button,textarea,object,figure,figcaption {margin:0;padding:0;}
	body,input,select,textarea,button,img,fieldset {border:none;}
	ul,ol,li{list-style:none;}
	table{width:100%;border-spacing:0;border-collapse:collapse;}
	address,cite,code,em,i{font-style:normal;font-weight:normal;}
	label,img,input,select,textarea,button,a {vertical-align:middle;}
	u,ins,a{text-decoration:none;}
	button { cursor: pointer;}
	
	/* Normalize */
	body { font-family: 'Noto Sans KR', sans-serif; }
	select { appearance:none;}
	select::-ms-expand { display:none;}
	input[type="search"]::-webkit-search-decoration,
	input[type="search"]::-webkit-search-cancel-button,
	input[type="search"]::-webkit-search-results-button,
	input[type="search"]::-webkit-search-results-decoration,
	input[type="number"]::-webkit-inner-spin-button,
	input[type="number"]::-webkit-outer-spin-button { -webkit-appearance:none;}
	input[type="number"]{ -moz-appearance:textfield;}
	input[type="number"],
	input[type="text"],
	input[type="password"],
	input[type="url"],
	input[type="email"],
	input[type="tel"],
	input[type="date"], 
	textarea { -webkit-appearance:none; -moz-appearance:none; appearance:none; -webkit-border-radius:0; outline:0;}
	textarea { resize: none;}
	
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
	  font-family: 'GmarketSansMedium';
	  color: #262614;
	}
	a {
	  all: unset;
	  cursor : pointer; 
	}
	.login-box {
	  display: flex;
	  justify-content: flex-end;
	  margin:30px 11.5% 15px 0;
	}
	.login-box  a {
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
</style>

<header>
  <span class="login-box">
    <c:if test="${level > 2}"><span class="join"><a href="${pageContext.request.contextPath}/MemberJoin.mem">회원가입</a></span></c:if>
    <c:if test="${level > 2}"><span class="login"><a href="${ctp}/MemberLogin.mem">로그인</a></span></c:if>
   	<c:if test="${level <= 2}"><span class="logout"><a href="${ctp}/MemberPrivacy.mem">개인정보</a></span></c:if>
   	<c:if test="${sLevel == 0}"><span class="admin"><a href="${ctp}/AdminMain.ad">관리자메뉴</a></span></c:if>
   	<c:if test="${level <= 2}"><span class="logout"><a href="${ctp}/MemberLogout.mem">로그아웃</a></span></c:if>
  </span>
  <div class="header-hr"><hr/></div>
  <div class="header">
    <h2><a href="${ctp}/index.jsp">무화과 농장</a></h2>
    <div class="nav">
      <div class="nav-item"><a href="${ctp}/Soge.mem">소개</a></div>
     	<div class="nav-item"><a href="${ctp}/ReservationList.res">예약</a></div>
     	<div class="nav-item"><a href="${ctp}/ReviewList.rev">후기</a></div>
      <div class="nav-item"><a href="${ctp}/StoreMain.st">스토어</a></div>
      <div class="nav-item"><a href="${ctp}/BoardList.bo">공지사항</a></div>
    </div>
  </div>
	<div class="header-hr"><hr/></div>
</header>
