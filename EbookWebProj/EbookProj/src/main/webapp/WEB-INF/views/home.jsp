<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
		<div class="row" align="center">
			<div class="col-md-6">
			
			<h3>
					인기 테이블
					</h3>
				
				<table class="table table-striped" id="bbs" style="margin-bottom: 50px">
						<thead>
							<tr>
								<th>번 호</th>
								<th>제 목</th>
								<th>글쓴이</th>
							</tr>
						</thead>
						<tr>
							<td>1</td>
							<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
							<td>홍길동</td>
						</tr>
						<tr>
							<td>2</td>
							<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
							<td>임꺽정</td>
						</tr>
						<tr>
							<td>3</td>
							<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
							<td>성춘향</td>
						</tr>
					</table>

			</div>

			<div class="col-md-5  col-md-offset-1">
			
			<h3>
					추천 테이블
					</h3>
				
				<table class="table table-striped" id="bbs">
						<thead>
							<tr>
								<th>번 호</th>
								<th>제 목</th>
								<th>글쓴이</th>
							</tr>
						</thead>
						<tr>
							<td>1</td>
							<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
							<td>홍길동</td>
						</tr>
						<tr>
							<td>2</td>
							<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
							<td>임꺽정</td>
						</tr>
						<tr>
							<td>3</td>
							<td>테이블 테스트 테이블 테스트 테이블 테스트</td>
							<td>성춘향</td>
						</tr>
					</table>
				
			</div>

   <!-- container end -->
   </div>

 </div>

  </body>
    <!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->
</html>