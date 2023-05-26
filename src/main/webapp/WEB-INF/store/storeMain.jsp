<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>무화과 스토어</title>
		<style type="text/css">
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
		  .store-img-box {
			  width: 75%;
			  margin: 0 auto 0;
			  justify-content: center;
			  align-items: center;
		  }
		  .store-img {
			  width: 100%;
			  margin: 40px 0 40px;
			  background-size: cover;
			  background-repeat: no-repeat;
			  background-image: url(${ctp}/images/store/banner-s.jpg);
			  height: 350px;
			}
		  .category {
		    margin: 50px 0 15px;
		    text-align: center;
		    font-size: 36px;
		  }
		  .category-inner {
		    display: flex;
		    justify-content: end;
		    align-items: center;
		  }
		  .category-inner li {
		    position: relative;
		    padding: 0 18px;
		  }
		  .category-inner li ~ li:after { 
		    content: ""; 
			  position: absolute; 
			  left: 0; 
			  top: 4px; 
			  height:14px; 
			  width: 1px; 
			  background: #262614; 
			  transform: rotate(0deg);
		  }
		  .category-btm {
		    width : 75%;
		    margin: 15px auto 20px;
		    text-align: center;
		  }
		  .header-s {
		    width: 88%;
		    margin: 0 0 40px;
		  }
		  .store-product-set {
		    width: 75%;
		    display: flex;
		    justify-content: space-between;
		    margin: 0 auto 0;
		  }
		  .store-product-set img {
		    width: 320px;
		    height: 350px;
		    justify-content: center;
		  }
		  .footer {
		    height: 500px;
		  }
			.set1-inner {
				text-align: center;
				margin: 5px 0 5px;
				font-size: 18px;
			}
			.set1-inner2 {
				text-align: center;
				margin: 5px 0 5px;
				font-size: 18px;
			}
		</style>
	</head>
	<body>
	<jsp:include page="/include/header.jsp" />
		<div class="store-img-box">
    	<div class="store-img"></div>
  	</div>
	  <div class="category">무화과</div>
	  <hr class="category-btm"/>
	  <div class="header-s">
	    <ul class="category-inner">
	      <li>낮은가격순</li>
	      <li>높은가격순</li>
	      <li>할인율순</li>
	      <li>리뷰많은순</li>
	    </ul>
	  </div>
	  <div class="store-product-box">
	    <div class="store-product-set">
	      <div class="product-set1">
	        <a href=""><img src="${ctp}/images/store/fig1.jpg"/></a>
	        <div class="set1-inner">[친환경] 검정 무화과 1kg</div>
	        <div class="set1-inner2"><b>25,000원</b></div>
	      </div>
	      <div class="product-set1">
	        <a href=""><img src="${ctp}/images/store/fig2.jpg"/></a>
	        <div class="set1-inner">[친환경] 청 무화과 1kg</div>
	        <div class="set1-inner2"><b>25,000원</b></div>
	      </div>
	      <div class="product-set1">
	        <a href=""><img src="${ctp}/images/store/fig3.jpg"/></a>
	        <div class="set1-inner">말랑말랑 말린 무화과 500g</div>
	        <div class="set1-inner2"><b>12,000원</b></div>
	      </div>
	      <div class="product-set1">
	        <a href=""><img src="${ctp}/images/store/fig4.jpg"/></a>
	        <div class="set1-inner">[친환경] 혼합 무화과 1kg</div>
	        <div class="set1-inner2"><b>28,000원</b></div>
	      </div>
	    </div>
	  </div>
	  <jsp:include page="/include/footer.jsp" />
	</body>
</html>