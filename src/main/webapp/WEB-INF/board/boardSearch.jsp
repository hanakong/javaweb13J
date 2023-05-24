<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>boardSearch.jsp</title>
  <jsp:include page="/include/bs4.jsp" />
  <style>
	  .board-img-box {
		  width: 75%;
		  margin: 0 auto 0;
		  justify-content: center;
		  align-items: center;
	  }
	  .board-img {
		  width: 100%;
		  margin: 40px 0 40px;
		  background-size: cover;
		  background-repeat: no-repeat;
		  background-image: url(${ctp}/images/board/banner-a.jpg);
		  height: 350px;
		}
		.search-item {
			font-size: 20px;
  		color: #9FA66A;
  		font-weight: 900;
		}
		.btn1 {
			color : #000;
			align-item : center;
			cursor : pointer;
		}
		.table-m1 {
			background-color: #D9D9D9;
		}
		.search-item1 {
			cursor : pointer;
		}
		.search-hr {
			width : 250px;
			margin : 0 auto 0;
			text-align : center;
			justify-contents : center;
		}
		#b-arrow{
			width : 15px;
			height : 15px;
			align-items : center;
		}
		.b-back {
			display : flex;
		}
		
  </style>
  <script>
    'use strict';
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<div class="board-img-box">
	<div class="board-img"></div>
</div>
<div class="container">
  <h3 class="text-center">검색 결과</h3>
  <hr class="search-hr"/>
  <div class="text-center mt-2">
  	<font class="search-item">${searchString}</font> (을)를 검색한 결과 <font class="search-item">${searchCount}</font> 건이 검색되었습니다.
  </div>
  <br/>
  <table class="table table-borderless m-0 p-0">
    <tr>
      <td class="b-back"><a href="${ctp}/BoardList.bo?pag=${pag}&pageSize=${pageSize}" class="btn1"><img id="b-arrow" src="${ctp}/images/board/arrow.png"> 돌아가기</a></td>
    </tr>
  </table>
  <table class="table table-hover text-center">
    <tr class="table-m1 text-dark">
      <th>글번호</th>
      <th>글제목</th>
      <th>글쓴이</th>
      <th>글쓴날짜</th>
      <th>조회수</th>
    </tr>
    <c:forEach var="vo" items="${vos}" varStatus="st">
      <tr>
        <td>${searchCount}</td>
        <td>
          <a class="search-item1" href="${ctp}/BoardContent.bo?flag=search&search=${search}&searchString=${searchString}&idx=${vo.idx}&pag=${pag}&pageSize=${pageSize}">${vo.title}</a>
          <c:if test="${vo.hour_diff <= 24}"><img src="${ctp}/images/board/new1.png"/></c:if>
        </td>
        <td>${vo.nickName}</td>
        <td>
          <c:if test="${vo.hour_diff > 24}">${fn:substring(vo.wDate,0,10)}</c:if>
          <c:if test="${vo.hour_diff <= 24}">
            ${vo.day_diff == 0 ? fn:substring(vo.wDate,11,19) : fn:substring(vo.wDate,0,16)}
          </c:if>
        </td>
        <td>${vo.readNum}</td>
      </tr>
      <c:set var="searchCount" value="${searchCount - 1}"/>
    </c:forEach>
    <tr><td colspan="6" class="m-0 p-0"></td></tr>
  </table>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>