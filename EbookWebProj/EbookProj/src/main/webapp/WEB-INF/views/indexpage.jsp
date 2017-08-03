<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

	<!-- header.jsp 시작 -->
	<%@ include file="./header.jsp"%>
	<!-- header.jsp 끝 -->
 <style>
 .container { margin-top: 20px; }
.mb20 { margin-bottom: 20px; } 

hgroup { padding-left: 15px; border-bottom: 1px solid #ccc; }
hgroup h1 { font: 500 normal 1.625em "Roboto",Arial,Verdana,sans-serif; color: #2a3644; margin-top: 0; line-height: 1.15; }
hgroup h2.lead { font: normal normal 1.125em "Roboto",Arial,Verdana,sans-serif; color: #2a3644; margin: 0; padding-bottom: 10px; }

.search-result .thumbnail { border-radius: 0 !important; }
.search-result:first-child { margin-top: 0 !important; }
.search-result { margin-top: 20px; }
.search-result .col-md-2 { border-right: 1px dotted #ccc; min-height: 140px; }
.search-result ul { padding-left: 0 !important; list-style: none;  }
.search-result ul li { font: 400 normal .85em "Roboto",Arial,Verdana,sans-serif;  line-height: 30px; }
.search-result ul li i { padding-right: 5px; }
.search-result .col-md-7 { position: relative; }
.search-result h3 { font: 500 normal 1.375em "Roboto",Arial,Verdana,sans-serif; margin-top: 0 !important; margin-bottom: 10px !important; }
.search-result h3 > a, .search-result i { color: #248dc1 !important; }
.search-result p { font: normal normal 1.125em "Roboto",Arial,Verdana,sans-serif; } 
.search-result span.plus { position: absolute; right: 0; top: 126px; }
.search-result span.plus a { background-color: #248dc1; padding: 5px 5px 3px 5px; }
.search-result span.plus a:hover { background-color: #414141; }
.search-result span.plus a i { color: #fff !important; }
.search-result span.border { display: block; width: 97%; margin: 0 15px; border-bottom: 1px dotted #ccc; }
    
    .btn-glyphicon { padding:8px; background:#ffffff; margin-right:4px; }
.icon-btn { padding: 1px 15px 3px 2px; border-radius:50px;}
   
   /* FONT AWESOME & not necessary for functions */
@import url('http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css');

body {
    padding-top: 15px;
    background-color: #f9f9f9;
}

/*REQUIRED*/
.carousel-row {
    margin-bottom: 10px;
}

.slide-row {
    padding: 0;
    background-color: #ffffff;
    min-height: 150px;
    border: 1px solid #e7e7e7;
    overflow: hidden;
    height: auto;
    position: relative;
}


.slide-carousel {
    width: 20%;
    float: left;
    display: inline-block;
}

.slide-carousel .carousel-indicators {
    margin-bottom: 0;
    bottom: 0;
    background: rgba(0, 0, 0, .5);
}

.slide-carousel .carousel-indicators li {
    border-radius: 0;
    width: 20px;
    height: 6px;
}

.slide-carousel .carousel-indicators .active {
    margin: 1px;
}

.slide-content {
    position: absolute;
    top: 0;
    left: 20%;
    display: block;
    float: left;
    width: 80%;
    max-height: 76%;
    padding: 1.5% 2% 2% 2%;
    overflow-y: auto;
}

.slide-content h4 {
    margin-bottom: 3px;
    margin-top: 0;
}

.slide-footer {
    position: absolute;
    bottom: 0;
    left: 20%;
    width: 78%;
    height: 20%;
    margin: 1%;
}

/* Scrollbars */
.slide-content::-webkit-scrollbar {
  width: 5px;
}
 
.slide-content::-webkit-scrollbar-thumb:vertical {
  margin: 5px;
  background-color: #999;
  -webkit-border-radius: 5px;
}
 
.slide-content::-webkit-scrollbar-button:start:decrement,
.slide-content::-webkit-scrollbar-button:end:increment {
  height: 5px;
  display: block;
} 
 </style>
  </head>
  
  <body>
  
 <div class="container">

    <hgroup class="mb20">
		<h1>Search Results</h1>
		<h2 class="lead"><strong class="text-danger">1</strong> result was found for the search for <strong class="text-danger">Book</strong></h2>								
	</hgroup>

    <section class="col-xs-12 col-sm-6 col-md-12">
		<article class="search-result row">
			
<div class="container">
    <!-- Begin of rows -->
    <div class="row carousel-row">
        <div class="col-xs-8 col-xs-offset-2 slide-row">
            <div id="carousel-2" class="carousel slide slide-carousel" data-ride="carousel">
            
              <!-- Wrapper for slides -->
              <div class="carousel-inner">
                <div class="item active">
                <img src="./resources/imgs/sample.png" alt="9PixelStudio"> </a>
                </div>
    
              </div>
            </div>
            <div class="slide-content">
            <h4><a href="#myModal" data-toggle="modal" title="">Title, Booknum</a></h4>
                <p>        
				genrenum, author, likecnt, content
                </p>
            </div>
            <div class="slide-footer">
                <span class="pull-right buttons">
            
            	<!-- 로그인 안되어있을때 로그인 모달 띄움 -->
		    <c:if test="${loginUser == null }">
		       <a class="btn icon-btn btn-primary" href="#LoginModal" data-toggle="modal"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>Like</a>
		    </c:if> 
		    <!-- 로그인 되어있을때 좋아요 반영-->
		     <c:if test="${loginUser != null }">
		      <a class="btn icon-btn btn-primary" href="#LikeModal" data-toggle="modal"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>Like</a>
		    </c:if>
            
<a class="btn icon-btn btn-success" href="#"><span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span>Add</a>
            
                </span>
            </div>
        </div>
    </div>
        </div>
   </article>
   </section>
    </div>
   
	
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Book info</h4>
      </div>
      <div class="modal-body">
 <form role="form">  
    <div class="form-group">   
        <label for="Name">Content</label>  
    </div>    
           
    </form>
      </div>
      
    </div> <!-- 모달 콘텐츠 -->
  </div> <!-- 모달 다이얼로그 -->
</div> <!-- 모달 전체 윈도우 -->

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
							<button type="button" class="btn btn-default">회원가입</button>
						</div>
					</form>
				</div>
				<!-- 모달 콘텐츠 -->
			</div>
			<!-- 모달 다이얼로그 -->
		</div>
		<!-- 모달 전체 윈도우 -->
		
		<!-- LikeModal -->
		<div class="modal fade" id="LoginModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">좋아요에 반영되었습니다.</h4>
					</div>
				</div>
				<!-- 모달 콘텐츠 -->
			</div>
			<!-- 모달 다이얼로그 -->
		</div>
		<!-- 모달 전체 윈도우 -->

      

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    	<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->
  </body>
  
  
</html>