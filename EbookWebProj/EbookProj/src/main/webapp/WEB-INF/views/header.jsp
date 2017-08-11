<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Check Chak (췍책)</title>
    <!-- Bootstrap -->
    <link href="./resources/css/bootstrap.min.css?ver=2" rel="stylesheet">
    <link href="./resources/css/kfonts2.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


<style>
.container-fixed {
  max-width: 480px;
}

.navbar-nav
{
float:right;
}

h3 a
{
font-size: 24pt;
}

.img_cover{
max-width: 150px;
  
}
</style>
<body>

<div id="wrapper">

<!-- <header>
	 -->
	<div class="container-fixed">
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    <a class="navbar-brand" href="main.do">Check chak</a>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
    	<li><a href="main.do">Home</a></li>

			<!-- 로그인 안되어있을때 로그인 모달 띄움 --> 
			<c:if test="${loginUser == null }">
				<li><a href="#LoginModal" data-toggle="modal"> login </a></li>
				</c:if>
			<!-- 로그인 되어있을때 수정해야한다 -->
			<c:if test="${loginUser != null }">
		      	<li><a href="logout.do"> logout</a></li>
		      	<li><a href="mypage.do?userid=${loginUser.userid}">Mypage</a>
		      		<c:if test="${loginUser.admin == 1 }">
		      			<li><a href="admin.do">admin</a>
		      		</c:if> 
		    </c:if> 
				</ul>
    </div><!--/.nav-collapse -->
  </div>
</div>
</div>
		<!-- LoginModal -->
		<div class="modal fade" id="LoginModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">로그인을 해주세요</h4>
					</div>
					<form action="login.do" method="post">
						<div class="modal-body">
								아이디<input type="text" class="form-control" name="userid"> 
								비밀번호<input type="password" class="form-control" name= "password"> 
								<!-- <input type="submit" value="로그인" > -->
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary" >로그인</button>
							<button type="button" class="btn btn-default" onclick="location.href='join.do'">회원가입</button>
						</div>
					</form>
				</div>
				<!-- 모달 콘텐츠 -->
			</div>
			<!-- 모달 다이얼로그 -->
		</div>
		<!-- 모달 전체 윈도우 -->