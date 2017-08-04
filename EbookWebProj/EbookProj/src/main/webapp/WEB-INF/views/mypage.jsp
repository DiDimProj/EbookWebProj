<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

   <!-- header.jsp 시작 -->
   <%@ include file="./header.jsp"%>
   <!-- header.jsp 끝 -->

    <link href="./resources/css/kfonts2.css" rel="stylesheet">
    <link href="./resources/css/column-chart.css" rel="stylesheet">
    
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
   <ul class="nav nav-pills nav-stacked col-md-2" id="refresh">
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
		    	 <table class="table table-list-search">
                    <thead>
                        <tr>
                            <th>담은 날짜</th>
                            <th>제목</th>
                            <th>작가</th>
                            <th>장르</th>
                            <th>좋아요 수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>2017.07.01</td>
                            <td>제목제목1</td>
                            <td>작가작가1</td>
                            <td>장르장르1</td>
                            <td>123</td>
                        </tr>
                        <tr>
                            <td>2017.06.01</td>
                            <td>제목제목2</td>
                            <td>작가작가2</td>
                            <td>장르장르2</td>
                            <td>100</td>
                        </tr>
                        <tr>
                            <td>2017.05.01</td>
                            <td>제목제목3</td>
                            <td>작가작가3</td>
                            <td>장르장르3</td>
                            <td>90</td>
                        </tr>
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
		    	 <table class="table table-list-search">
                    <thead>
                        <tr>
                            <th>읽은 날짜</th>
                            <th>제목</th>
                            <th>작가</th>
                            <th>장르</th>
                            <th>좋아요 수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>2017.07.01</td>
                            <td>제목제목1</td>
                            <td>작가작가1</td>
                            <td>장르장르1</td>
                            <td>123</td>
                        </tr>
                        <tr>
                            <td>2017.06.01</td>
                            <td>제목제목2</td>
                            <td>작가작가2</td>
                            <td>장르장르2</td>
                            <td>100</td>
                        </tr>
                        <tr>
                            <td>2017.05.01</td>
                            <td>제목제목3</td>
                            <td>작가작가3</td>
                            <td>장르장르3</td>
                            <td>90</td>
                        </tr>
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
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="250">
                                      <span class="title">소설</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                  
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="200">
                                      <span class="title">기술</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                  
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="150">
                                      <span class="title">만화</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                  
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="130">
                                      <span class="title">경제/경영</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                  
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="120">
                                      <span class="title">순수과학</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                          
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="100">
                                      <span class="title">예체능</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                          
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="80">
                                      <span class="title">자기계발</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                          
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="75">
                                      <span class="title">역사</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                          
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="70">
                                      <span class="title">종교</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                          
                          <div class="item">
                              <div class="bar">
                                  <div class="item-progress" data-percent="67">
                                      <span class="title">언어</span>
                                  </div>
                                  <!-- //.item-progress -->
                              </div>
                              <!-- //.bar -->
                          </div>
                          <!-- //.item -->
                          
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
             <h4>회원 정보 수정</h4>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames
                ac turpis egestas.</p>
        </div>
        
        <div class="tab-pane" id="tab_e">
             <h4>회원 탈퇴</h4>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames
                ac turpis egestas.</p>
        </div>
        
   </div><!-- tab content -->
   </div><!-- end of container -->
  
    <!-- Modal -->
   <div class="modal fade" id="contentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
       <div class="modal-content">
         <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
           <h4 class="modal-title" id="myModalLabel">모달 제목 </h4>
         </div>
         <div class="modal-body">
         
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
           <button type="button" class="btn btn-primary">변경 사항 저장</button>
         </div>
       </div> <!-- 모달 콘텐츠 -->
     </div> <!-- 모달 다이얼로그 -->
   </div> <!-- 모달 전체 윈도우 -->
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="./resources/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">

       
       $(document).ready(function() {
         
         ////////filter_table
         var activeSystemClass = $('.list-group-item.active');

    	//something is entered in search form
	    $('#system-search1').keyup( function() {
	       var that = this;
	        // affect all table rows on in systems table
	        var tableBody = $('.table-list-search tbody');
	        var tableRowsClass = $('.table-list-search tbody tr');
	        $('.search-sf').remove();
	        tableRowsClass.each( function(i, val) {
	        
	            //Lower text for case insensitive
	            var rowText = $(val).text().toLowerCase();
	            var inputText = $(that).val().toLowerCase();
	            if(inputText != '')
	            {
	                $('.search-query-sf').remove();
	                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
	                    + $(that).val()
	                    + '"</strong></td></tr>');
	            }
	            else
	            {
	                $('.search-query-sf').remove();
	            }
	
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
		        var tableBody = $('.table-list-search tbody');
		        var tableRowsClass = $('.table-list-search tbody tr');
		        $('.search-sf').remove();
		        tableRowsClass.each( function(i, val) {
		        
		            //Lower text for case insensitive
		            var rowText = $(val).text().toLowerCase();
		            var inputText = $(that).val().toLowerCase();
		            if(inputText != '')
		            {
		                $('.search-query-sf').remove();
		                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
		                    + $(that).val()
		                    + '"</strong></td></tr>');
		            }
		            else
		            {
		                $('.search-query-sf').remove();
		            }
		
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
	    
		    $('#refresh').click(function() {
		    //	$('.search-query-sf').empty();
			});

          ////////column-chart
          columnChart();
          
          function columnChart(){
              var item = $('.chart', '.column-chart').find('.item'),
              itemWidth = 100 / item.length;
              item.css('width', itemWidth + '%');
              
              $('.column-chart').find('.item-progress').each(function(){
                  var itemProgress = $(this),
                  itemProgressHeight = $(this).parent().height() * ($(this).data('percent') / 100);
                  itemProgress.css('height', itemProgressHeight);
              });
          };
       });
       
       function showModal(content) {
          //   alert(content);
             $("#contentModal").modal('show');
             $(".modal-body").empty().append(content);
       }
    
    </script>
  </body>
       <!-- footer.jsp 시작 -->
   <%@ include file="./footer.jsp"%>
   <!-- footer.jsp 끝 -->
</html>