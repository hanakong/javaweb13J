<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberJoin.jsp</title>
  <style type="text/css">
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
	  margin: 70px 0 0px;
	  text-align: center;
	}
	.main a {
	  font-family: 'EF_watermelonSalad';
	  font-size: 40px;
	}
	
	.join { 
	  width: 410px; 
	  position: absolute; 
	  left: 50%; 
	  top: 50%;  
	  transform: translate(-50%, -50%); 
	  text-align: center;
	  margin-top: 5%;
	}
	.join h2 { 
	  padding:0 0 20px; 
	  border-bottom: 2px solid #262614; 
	  text-align: left; 
	  line-height:1; 
	  font-size: 26px; 
	  color: #262614;
	}
	.id-box {
	  display: flex;
	}
	.id-box #midBtn {
	  width: 140px;
	  height: 46px; 
	  background:#9FA66A; 
	  font-size: 16px; 
	  color:#fff;
	}
	.nick-box {
	  display: flex;
	}
	.nick-box #nickBtn {
	  width: 140px;
	  height: 46px; 
	  background:#9FA66A; 
	  font-size: 16px; 
	  color:#fff;
	}
	.tel-box {
	  display: flex;
	  justify-content: space-between;
	}
	.join .first li {
	  font-size: 15px;
	  padding-bottom: 15px;
	}
	.join .first { 
	  padding: 50px 0 33px;
	}
	.join .first li { 
	  padding:0 0 15px; 
	  text-align: left;
	}
	.join .first li input { 
	  width: 100%; 
	  height: 46px; 
	  box-sizing: border-box; 
	  text-indent: 16px;
	}
	#mid {
	  width: 300px;
	}
	#nickName {
	  width: 300px;
	}
	#nickBtn {
	  text-align: center;
	}
	#midBtn {
	  text-align: center;
	}
	.join .first li input::-webkit-input-placeholder { 
	  font-size:16px; 
	  color:#9fa19f;
	}
	.input input { 
	  width: 100%;
	  padding: 10px 0 40px;  
	  background:#9FA66A; 
	  font-size: 18px; 
	  color:#fff;
	  text-align: center;
	}
	.join .tel-box { 
	  width: 100%; 
	  height: 46px; 
	  box-sizing: border-box; 
	  text-indent: 16px;
	  margin-bottom: 20px;
	}
	  
  </style>
  <script>
    'use strict';
    // 아이디와 닉네임 중복버튼을 클릭했는지의 여부를 확인하기위한 변수(버튼 클릭후에는 내용 수정처리 못하도록 처리)
    let idCheckSw = 0;
    let nickCheckSw = 0;
    
    function fCheck() {
    	// 유효성 검사.....
    	// 아이디,닉네임,성명,이메일,홈페이지,전화번호,비밀번호 등등....
    	let regMid = /^[a-zA-Z0-9]{4,20}$/;
    	let regPwd = /(?=.*[0-9a-zA-Z]).{4,20}$/;
      let regNickName = /^[가-힣]+$/;
      let regName = /^[가-힣a-zA-Z]+$/;
    	let regTel = /\d{2,3}-\d{3,4}-\d{4}$/g;
    	
    	let mid = myform.mid.value.trim();
    	let pwd = myform.pwd.value;
    	let pwd1 = myform.pwd1.value;
    	let nickName = myform.nickName.value;
    	let name = myform.name.value;
    	let tel1 = myform.tel1.value.trim();
    	let tel2 = myform.tel2.value.trim();
    	let tel3 = myform.tel3.value.trim();
    	let tel = tel1 + "-" + tel2 + "-" + tel3;
    	
    	let submitFlag = 0;		// 모든 체크가 정상으로 종료되게되면 submitFlag는 1로 변경처리될수 있게 한다.
    	
    	// 앞의 정규식으로 정의된 부분에 대한 유효성체크
    	if(!regMid.test(mid)) {
    		alert("아이디는 4~20자리 이내의 영문 소/대문자와 숫자만 사용가능합니다.");
    		myform.mid.focus();
    		return false;
    	}
      else if(!regNickName.test(nickName)) {
        alert("닉네임은 한글만 사용가능합니다.");
        myform.nickName.focus();
        return false;
      }
      else if(!regName.test(name)) {
        alert("성명은 한글과 영문대소문자만 사용가능합니다.");
        myform.name.focus();
        return false;
      }
    	else if(!regPwd.test(pwd)) {
        alert("비밀번호는 영문자와 숫자 조합의 4~20자리 이내로 작성해주세요.");
        myform.pwd.focus();
        return false;
      }
      else if(pwd != pwd1) {
    	  alert("비밀번호가 일치하지 않습니다.");
    	  myform.pwd1.focus();
    	  return false;
      }
      else if(tel1 != "" && tel2 != "" && tel3 != "") {
    	  if(!regTel.test(tel)) {
	    		alert("전화번호 형식을 확인해주세요.");
	    		myform.tel1.focus();
	    		return false;
    	  }
    	  else {
    		  submitFlag = 1;
    	  }
    	}
    	// 전송전에 모든 체크가 끝나면 submitFlag가 1로 되게된다. 이때 값들을 서버로 전송처리한다.
    	if(submitFlag == 1) {
    		if(idCheckSw == 0) {
    			alert("아이디 중복체크버튼을 눌러주세요.");
    			document.getElementById("midBtn").focus();
    		}
    		else if(nickCheckSw == 0) {
    			alert("닉네임 중복체크버튼을 눌러주세요.");
    			document.getElementById("nickBtn").focus();
    		}
    		else {
	    		myform.tel.value = tel;
		    	myform.submit();
    		}
    	}
    	else {
    		alert("회원가입에 실패하였습니다. //n입력하신 내용을 다시한번 확인해주세요.");
    	}
    }
    // 아이디 중복체크
    function idCheck() {
    	let mid = myform.mid.value;
    	let url = "${ctp}/MemberIdCheck.mem?mid="+mid;
    	
    	if(mid.trim() == "") {
    		alert("아이디를 입력해주세요");
    		myform.mid.focus();
    	}
    	else {
    		idCheckSw = 1;
    		myform.mid.readOnly = true;
    		window.open(url,"nWin","width=460px, height=260px, left=200px, top=200px");
    	}
    }
    // 닉네임 중복체크
    function nickCheck() {
    	let nickName = myform.nickName.value;
    	let url = "${ctp}/MemberNickCheck.mem?nickName="+nickName;
    	
    	if(nickName.trim() == "") {
    		alert("닉네임을 입력해주세요");
    		myform.nickName.focus();
    	}
    	else {
    		nickCheckSw = 1;
    		myform.nickName.readOnly = true;
    		window.open(url,"nWin","width=460px, height=260px, left=200px, top=200px");
    	}
    }
    
  </script>
</head>
<body>
  <form name="myform" method="post" action="${ctp}/MemberJoinOk.mem" class="was-validated">
    <header>
			<div class="main"><a href="${pageContext.request.contextPath}/index.jsp">무화과 농장</a></div>
		</header>
	  <div class="join">
	    <h2>회원가입</h2>
	    <ul class="first">
				<li>아이디
					<span class="id-box">
						<input type="text" name="mid" id="mid" placeholder="아이디" title="아이디 입력" autofocus />
						<input type="button" id="midBtn" value="아이디 확인" onclick="idCheck()" />
					</span>
				</li>
	      <li>
					닉네임(한글만 입력 가능)
					<span class="nick-box">
						<input type="text" name="nickName" id="nickName" placeholder="닉네임" title="닉네임 입력"/>
						<input type="button" id="nickBtn" value="닉네임 확인" onclick="nickCheck()" />
					</span>
				</li>
	      <li>
					이름
					<input type="text" name="name" id="name" placeholder="이름" title="이름 입력" />
				</li>
	      <li>
					비밀번호
					<input type="password" name="pwd" id="pwd" placeholder="비밀번호" title="비밀번호 입력" />
				</li>
	      <li>
					비밀번호 확인
					<input type="password" name="pwd1" id="pwd1" placeholder="비밀번호 확인" title="비밀번호 재입력" />
				</li>
	      <li>
					연락처
					<span class="tel-box">
						<input name="tel1" type="tel" placeholder="010"  title="연락처 입력" />
						<input name="tel2" type="tel" placeholder="0000" title="연락처 입력" />
						<input name="tel3" type="tel" placeholder="0000" title="연락처 입력" />
					</span>
				</li>
	      <li class="input"><input type="button" value="회원가입" onclick="fCheck()" /></li>
	    </ul>
	  </div>
	  <input type="hidden" name="tel"/>
  </form>
</body>
</html>