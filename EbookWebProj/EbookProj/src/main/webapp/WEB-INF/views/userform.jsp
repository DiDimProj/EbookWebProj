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
유저 목록
	<table class="table">
 
  <thead>
   <tr>
    <th> 아이디 </th>
    <th> 비밀번호 </th>
    <th> 이름 </th>
   	<th> 나이 </th>
   	<th> 전화번호 </th>
   	<th> 장르번호 </th>
   	<th> 관리자 </th>
   </tr>
   </thead>
   <c:forEach items="${lists}" var="user" >
	   <tr>
	  
	     <td>${user.userid}</td>
	     <td>${user.password}</td>
	     <td>${user.name}</td>
	     <td>${user.age}</td>
	     <td>${user.genrenum}</td>
	     <c:if test ="${user.admin != 1}">
		     <td>
		  	   <a href="toadmin.do?userid=${user.userid}">
		 	    관리자 전환
		 	   </a>
		 	  </td>
	 	  </c:if>
	 	  <td>
		  	   <a href="deluser.do?userid=${user.userid}">
		 	    탈퇴
		 	   </a>
		 	  </td>
	   </tr>
	   
   </c:forEach>
 </table>
	</div>
</body>
</html>