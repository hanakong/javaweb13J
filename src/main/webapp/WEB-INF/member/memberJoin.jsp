<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberJoin.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
  <link rel="stylesheet" href="${ctp}/css/default.css">
  <link rel="stylesheet" href="${ctp}/css/join.css">
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
    		window.open(url,"nWin","width=580px,height=250px");
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
    		window.open(url,"nWin","width=580px,height=250px");
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