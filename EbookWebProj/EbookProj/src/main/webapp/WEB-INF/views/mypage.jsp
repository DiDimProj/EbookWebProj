<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

   <!-- header.jsp 시작 -->
   <%@ include file="./header.jsp"%>
   <!-- header.jsp 끝 -->

    <link href="./resources/css/kfonts2.css" rel="stylesheet">
    
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
     <li><a href="#tab_c" data-toggle="pill">내가 읽은 책 통계</a></li>
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
		                        	<th>아이디</th>
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
										<td>${putlistVO.userid}</td>
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
		                        	<th>아이디</th>
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
										<td>${readlistVO.userid}</td>
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
            <div class="row">
	             <div class="col-md-12">
	              
	                  <!-- //.text-center -->
	                  
	                  <div class="column-chart">           
	                      <div class="chart clearfix">
							<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	                      </div>
	                      <!-- //.chart -->
	                  </div>
	                  <!-- //.column-chart -->
	              </div>
              <!-- //.col-md-6 -->
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


          ////////column-chart
          var genreAry = new Array();
          
          columnChart();
          
          function columnChart(){
              
              Highcharts.chart('container', {
            	    chart: {
            	        type: 'column'
            	    },
            	    title: {
            	        text: ''
            	    },
            	    xAxis: {
            	        type: 'category'
            	    },
            	    yAxis: {
            	        title: {
            	            text: ''
            	        }

            	    },
            	    legend: {
            	        enabled: false
            	    },
            	    plotOptions: {
            	        series: {
            	            borderWidth: 0,
            	            dataLabels: {
            	                enabled: true,
            	                format: '{point.y:.1f}%'
            	            }
            	        }
            	    },

            	    tooltip: {
            	        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
            	        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
            	    },
					
						
            	    series: [{
            	        name: '장르',
            	        colorByPoint: true,
            	        data: [{
            	            name: 'as',
            	            y: 56.33,
            	            drilldown: 'as'
            	        }, {
            	            name: 'as1',
            	            y: 56.33,
            	            drilldown: 'as1'
            	        }]
            	    }],
            	    drilldown: {
            	        series: [{
            	            name: 'as',
            	            id: 'as',
            	            data: [
            	                [
            	                    'v11.0',
            	                    24.13
            	                ],
            	                [
            	                    'v8.0',
            	                    17.2
            	                ],
            	                [
            	                    'v9.0',
            	                    8.11
            	                ],
            	                [
            	                    'v10.0',
            	                    5.33
            	                ],
            	                [
            	                    'v6.0',
            	                    1.06
            	                ],
            	                [
            	                    'v7.0',
            	                    0.5
            	                ]
            	            ]
            	        }, {
            	            name: 'as1',
            	            id: 'as1',
            	            data: [
            	                [
            	                    'asdf.0',
            	                    24.13
            	                ],
            	                [
            	                    'as.0',
            	                    17.2
            	                ],
            	                [
            	                    '123.0',
            	                    8.11
            	                ],
            	                [
            	                    'v10.0',
            	                    5.33
            	                ],
            	                [
            	                    'v6.0',
            	                    1.06
            	                ],
            	                [
            	                    'v7.0',
            	                    0.5
            	                ]
            	            ]
            	        }]
            	    }
            	});
          };
       });
    
    </script>
  </body>
       <!-- footer.jsp 시작 -->
   <%@ include file="./footer.jsp"%>
   <!-- footer.jsp 끝 -->
</html>