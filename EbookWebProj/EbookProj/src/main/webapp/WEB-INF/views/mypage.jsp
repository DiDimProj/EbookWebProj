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
	                        	<th>userid</th>
	                            <th>putdate</th>
	                            <th>title</th>
	                            <th>author</th>
	                            <th>genrename</th>
	                            <th>tag</th>
	                            <th>likecnt</th>
	                           
	                        </tr>
	                    </thead>
	                    <tbody id="tbody">
							<c:forEach items="${pustlists}" var="putlistVO">
							
								<tr>
									<td>${putlistVO.userid}</td>
									<td>${putlistVO.putdate}</td>
									<td>${putlistVO.title}</td>
									<td>${putlistVO.author}</td>
									<td>${putlistVO.genrename}</td>
									<td>${putlistVO.tag}</td>
									<td>${putlistVO.likecnt}</td>
								</tr>
							</c:forEach>
						</tbody>
	                  </table>
	                  
				</div>
			</div>
			
			
        </div>
        
        <div class="tab-pane" id="tab_b">
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
	                        	<th>userid</th>
	                            <th>readdate</th>
	                            <th>title</th>
	                            <th>author</th>
	                            <th>genrename</th>
	                            <th>tag</th>
	                            <th>likecnt</th>
	                           
	                        </tr>
	                    </thead>
	                    <tbody id="tbody">
							<c:forEach items="${readtlists}" var="readlistVO">
							
								<tr>
									<td>${readlistVO.userid}</td>
									<td>${readlistVO.readdate}</td>
									<td>${readlistVO.title}</td>
									<td>${readlistVO.author}</td>
									<td>${readlistVO.genrename}</td>
									<td>${readlistVO.tag}</td>
									<td>${readlistVO.likecnt}</td>
								</tr>
							</c:forEach>
						</tbody>
	                  </table>
                  
				</div>
			</div>
        </div>
        
        <div class="tab-pane" id="tab_c">
            <div class="row">
              <div class="col-md-12">
                  <div class="text-center text-uppercase">
                      <h2>내가 읽은 책 통계</h2>
                  </div>
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
        </div>
        
        <div class="tab-pane" id="tab_d">
             <form class="form-horizontal">
				<fieldset>
				
				<!-- Form Name -->
				<legend>회원 정보 수정</legend>
				
				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="giftID">User ID</label>  
				  <div class="col-md-4">
				  <input id="userid" name="userid" type="text" placeholder="Gift ID" class="form-control input-md">
				    
				  </div>
				</div>
				
				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="giftName">Password</label>  
				  <div class="col-md-4">
				  <input id="giftName" name="giftName" type="text" placeholder="Gift Name" class="form-control input-md" required="">
				    
				  </div>
				</div>
				
				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="giftDescription">Name</label>  
				  <div class="col-md-4">
				  <input id="giftDescription" name="giftDescription" type="text" placeholder="Gift Description" class="form-control input-md">
				    
				  </div>
				</div>
				
				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="giftPrice">Age</label>  
				  <div class="col-md-4">
				  <input id="giftPrice" name="giftPrice" type="text" placeholder="Price" class="form-control input-md" required="">
				    
				  </div>
				</div>
				
				<!-- Text input-->
				<div class="form-group">
				  <label class="col-md-4 control-label" for="shippingDays">Phone number</label>  
				  <div class="col-md-4">
				  <input id="shippingDays" name="shippingDays" type="text" placeholder="Shipping Days" class="form-control input-md">
				  </div>
				</div>
				
				</fieldset>
			</form>
        </div>
        
        <div class="tab-pane" id="tab_e">
            <form class="form-horizontal" action="withdrawal.do" method="post">
				<fieldset>
				
				<!-- Form Name -->
				<legend>회원 탈퇴</legend>
				
				<!-- Text input-->
				
				<div class="form-group">
					<label class="col-md-4 control-label" for="giftID">USERID</label>
					<div class="col-md-4">
						<br>
						<input type="text" class="form-control" name="userid">
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
            	        name: 'Brands',
            	        colorByPoint: true,
            	        data: [{
            	            name: 'Microsoft Internet Explorer',
            	            y: 56.33,
            	            drilldown: 'Microsoft Internet Explorer'
            	        }, {
            	            name: 'Chrome',
            	            y: 24.03,
            	            drilldown: 'Chrome'
            	        }, {
            	            name: 'Firefox',
            	            y: 10.38,
            	            drilldown: 'Firefox'
            	        }, {
            	            name: 'Safari',
            	            y: 4.77,
            	            drilldown: 'Safari'
            	        }, {
            	            name: 'Opera',
            	            y: 0.91,
            	            drilldown: 'Opera'
            	        }, {
            	            name: 'Proprietary or Undetectable',
            	            y: 0.2,
            	            drilldown: null
            	        }]
            	    }],
            	    drilldown: {
            	        series: [{
            	            name: 'Microsoft Internet Explorer',
            	            id: 'Microsoft Internet Explorer',
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
            	            name: 'Chrome',
            	            id: 'Chrome',
            	            data: [
            	                [
            	                    'v40.0',
            	                    5
            	                ],
            	                [
            	                    'v41.0',
            	                    4.32
            	                ],
            	                [
            	                    'v42.0',
            	                    3.68
            	                ],
            	                [
            	                    'v39.0',
            	                    2.96
            	                ],
            	                [
            	                    'v36.0',
            	                    2.53
            	                ],
            	                [
            	                    'v43.0',
            	                    1.45
            	                ],
            	                [
            	                    'v31.0',
            	                    1.24
            	                ],
            	                [
            	                    'v35.0',
            	                    0.85
            	                ],
            	                [
            	                    'v38.0',
            	                    0.6
            	                ],
            	                [
            	                    'v32.0',
            	                    0.55
            	                ],
            	                [
            	                    'v37.0',
            	                    0.38
            	                ],
            	                [
            	                    'v33.0',
            	                    0.19
            	                ],
            	                [
            	                    'v34.0',
            	                    0.14
            	                ],
            	                [
            	                    'v30.0',
            	                    0.14
            	                ]
            	            ]
            	        }, {
            	            name: 'Firefox',
            	            id: 'Firefox',
            	            data: [
            	                [
            	                    'v35',
            	                    2.76
            	                ],
            	                [
            	                    'v36',
            	                    2.32
            	                ],
            	                [
            	                    'v37',
            	                    2.31
            	                ],
            	                [
            	                    'v34',
            	                    1.27
            	                ],
            	                [
            	                    'v38',
            	                    1.02
            	                ],
            	                [
            	                    'v31',
            	                    0.33
            	                ],
            	                [
            	                    'v33',
            	                    0.22
            	                ],
            	                [
            	                    'v32',
            	                    0.15
            	                ]
            	            ]
            	        }, {
            	            name: 'Safari',
            	            id: 'Safari',
            	            data: [
            	                [
            	                    'v8.0',
            	                    2.56
            	                ],
            	                [
            	                    'v7.1',
            	                    0.77
            	                ],
            	                [
            	                    'v5.1',
            	                    0.42
            	                ],
            	                [
            	                    'v5.0',
            	                    0.3
            	                ],
            	                [
            	                    'v6.1',
            	                    0.29
            	                ],
            	                [
            	                    'v7.0',
            	                    0.26
            	                ],
            	                [
            	                    'v6.2',
            	                    0.17
            	                ]
            	            ]
            	        }, {
            	            name: 'Opera',
            	            id: 'Opera',
            	            data: [
            	                [
            	                    'v12.x',
            	                    0.34
            	                ],
            	                [
            	                    'v28',
            	                    0.24
            	                ],
            	                [
            	                    'v27',
            	                    0.17
            	                ],
            	                [
            	                    'v29',
            	                    0.16
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