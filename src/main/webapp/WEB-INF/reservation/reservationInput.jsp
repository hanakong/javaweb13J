<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>[무화과농장]행사 등록</title>
  <jsp:include page="/include/bs4.jsp" />
  <style>
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
		  background-image: url(${ctp}/images/reservation/banner-r.jpg);
		  height: 350px;
		}
		.container > h2 {
			margin : 30px 0 50px;
		}
  </style>
  <script>
    'use strict';
    
    function fCheck() {
    	let content = myform.content.value; //글 내용 값
    	
    	let fName = document.getElementById("file").value; //파일 이름
			let ext = fName.substring(fName.lastIndexOf(".")+1).toUpperCase(); //확장자
			let maxSize = 1024 * 1024 * 10; // 업로드 가능파일은 10MByte까지로 한다.
			let fileSize = document.getElementById("file").files[0].size;
			
    	if(content.trim() == "") {
    		alert("게시글 내용을 입력해주세요");
    		myform.content.focus();
    	}
    	else if(fName.trim() == "") {
    		alert("사진을 업로드해주세요");
    	}
			else if(ext != "JPG" && ext != "GIF" && ext != "PNG" && ext != "JPEG") {
				alert("업로드 가능한 파일은 'jpg/gif/png/jpeg' 입니다.");
			}
			else if(fileSize > maxSize) {
				alert("업로드할 파일의 최대용량은 10MByte 입니다.")
			}
    	else {
    		myform.submit();
    	}
    }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<div class="review-img-box">
    <div class="review-img"></div>
</div>
<div class="container">
  <h2 class="text-center">행사 등록</h2>
  <form name="myform" method="post" action="${ctp}/ReservationInputOk.res" enctype="multipart/form-data">
    <table class="table table-bordered">
      <tr>
        <th class="text-center">행사명</th>
        <td>
        	<input type="text" name="title" id="title" class="form-control" />
        </td>
      </tr>
      <tr>
        <th class="text-center">행사 참가비</th>
        <td>
        	<input type="text" name="price" id="price" class="form-control" />
        </td>
      </tr>
      <tr>
        <th class="text-center">행사 시작일</th>
        <td>
        	<input type="date" name="startDate" id="startDate" class="form-control" />
        </td>
      </tr>
      <tr>
        <th class="text-center">행사 마감일</th>
        <td>
        	<input type="date" name="endDate" id="endDate" class="form-control" />
        </td>
      </tr>
      <tr>
	      <th class="text-center">행사 이미지</th> 
		    <td>
			    <input type="file" name="fName" id="file" class="form-control-file border mb-2">
		    </td>
	    </tr>
      <tr>
        <th class="text-center">행사 소개글</th>
        <td><textarea rows="6" name="content" class="form-control" required></textarea></td>
      </tr>
      <tr>
        <td colspan="2" class="text-center">
          <input type="button" value="행사 모집하기" onclick="fCheck()" class="btn btn-primary"/> &nbsp;
          <input type="button" value="돌아가기" onclick="location.href='${ctp}/ReservationList.res';" class="btn btn-secondary"/>
        </td>
      </tr>
    </table>
  </form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>