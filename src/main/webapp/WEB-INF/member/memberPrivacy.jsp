<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>memberMain.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
  <style>
  .privacy-img-box {
	  width: 75%;
	  margin: 0 auto 0;
	  justify-content: center;
	  align-items: center;
  }
  .privacy-img {
	  width: 100%;
	  margin: 40px 0 40px;
	  background-size: cover;
	  background-repeat: no-repeat;
	  background-image: url(${ctp}/images/privacy/banner-pri.jpg);
	  height: 400px;
	}
	  .container-box {
	    width: 75%;
	    margin: 0 auto 0;
	    justify-content: center;
	    display: grid;
	    grid-template-columns: 1fr 4.5fr;
	    column-gap: 100px;
	  }
	  .container1 {
	    width : 200px;
	    height: 700px;
	    text-align: center;
	    background-color: #D9D9D9;
	  }
	  .container1 div {
	    margin: 20px 0 20px;
	    font-size: 20px;
	  }
	  .container2 {
	    text-align: left;
	    width: 400px;
	  }
	  .container2-inner1 .h2_line {
	    width : 150px;
	    margin: 0 auto 20px;
	    text-align: center;
	  }
	  .container2 {
	    font-size: 17px;
	  }
	  .container2-inner2 > h4 {
	    margin : 20px 0 10px;
	    font-size: 21px;
	  }
	  .container2 > h2 {
	    text-align: center;
	    font-size: 25px;
	    margin-top: 20px;
	  }
	  .gap {
	    height: 200px;
	  }
	  .inner-f {
	    color: #B7BF99;
	    font-size: 21px;
	  }
  </style>
  <script>
	  function deleteAsk() {
		  let ans = confirm("정말로 탈퇴하시겠습니까?");
		  if(ans) {
			  let ans2 = confirm("탈퇴 후 같은 아이디로 1개월간 재가입하실수 없습니다.\n그래도 탈퇴 하시겠습니까?");
			  if(ans2) location.href="${ctp}/MemberDeleteAsk.mem";
		  }
	  }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<div class="privacy-img-box">
	<div class="privacy-img"><img></div>
</div>
<div class="container-box">
  <div class="container1">
    <div class="pwd-ch">비밀번호 변경</div>
    <div class="privacy-ch">정보 수정</div>
    <div class="withdrawal-me"><a href="javascript:deleteAsk()">회원 탈퇴</a></div>
  </div>
  <div class="container2">
    <h2><b>개인 정보</b></h2>
    <div class="container2-inner1">
		  <hr class="h2_line"/>
		  <div id="memberInfo1">
		    <p>현재 <font class="inner-f">${sNickName}</font> 님 로그인 중</p>
		    <p>최종 방문일자 : <span class="viewCheck"><font class="inner-f">${fn:substring(sLastDate,0,fn:length(sLastDate)-5)}</font></span></p>
		  </div>
    </div>
    <div class="container2-inner2">
    	<h4><b>활동내역</b></h4>
		  <p>공지사항에 작성한 댓글 : <span class="viewCheck"><font class="inner-f">${guestCnt}</font></span> 건</p>
		  <p>후기에 작성한 글 : <span class="viewCheck">
		                       <c:if test="${boardCnt == 0}"><font class="inner-f">${boardCnt}</font></c:if>
		                       <c:if test="${boardCnt != 0}"><a href="${ctp}/BoardSearchMember.bo"><font class="inner-f">${boardCnt}</font></a></c:if>
		                     </span>건</p>
		  <p>후기에 작성한 댓글 : <span class="viewCheck"><font class="inner-f">${pdsCnt}</font></span> 건</p>
    </div>
  </div>
  <div class="gap"></div>
</div>
	  
<jsp:include page="/include/footer.jsp" />
</body>
</html>