<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>[무화과농장] 예약</title>
	<style>
		.reservation-img-box {
		  width: 75%;
		  margin: 0 auto 0;
		  justify-content: center;
		  align-items: center;
	  }
	  .reservation-img {
		  width: 100%;
		  margin: 40px 0 40px;
		  background-size: cover;
		  background-repeat: no-repeat;
		  background-image: url(${ctp}/images/reservation/banner-r.jpg);
		  height: 350px;
		}
		.reservation-content-box {
			width: 75%;
			margin: 0 auto 0;
			justify-content: center;
		}
		.box-head-top {
			width: 200px;
			text-align: center;
			margin: 100px auto 5px;
		}
		.box-head-btm {
			width: 200px;
			text-align: center;
			margin: 5px auto 0px;
		}
		.content-box-head {
			text-align: center;
			font-size: 25px;
		}
		.header-s {
			width: 100%;
			margin: 40px 0 10px;
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
		.inner-btm {
			width: 100%;
		}
		.img-box-container {
			display: grid;
			grid-template-columns: repeat(4, 1fr);
			grid-template-rows: repeat(2, 1fr);
			justify-content : center;
		}
		.img-box {
			display: grid;
			margin: 25px 10px 15px;
			padding: 20px 0 20px;
			justify-content: center;
			text-align: center;
		}
		.img-box img {
			width : 320px;
			height : 320px;
		}
		.img-box-title {
			margin-top: 10px;
			font-size: 21px;
			color: #222333;
		}
		.img-box-date {
			margin-top: 5px;
			font-weight: bold;
			font-size: 16px;
		}
	</style>
	<script type="text/javascript">
		function ReservationDelete(myform.chk_res.val()) {
			let ans = confirm("삭제하시겠습니까?");
			if(!ans) return false;
			
			$.ajax({
				type : "post",
				url : "${ctp}/ReservationDelete.res",
				data : {idx : idx},
				success: function(res) {
					if(res = "1") {
						alert("삭제되었습니다.");
						location.reload();
					}
					else {
						alert("삭제 실패하였습니다.");
					}
				},
				error : function() {
					alert("전송에 문제가 있습니다.");
				}
			});
		}
	</script>
</head>
<body>
	<jsp:include page="/include/header.jsp" />
	<div class="reservation-img-box">
    <div class="reservation-img"></div>
  </div>
	<form name="myform" method="post" action="${ctp}/ReservationDelete.res">
	  <div class="reservation-content-box">
	    <hr class="box-head-top" />
	    <div class="content-box-head">진행중인 행사</div>
	    <hr class="box-head-btm" />
	    <c:if test="${sLevel == 0}"><div class="header-s">
		    <ul class="category-inner">
		      <li><a href="${ctp}/ReservationInput.res">행사등록</a></li>
		      <li><input type="submit" value="행사삭제"/></li>
		    </ul>
		  </div></c:if>
	    <div class="header-s">
		    <ul class="category-inner">
		      <li>날짜순</li>
		      <li>가격순</li>
		      <li>리뷰많은순</li>
		    </ul>
		  </div>
	    <hr class="inner-btm" />
	    <div class="img-box-container">
	<!-- 여기부터 -->
				<c:forEach var="vo" items="${vos}" varStatus="st" >
			    <div class="img-box">
			      <a href="${ctp}/ReservationContent.res"><img src="${ctp}/images/imgDB/${vo.photo}"></a>
			      <div class="img-box-title"><c:if test="${sLevel == 0}"><input type="radio" id="chk_res" name="chk_res" value="${vo.idx}" /></c:if> ${vo.title}</div>
			      <div class="img-box-date">
				      <fmt:parseDate value='${vo.startDate}' var='startDate' pattern='yyyy-MM-dd HH:mm:ss'/>
				      <fmt:formatDate value="${startDate}" pattern="yyyy.MM.dd"/> - 
				      <fmt:parseDate value='${vo.endDate}' var='endDate' pattern='yyyy-MM-dd HH:mm:ss'/>
				      <fmt:formatDate value="${endDate}" pattern="MM.dd"/>
			      </div>
			    </div>
		    </c:forEach>
	    
	<!-- 여기까지 반복 -->
	    </div>
	  </div>
  </form>
	<jsp:include page="/include/footer.jsp" />
</body>
</html>