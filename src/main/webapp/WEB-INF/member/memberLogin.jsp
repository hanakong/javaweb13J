<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
  @charset "utf-8";
	@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
	
	/* Reset */
	html,body,h1,h2,h3,h4,h5,h6,div,p,blockquote,pre,code,address,ul,ol,li,menu,nav,section,article,aside,
	dl,dt,dd,table,thead,tbody,tfoot,label,caption,th,td,form,fieldset,legend,hr,input,button,textarea,object,figure,figcaption {margin:0;padding:0;}
	html, body{width:100%;}
	html{-webkit-touch-callout:none; -webkit-user-select:none; -webkit-tap-highlight-color:rgba(0, 0, 0, 0);}
	body{width:100%; background:#fff; min-width:320px; -webkit-text-size-adjust:none;word-wrap:break-word;word-break:break-all;}
	body,input,select,textarea,button {border:none;font-size:12px; font-family:'Noto Sans KR', sans-serif;color:#727272;}
	ul,ol,li{list-style:none;}
	table{width:100%;border-spacing:0;border-collapse:collapse;}
	img,fieldset{border:0;}
	address,caption,cite,code,em{font-style:normal;font-weight:normal;}
	label,img,input,select,textarea,button{vertical-align:middle;}
	caption,legend{line-height:0;font-size:1px;overflow:hidden;}
	hr{display:none;}
	main,header,section,nav,footer,aside,article,figure{display:block;}
	a{color:#000;text-decoration:none;}
	 * {outline:0  !important;-webkit-tap-highlight-color:rgba(0,0,0,0) !important;tap-highlight-color:rgba(0,0,0,0) !important;}
	a:link,a:hover,a:active{text-decoration:none;}
	footer {text-align:center;}
	 
	/* Form */
	textarea { border:1px solid #dbdbdb;}
	select { height:32px; font-size:13px; color:#373737; border:1px solid #e9e9e9; background:#fff;}
	input[type=tel],
	input[type=time],
	input[type=text],
	input[type=password],
	input[type=search],
	input[type=email],
	input[type=file],
	input[type=url],
	input[type=number],
	input[type=date],textarea {width:100%; height:48px; font-size:14px; color:#999; border:1px solid #e8e8e8; background:#fff; text-decoration:none; text-indent:20px;  transition: all 0.5s; vertical-align:middle; border-radius: 3px;}
	textarea::-webkit-input-placeholder,
	input::-webkit-input-placeholder{color:#999; font-size:13px;}
	textarea { padding:5px 20px; text-indent: 0; box-sizing: border-box;}
	select:focus,
	textarea:focus,
	input:focus { border: 1px solid #727272;}
	
	input[type=tel][readonly],
	input[type=text][readonly],
	input[type=password][readonly],
	input[type=email][readonly], 
	input[type=tel][disabled],
	input[type=text][disabled],
	input[type=password][disabled],
	input[type=email][disabled]{background:#eaeaea !important; border-color:#c0c0c0 !important; color:#666 !important; -webkit-appearance:none;font-size:12px;}
	textarea[readonly],
	textarea[disabled]{padding:11px; font-size:16px; color:#666 !important; font-weight:normal; line-height:140%; height:78px; background:#eaeaea;border:1px solid #c0c0c0;}
	
	.clear { zoom:1;clear:both;}
	.clear:after { content:""; display:block; clear:both;}
	.hide { position: absolute; left: -5000px;}
	.skip { position:absolute; left:0; top:-100px; width: 100%; height: 50px; line-height: 50px; background:#000; color: #fff; text-align: center; font-size: 14px; transition:all 0.5s;}
	.skip:focus { top:0;}
	
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
	*{
	  font-family: 'GmarketSansMedium';
	}
	.main {
	  text-align: center;
	  margin: 130px auto 0;
	}
	.main a {
	  font-family: 'EF_watermelonSalad';
	  font-size: 40px;
	}
	.login { 
	  width: 410px; 
	  position: absolute; 
	  left: 50%; 
	  top: 50%;  
	  transform: translate(-50%, -50%); 
	  text-align: center;
	}
	.login h2 { 
	  padding:0 0 20px; 
	  border-bottom: 2px solid #262614; 
	  text-align: left; 
	  line-height:1; 
	  font-size: 26px; 
	  color: #262614;
	}
	.login .first { 
	  padding: 40px 0 33px;
	}
	.login .first li { 
	  padding:0 0 12px; 
	  text-align: left;
	}
	.login .first li input { 
	  width: 100%; 
	  height: 46px; 
	  box-sizing: border-box; 
	  text-indent: 16px;
	}
	.login .first li input::-webkit-input-placeholder { 
	  font-size:16px; 
	  color:#9fa19f;
	}
	.login .first li input[type="checkbox"] { 
	  position:absolute; 
	  left: -3000%;
	}
	.login .first li input[type="checkbox"] + label { 
	  height: 36px; line-height: 36px;
	}
	.login .first li input[type="checkbox"] + label:before { 
	  content: ""; 
	  display:inline-block; 
	  margin:0 10px 0 0; 
	  width: 18px; 
	  height: 18px; 
	  border:1px solid #666; 
	  background:#fff;
	  vertical-align: -5px;
	}
	.login .first li input[type="checkbox"]:checked + label:before {
	  background: url(${ctp}/images/login/ico_check_on.png) no-repeat center #3C401C;
	  border-color:#333;
	}
	.login button { 
	  width: 100%;
	  height: 56px; 
	  background:#9FA66A; 
	  font-size: 18px; 
	  color:#fff;
	  cursor:pointer;
	}
	.sub { 
	  padding: 0 0 25px;
	}
	.sub .second { 
	  display: flex;
	  justify-content: center;
	  align-items: center;
	}
	.sub .second li { 
	  position: relative; 
	  padding: 0 18px;
	}
	.sub .second li ~ li:after { 
	  content: ""; 
	  position: absolute; 
	  left: 0; 
	  top: 4px; 
	  height:14px; 
	  width: 1px; 
	  background: #262614; 
	  transform: rotate(0deg);
	}
	.sub .second li a { 
	  font-size: 14px;
	  color:#262614;
	}
  
  </style>
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
	      <li><input type="text" name="mid" id="mid" value="${mid}" placeholder="아이디" title="아이디입력"></li>
	      <li><input type="password" name="pwd" id="pwd" placeholder="비밀번호" title="비밀번호입력"></li>
	      <li><input type="checkbox" name="chk_id" id="chk_id" checked><label for="chk_id">아이디저장</label></li>
	      <li><button type="submit">로그인</button></li>
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