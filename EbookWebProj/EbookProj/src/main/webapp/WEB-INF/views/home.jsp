<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.spring.ebook.model.util.vo.RecommVO"%>
<%@ page import="com.spring.ebook.model.book.vo.BookVO"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">

<style>
#titletxt h1 {
    font-size: 60px;
    text-shadow: 1px 2px 3px #999;
    font-family: Roboto, sans-serif;
    font-weight: 700;
    letter-spacing: -1px;
}
#titletxt p{
  padding-bottom: 20px;
}

.hometable	{
	padding-left: 10%;
	padding-right: 10%;
}

body {
    padding: 30px 0px;
}

#lightbox .modal-content {
    display: inline-block;
    text-align: center;   
}

#lightbox .close {
    opacity: 1;
    color: rgb(255, 255, 255);
    background-color: rgb(25, 25, 25);
    padding: 5px 8px;
    border-radius: 30px;
    border: 2px solid rgb(255, 255, 255);
    position: absolute;
    top: -15px;
    right: -55px;
    
    z-index:1032;
}


.control { position: inherit; top: 50%; z-index: 5; display: inline-block; right: 50%;} 

</style>


	<!-- header.jsp 시작 -->
	<%@ include file="./header.jsp"%>
	<!-- header.jsp 끝 -->
	
	
	  <div style="background-image: url(./resources/imgs/main_img02.jpg); ">
	<div class="container" style="padding-top: 8%; padding-bottom: 8%;">
		<div class="col-md-6 col-md-offset-3">
<!-- 			<div class="row"> -->
				<div id="titletxt" class="text-center">
					<h1>This is Logo</h1>
					<p>Slogan of thematic</p>
				</div>
				<form role="form" id="form-buscar">
					<div class="form-group">
						<div class="input-group">
							<input id="1" class="form-control" type="text" name="search"
								placeholder="Search..." required /> <span
								class="input-group-btn">
								<button class="btn btn-success" type="submit">
									<i class="glyphicon glyphicon-search" aria-hidden="true"></i>
									Search
								</button>
							</span>
						</div>
					</div>
				</form>
			</div>
<!-- 		</div> -->
	</div>
</div>
  <body>
	<div id="container">
		<div class="hometable" align="center" style="margin-top: 50px; margin-bottom: 50px;">
			
			<!-- 캐러셀 부분 시작 -->
			    <div id="carousel-generic" class="carousel slide">
			      <!-- Indicators -->
			       <ol class="carousel-indicators">
			         <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
			         <li data-target="#carousel-generic" data-slide-to="1"></li>
			         <li data-target="#carousel-generic" data-slide-to="2"></li>     
			         <li data-target="#carousel-generic" data-slide-to="3"></li>    
			       </ol>
			     <!-- Carousel items -->
			       <div class="carousel-inner">
			          <div class="item active">
			             <img src="./resources/imgs/img_01.png" alt="First slide">
			          </div>
			          <div class="item">
			             <img src="./resources/imgs/img_02.png" alt="Second slide">              
			          </div>
			          <div class="item">
			             <img src="./resources/imgs/img_03.png" alt="Third slide">               
			          </div>
			          <div class="item">
			             <img src="./resources/imgs/img_04.png" alt="Third slide">               
			          </div>
			       </div>
			      <!-- Controls -->
			        <a class="left carousel-control" href="#carousel-generic" data-slide="prev">
			          <img src="./resources/imgs/left.png" class="control">
			        </a>
			        <a class="right carousel-control" href="#carousel-generic" data-slide="next">
			          <img src="./resources/imgs/right.png" class="control">
			        </a>
			      </div>
    <!--// 캐러셀 부분 끝  -->
    
    
			<h3>
					추천 테이블
					</h3>
			<table class="table table-bordered" id="bbs"
				style="maigin: 50px 100px 50px 100px; text-align: center;">
				<!-- 로그인 안 되어있을 때 -->
				<c:if test="${loginUser == null }">
					<tr>
						<td>로그인하시면 추천책을 배달해드려요</td>
					</tr>
				</c:if>

				<!-- 로그인 되어있을 때 -->
				<c:if test="${loginUser != null }">

					<div class="container">
						<c:forEach items="${recomlist}" var="recomm">
							<div class="col-xs-6 col-sm-3">
								<a href="#" class="thumbnail" data-toggle="modal"
									data-target="#lightbox"> <img
									src="https://s3.amazonaws.com/ooomf-com-files/lqCNpAk3SCm0bdyd5aA0_IMG_4060_1%20copy.jpg"
									alt="..."> </br> ${recomm.title}
								</a>
							</div>
						</c:forEach>
					</div>
					<!-- container / end -->

				</c:if>
			</table>




			<h3>
					인기 테이블
					</h3>
			</div>
			
		<div class="container">
		    <c:forEach items="${likelist}" var="liklist">
		    <div class="col-xs-6 col-sm-3">
		        <a href="#" class="thumbnail" data-toggle="modal" data-target="#lightbox"> 
		            <img src="https://s3.amazonaws.com/ooomf-com-files/lqCNpAk3SCm0bdyd5aA0_IMG_4060_1%20copy.jpg" alt="...">
		            </br>
		            ${liklist.title}
		        </a>
		    </div>
		  </c:forEach>
		</div> <!-- container / end -->

   <!-- container end -->
   </div>
   
   <div id="lightbox" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <button type="button" class="close hidden" data-dismiss="modal" aria-hidden="true">×</button>
        <div class="modal-content">
            <div class="modal-body">
                <img src="" alt="" />
            </div>
        </div>
    </div>
	</div>
   
   <script>
   $('.carousel').carousel()
   $('.carousel2').carousel({interval: 3000 }) 
   
	$(document).ready(function() {
	    var $lightbox = $('#lightbox');
	    
	    $('[data-target="#lightbox"]').on('click', function(event) {
	        var $img = $(this).find('img'), 
	            src = $img.attr('src'),
	            alt = $img.attr('alt'),
	            css = {
	                'maxWidth': $(window).width() - 100,
	                'maxHeight': $(window).height() - 100
	            };
	    
	        $lightbox.find('.close').addClass('hidden');
	        $lightbox.find('img').attr('src', src);
	        $lightbox.find('img').attr('alt', alt);
	        $lightbox.find('img').css(css);
	    });
	    
	    $lightbox.on('shown.bs.modal', function (e) {
	        var $img = $lightbox.find('img');
	            
	        $lightbox.find('.modal-dialog').css({'width': $img.width()});
	        $lightbox.find('.close').removeClass('hidden');
	    });
	});
   
  
   
   </script>
  </body>
    
</html>
<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->