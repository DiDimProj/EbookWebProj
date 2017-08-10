<%@page import="com.spring.ebook.model.util.vo.ReadchartVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">

   <!-- header.jsp 시작 -->
   <%@ include file="./header.jsp"%>
   <!-- header.jsp 끝 -->

    <link href="./resources/css/kfonts2.css" rel="stylesheet">
    <link href="./resources/css/chart.css" rel="stylesheet">
    
    <style>
    h2 { margin: 20px 0}
    .tab-content {padding: 10px 0;}

    </style>

  </head>

  <body>
   <div align="center" style ="padding-top: 10px; padding-bottom: 10px; background-color: #eae6d9; padding-left: 30%;padding-right: 30%;">

   <div class="input-group">
        <h1 id="mypagelogo">
            <img src="./resources/imgs/mypage.png">
       </h1>
    </div> 
	</div>
	
   <div class="container">
   <ul class="nav nav-pills nav-stacked col-md-2">
     <li class="active"><a href="#tab_a" data-toggle="pill">내가 담은 책 목록</a></li>
     <li><a href="#tab_b" data-toggle="pill">내가 읽은 책 목록</a></li>
     <li><a href="#tab_c" data-toggle="pill" id="readChart">내가 읽은 책 통계</a></li>
     <li><a href="#tab_d" data-toggle="pill">회원 정보 수정</a></li>
     <li><a href="#tab_e" data-toggle="pill">회원 탈퇴</a></li>
   </ul>
   
   <div class="tab-content col-md-10">
        <div class="tab-pane active" id="tab_a">
			<fieldset>
		        <legend>내가 담은 책 목록</legend>
	            <div class="row">
			        <div class="col-md-3">
			            <form action="#" method="get">
			                <div class="input-group">
			                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
			                    <input class="form-control" id="system-search1" name="putbook" placeholder="Search for" required>
			                </div>
			            </form>
			        </div>
					<div class="col-md-9">
						
				    	 <table class="table table-list-search1">
		                    <thead>
		                        <tr>
		                            <th>담은 날짜</th>
		                            <th>제목</th>
		                            <th>작가</th>
		                            <th>장르(태그)</th>
		                            <th>좋아요</th>
		                            <th></th>
		                           
		                        </tr>
		                    </thead>
		                    <tbody id="tbody">
								<c:forEach items="${pustlists}" var="putlistVO">
								
									<tr>
										<td>${putlistVO.putdate}</td>
										<td>${putlistVO.title}</td>
										<td>${putlistVO.author}</td>
										<td>${putlistVO.genrename}(${putlistVO.tag})</td>
										<td>${putlistVO.likecnt}</td>
										<td><input type="button" value="삭제" onclick="delPutbook(${putlistVO.userid}, ${putlistVO.booknum})"/></td>
									</tr>
								</c:forEach>
							</tbody>
		                  </table>
		                  
					</div>
				</div>
			
			</fieldset>
        </div>
        
        <div class="tab-pane" id="tab_b">
        	<fieldset>
		        <legend>내가 읽은 책 목록</legend>
		         <div class="row">
			        <div class="col-md-3">
			            <form action="#" method="get">
			                <div class="input-group">
			                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
			                    <input class="form-control" id="system-search2" name="readbook" placeholder="Search for" required>
			                </div>
			            </form>
			        </div>
					<div class="col-md-9">
					
				    	 <table class="table table-list-search2">
							<thead>
		                        <tr>
		                            <th>읽은 날짜</th>
		                            <th>제목</th>
		                            <th>작가</th>
		                            <th>장르(태그)</th>
		                            <th>좋아요</th>
		                            <th></th>
		                           
		                        </tr>
		                    </thead>
		                    <tbody id="tbody">
								<c:forEach items="${readtlists}" var="readlistVO">
								
									<tr>
										<td>${readlistVO.readdate}</td>
										<td>${readlistVO.title}</td>
										<td>${readlistVO.author}</td>
										<td>${readlistVO.genrename}(${readlistVO.tag})</td>
										<td>${readlistVO.likecnt}</td>
										<td><input type="button" value="삭제" onclick="delReadbook(${readlistVO.userid}, ${readlistVO.booknum})"/></td>
									</tr>
								</c:forEach>
							</tbody>
		                  </table>
	                  
					</div>
				</div>
			</fieldset>
        </div>
        
        <div class="tab-pane" id="tab_c">
        <fieldset>
	        <legend>내가 읽은 책 통계</legend>
            	<div class="row" style="margin-top:30px; ">
					<div class="col-md-12">
						 <h2 class="flot"><i class="fa fa-pie-chart" aria-hidden="true"></i></h2>
						 <h1>Performance</h1>
						<dl>
						  <dt>
						    Total Performance
						  </dt>
						  
						  <c:forEach items="${readchart}" var="readchartVO">
							  <%int sum = 0;
							  	sum++;
							  	System.out.println(sum); %>
						  </c:forEach>
						  
						  <c:forEach items="${readchart}" var="readchartVO">
							  <dd class="percentage percentage-11"><span class="text">${readchartVO.genrename}, ${readchartVO.tag}, ${readchartVO.cnt}</span></dd>
						  </c:forEach>
						  
						</dl>
					
					</div>
				</div>
	          <!-- //.row -->
          </fieldset>
        </div>
        
        <div class="tab-pane" id="tab_d">
             <form class="form-horizontal" method="post" action="update.do">
				<fieldset>
					
					<!-- Form Name -->
					<legend>회원 정보 수정</legend>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="giftID">User ID</label>  
					  <div class="col-md-4">
					  <input id="userid" name="userid" type="text" class="form-control input-md" value="${loginUser.userid}" readonly="readonly">
					    
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="giftName">Password</label>  
					  <div class="col-md-4">
					  <input id="password" name="password" type="password" class="form-control input-md" value="${loginUser.password}">
					    
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="giftDescription">Name</label>  
					  <div class="col-md-4">
					  <input id="name" name="name" type="text" class="form-control input-md" value="${loginUser.name}">
					    
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="giftPrice">Age</label>  
					  <div class="col-md-4">
					  <input id="age" name="age" type="text" class="form-control input-md" value="${loginUser.age}">
					    
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="shippingDays">Phone number</label>  
					  <div class="col-md-4">
					  <input id="phone" name="phone" type="text" class="form-control input-md" value="${loginUser.phone}">
					  </div>
					</div>
					
				</fieldset>
				<div align="center">
					<button type="submit">수정</button>
				</div>
			</form>
        </div>
        
        <div class="tab-pane" id="tab_e">
            <form class="form-horizontal" action="withdrawal.do" method="post">
				<fieldset>
				
				<!-- Form Name -->
				<legend>회원 탈퇴</legend>
				
				<!-- Text input-->
				
				<div class="form-group">
					<label class="col-md-4 control-label" for="giftID">Password</label>
					<div class="col-md-4">
						<br>
		      			<input type="submit" value="탈퇴" />
					</div>
				</div>
				
				
				</fieldset>
			</form>
        </div>
        
   </div><!-- tab content -->
   </div><!-- end of container -->
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="./resources/js/bootstrap.min.js"></script>
    
    <script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/drilldown.js"></script>
    
    <script>
		function delPutbook(userid, booknum) {
			var str='';
			if(userid) str+="userid="+userid+"&";
			if(booknum) str+="booknum="+booknum+"&";
		
			document.location.href="./delPutbook.do?"+str;
		} 
		
		function delReadbook(userid, booknum) {
			var str='';
			if(userid) str+="userid="+userid+"&";
			if(booknum) str+="booknum="+booknum+"&";
		
			document.location.href="./delReadbook.do?"+str;
		} 
		
		///////////
		
/* 		function sumcnt(cnt) {
			var sum=0;
			for(int i=0; i<)
		} */
		
    </script>
    
    <script type="text/javascript">

		$(document).ready(function() {
    	  
         ////////filter_table
         var activeSystemClass = $('.list-group-item.active');

    	//something is entered in search form
	    $('#system-search1').keyup( function() {
	       var that = this;
	        // affect all table rows on in systems table
	        var tableBody = $('.table-list-search1 tbody');
	        var tableRowsClass = $('.table-list-search1 tbody tr');
	        $('.search-sf').remove();
	        tableRowsClass.each( function(i, val) {
	        
	            //Lower text for case insensitive
	            var rowText = $(val).text().toLowerCase();
	            var inputText = $(that).val().toLowerCase();
	
	            if( rowText.indexOf( inputText ) == -1 )
	            {
	                //hide rows
	                tableRowsClass.eq(i).hide();
	                
	            }
	            else
	            {
	                $('.search-sf').remove();
	                tableRowsClass.eq(i).show();
	            }
	        });
	        //all tr elements are hidden
	        if(tableRowsClass.children(':visible').length == 0)
	        {
	            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
	        }
	    });
    	
	    $('#system-search2').keyup( function() {
		       var that = this;
		        // affect all table rows on in systems table
		        var tableBody = $('.table-list-search2 tbody');
		        var tableRowsClass = $('.table-list-search2 tbody tr');
		        $('.search-sf').remove();
		        tableRowsClass.each( function(i, val) {
		        
		            //Lower text for case insensitive
		            var rowText = $(val).text().toLowerCase();
		            var inputText = $(that).val().toLowerCase();
		
		            if( rowText.indexOf( inputText ) == -1 )
		            {
		                //hide rows
		                tableRowsClass.eq(i).hide();
		                
		            }
		            else
		            {
		                $('.search-sf').remove();
		                tableRowsClass.eq(i).show();
		            }
		        });
		        //all tr elements are hidden
		        if(tableRowsClass.children(':visible').length == 0)
		        {
		            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
		        }
		    });

          
       });
		
		$('#readChart').onClick( function() {
			console.log('asdfasdf');
			
		});
    
    </script>
  </body>
       <!-- footer.jsp 시작 -->
   <%@ include file="./footer.jsp"%>
   <!-- footer.jsp 끝 -->
</html>