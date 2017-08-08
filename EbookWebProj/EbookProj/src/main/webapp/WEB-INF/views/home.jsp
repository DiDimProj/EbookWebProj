<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.spring.ebook.model.util.vo.RecommVO"%>
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
				<table class="table table-bordered" id="bbs" style="maigin: 50px 100px 50px 100px; text-align: center; ">
			<!-- 로그인 안 되어있을 때 --> 
				<c:if test="${loginUser == null }">
						<tr>
							<td>로그인하시면 추천책을 배달해드려요</td>
						</tr>
				</c:if>
				
				<!-- 로그인 되어있을 때 --> 
				<c:if test="${loginUser != null }">
						<%
							int titlenum = 0;
							ArrayList<RecommVO> reclist = (ArrayList<RecommVO>) request.getAttribute("recomlist");
							for(int i=0;  i< reclist.size()/4 ; ++i){
						%>
							<tr>
						<%
								for(int j=0; j<4; ++j){
									if (titlenum >= reclist.size()){
										titlenum = 0;
										break;
									}
									else{
						%>
							<td><img src="./resources/imgs/book_temp.png"><br><%= reclist.get(titlenum).getTitle() %></td>
						<%
										++titlenum;
									}
								}
							}
						%>
							</tr>
						
				
				</c:if>
				</table>
			</div>

   <!-- container end -->
   </div>
   
   <script>
   $('.carousel').carousel()
   $('.carousel2').carousel({interval: 3000 }) 
   </script>
  </body>
    
</html>
<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->