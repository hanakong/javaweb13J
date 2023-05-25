<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>공지사항 글 작성</title>
  <jsp:include page="/include/bs4.jsp" />
  <style>
  </style>
  <script>
    'use strict';
    
    function fCheck() {
    	let title = myform.title.value;
    	let content = myform.content.value;
    	
    	let fName = document.getElementById("file").value; //파일 이름
			let ext = fName.substring(fName.lastIndexOf(".")+1).toUpperCase(); //확장자
			let maxSize = 1024 * 1024 * 10; // 업로드 가능파일은 10MByte까지로 한다.
			let fileSize = document.getElementById("file").files[0].size;
			
    	if(title.trim() == "") {
    		alert("게시글 제목을 입력해주세요");
    		myform.title.focus();
    	}
    	else if(content.trim() == "") {
    		alert("게시글 내용을 입력해주세요");
    		myform.content.focus();
    	}
			else if(fName.trim() == "") {
				alert("업로드할 파일을 선택하세요");
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
<p><br/></p>
<div class="container">
  <h2 class="text-center">후기 작성</h2>
  <form name="myform" method="post" action="${ctp}/ReviewInputOk.rev" enctype="multipart/form-data">
    <table class="table table-bordered">
      <tr>
        <th>글쓴이</th>
        <td>${sNickName}</td>
      </tr>
      <tr>
        <th>글제목</th>
        <td><input type="text" name="title" id="title" placeholder="글제목을 입력하세요" autofocus required class="form-control"></td>
      </tr>
      <tr>
	      <th>파일명</th> 
		    <td>
			    <input type="file" name="fName" id="file" class="form-control-file border mb-2">
		    </td>
	    </tr>
      <tr>
        <th>글내용</th>
        <td><textarea rows="6" name="content" class="form-control" required></textarea></td>
      </tr>
      <tr>
        <td colspan="2" class="text-center">
          <input type="button" value="글올리기" onclick="fCheck()" class="btn btn-primary"/> &nbsp;
          <input type="button" value="돌아가기" onclick="location.href='${ctp}/ReviewList.rev';" class="btn btn-secondary"/>
        </td>
      </tr>
    </table>
    <!-- 혹여 해킹당했을 경우를 대비하여 ip를 넣었다!? -->
    <input type="hidden" name="hostIP" value="${pageContext.request.remoteAddr}"/>
    <img src="${ctp}/images/imgDB/6.jpg">
  </form>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>