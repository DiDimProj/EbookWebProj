<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<!-- header.jsp 시작 -->
	<%@ include file="./header.jsp"%>
	<!-- header.jsp 끝 -->

  <body>
  
  <h1> 검색 페이지 </h1>
<P>

<div class="container">
<a class="btn icon-btn btn-default" href="#"><span class="glyphicon btn-glyphicon glyphicon-save img-circle text-muted"></span>Download</a>
<a class="btn icon-btn btn-muted" href="#"><span class="glyphicon btn-glyphicon glyphicon-remove-circle img-circle text-muted"></span>Unavailable</a>
<a class="btn icon-btn btn-primary" href="#"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>Like</a>
<a class="btn icon-btn btn-success" href="#"><span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span>Add</a>
<a class="btn icon-btn btn-info" href="#"><span class="glyphicon btn-glyphicon glyphicon-share img-circle text-info"></span>Share</a>
<a class="btn icon-btn btn-warning" href="#"><span class="glyphicon btn-glyphicon glyphicon-minus img-circle text-warning"></span>Remove</a>
<a class="btn icon-btn btn-danger" href="#"><span class="glyphicon btn-glyphicon glyphicon-trash img-circle text-danger"></span>Delete</a>
</div>
<!-- 좋아요 버튼 -->
  	<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->
</P>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  </body>
</html>