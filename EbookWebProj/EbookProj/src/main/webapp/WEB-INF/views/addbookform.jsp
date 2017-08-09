<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<!-- header.jsp 시작 -->
	<%@ include file="./header.jsp"%>
	<!-- header.jsp 끝 -->
	
<body>
<div class="container" style="padding-top:8%;">
책 추가 폼
	<form class="form-horizontal" action ="addbook.do" method="post">
		책번호 	<input type="text" name="booknum" class="form-control"> </br>
		제목		<input type="text" name="title" class="form-control"> </br>
		장르번호<input type="text" name="genrenum" class="form-control"> </br>
		작가		<input type="text" name="author" class="form-control"> </br>
		내용		<input type="text" name="content" class="form-control"> </br>
		<input type="submit" value="책추가">
	</form>
	

 <table class="table">
 
  <thead>
   <tr>
    <th> 책번호 </th>
    <th> 제목 </th>
    <th> 장르번호 </th>
   	<th> 작가 </th>
   	<th> 내용 </th>
   </tr>
   </thead>
   <c:forEach items="${lists}" var="bookVO" >
	   <tr>
	  
	     <td>${bookVO.booknum}</td>
	     <td>${bookVO.title}</td>
	     <td>${bookVO.genrenum}</td>
	     <td>${bookVO.author}</td>
	     <td>${bookVO.content}</td>
	     <td>
	  	   <a href="delbook.do?booknum=${bookVO.booknum}">
	 	    삭제
	 	   </a>
	 	  </td>
	   </tr>
	   
   </c:forEach>
 </table>
	</div>
</body>
</html>