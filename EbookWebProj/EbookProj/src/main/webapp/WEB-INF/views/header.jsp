<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <!-- Bootstrap -->
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="./resources/css/header.css" rel="stylesheet">
    <link href="./resources/css/kfonts2.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    
  </head>
<script>
    function init() {
        window.addEventListener('scroll', function(e){
            var distanceY = window.pageYOffset || document.documentElement.scrollTop,
                shrinkOn = 300,
                header = document.querySelector("header");
        });
    }
    window.onload = init();
</script>
</head>
<body>

<div id="wrapper">

<header>
    <div class="container clearfix">
        <h1 id="logo">
            <img src="./resources/imgs/logo.png">
        </h1>
        <nav>
    		<!-- 로그인 안되어있을때 로그인 모달 띄움 -->
		    <c:if test="${loginUser == null }">
		       <a href="#LoginModal" data-toggle="modal"> login </a>
		    </c:if> 
		    <!-- 로그인 되어있을때 수정해야한다 -->
		     <c:if test="${loginUser != null }">
		       <a href="mypage.do"> Mypage</a>
		    </c:if> 
	
        </nav>
    </div>
</header><!-- /header -->

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
		
		<div id="main">
<div align="center" style ="padding-top: 10px; padding-bottom: 10px; background-color: #eae6d9; padding-left: 30%;padding-right: 30%;">

   <div class="input-group">
        <span class="input-group-addon"> <span class="glyphicon glyphicon-search"></span></span>            
        <input type="text" class="form-control">
         <span class="input-group-btn">   <button class="btn btn-default" type="button">Go!</button> </span>  
    </div> 
	</div>
