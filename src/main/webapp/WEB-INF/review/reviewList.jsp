<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
			justify-content: flex-end;
			align-items: first baseline;
		}
		.review-content .review-content-top .review-content-top-writer {
			margin-right: 10px;
		}
			
	</style>
	<title>후기</title>
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
  <div class="big-container">
    <div class="container">
      <div class="review-container">
        <div class="review-container-head">
          <div class="head-menu">
            <div><input type="button" value="수정" /></div>
            <div><input type="button" value="삭제" /></div>
          </div>
          <div class="hostIP">IP : 0.0.0.0</div>
        </div>
        <div class="review-box">
          <div class="review-box-img"><img src="${ctp}/images/review/default.png" /></div>
          <div class="review-content">
            <div class="review-content-top">
              <div class="review-content-top-writer">글 작성자</div>
              <div class="review-content-top-date">2023.05.25</div>
            </div>
            <div class="review-content-btm">
              내용적는곳 내용적는곳 내용적는곳 내용적는곳 내용적는곳
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>