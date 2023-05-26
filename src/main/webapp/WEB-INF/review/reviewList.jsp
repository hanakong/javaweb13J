<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<title>[무화과농장] 후기</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<style>
		.box-head {
			width: 60%;
			margin: 0 auto 0;
			justify-content: center;
			align-items: center;
		}
		.box-head-top {
			width: 200px;
			text-align: center;
			margin: 100px auto 5px;
		}
		.box-head-title {
			text-align: center;
			font-size: 25px;
		}
		.box-head-btm {
			width: 200px;
			text-align: center;
			margin: 3px auto 40px;
		}
		.write {
			margin-bottom: 50px;
			font-size: 18px;
		}
		.write img {
			width: 15px;
			height: 15px;
		}
	
	  .review-img-box {
		  width: 75%;
		  margin: 0 auto 0;
		  justify-content: center;
		  align-items: center;
	  }
	  .review-img {
		  width: 100%;
		  margin: 40px 0 40px;
		  background-size: cover;
		  background-repeat: no-repeat;
		  background-image: url(${ctp}/images/review/banner-r.jpg);
		  height: 350px;
		}
		.review-container-head {
			display: flex;
			justify-content: space-between;
		}
		
		.head-menu {
			display: flex;
			justify-content: end;
			align-items: center;
		}
		.head-menu div {
			position: relative;
			padding: 0 10px 0;
			font-size: 19px;
		}
		.head-menu div ~ div:after { 
			content: ""; 
			position: absolute; 
			left: 0; 
			top: 4px; 
			height:14px; 
			width: 1px; 
			background: #262614; 
			transform: rotate(0deg);
		}
		.head-menu div input { 
			cursor: pointer;
			padding: 3px 10px ;
			background-color: #fff;
		}
		.hostIP {
			text-align: right;
		}
		.big-container {
			width: 60%;
			margin: 0 auto 30px;
			justify-content: center;
		}
		.container {
			width: 100%;
			margin: 0 auto 30px;
			justify-content: center;
		}
		.review-container {
			width: 100%
			margin: 0 auto 30px;
			justify-content: center;
		}
		.review-box {
			display: grid;
			justify-content: center;
			grid-template-columns: 1fr 3fr;
			border: 1px dotted rgba(0, 0, 0, .3);
		}
		.review-box .review-box-img img{
			padding: 10px;
			border-right: 1px dotted rgba(0, 0, 0, .3);
			width: 250px;
			height: 250px;
		}
		.review-box .review-content {
			padding: 20px;
			display: grid;
			grid-template-rows: 1fr 3fr;
		}
		.review-content .review-content-top {
			margin: 0;
			display: flex;
			justify-content: space-between;
			align-items: first baseline;
		}
		.review-content .review-content-top .review-content-top-writer {
			margin-right: 10px;
		}
	</style>
	<script>
	  'use strict';
	  
	  function reviewDelete(idx) {
		  let ans = confirm("삭제하시겠습니까?");
		  if(!ans) return false;
		  
		  $.ajax({
			  type : "post",
			  url  : "${ctp}/ReviewDelete.rev",
			  data : {idx : idx},
			  success:function(res) {
				  if(res = 1) {
					  alert("삭제되었습니다.");
					  location.reload();
				  }
				  else {
					  alert("삭제 실패하였습니다.");
				  }
			  },
			  error : function() {
				  alert("전송 실패!~");
			  }
		  });
	  }
	</script>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<div class="review-img-box">
    <div class="review-img"></div>
  </div>
  <div class="box-head">
    <hr class="box-head-top" />
    <div class="box-head-title">후기</div>
    <hr class="box-head-btm" />
    <div class="write"><a href="${ctp}/ReviewInput.rev"><img src="${ctp}/images/review/b-wr.jpg" alt="후기 글 작성"> 후기 작성</a></div>
  </div>
  <!-- 반복구간 -->
  <c:forEach var="vo" items="${vos}" varStatus="st">
	  <div class="big-container">
	    <div class="container">
	      <div class="review-container">
          <div class="reveiw-content-top-idx" style="visibility: hidden">${vo.idx}</div>
	        <div class="review-container-head">
	          <c:if test="${sLevel == 0 || sMid == vo.mid}"><div class="head-menu">
	            <div><input type="button" value="수정" /></div>
	            <div><input type="button" value="삭제" onclick="reviewDelete(${vo.idx})" /></div>
	          </div></c:if>
	           <c:if test="${sLevel == 0}"><div class="hostIP">${vo.hostIP}</div></c:if>
	        </div>
	        <div class="review-box">
	          <div class="review-box-img"><img src="${ctp}/images/imgDB/${vo.photoImg}" /></div>
	          <div class="review-content">
	            <div class="review-content-top">
	              <div class="review-content-top-date">${fn:substring(vo.wDate,0,16)}</div>
	              <div class="review-content-top-writer">${vo.nickName}</div>
	            </div>
	            <div class="review-content-btm">
	              ${vo.content}
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
  </c:forEach>
  <!-- 반복구간 끝! -->
	<jsp:include page="/include/footer.jsp" />
</body>
</html>