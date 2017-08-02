<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>

    <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="./resources/css/kfonts2.css" rel="stylesheet">
    <style>
    h2 { margin: 20px 0}
    .tab-content {padding: 10px 0;}

    </style>

  </head>

  <body>
	<div class="container">
	<ul class="nav nav-pills nav-stacked col-md-2">
	  <li class="active"><a href="#tab_a" data-toggle="pill">내가 담은 책</a></li>
	  <li><a href="#tab_b" data-toggle="pill">내가 읽은 책 목록</a></li>
	  <li><a href="#tab_c" data-toggle="pill">내가 읽은 책 통계</a></li>
	  <li><a href="#tab_d" data-toggle="pill">회원 정보 수정</a></li>
	  <li><a href="#tab_e" data-toggle="pill">회원 탈퇴</a></li>
	</ul>
	
	<div class="tab-content col-md-10">
        <div class="tab-pane active" id="tab_a">
             <h4>내가 담은 책</h4>
	            <table class="table table-striped">
				  <thead>
				   <tr>
				     <th>책사진 </th><th>제목</th><th>작가</th><th>장르</th><th>좋아요수</th>
				   </tr>
				   </thead>
				   <tbody id="tbody"></tbody>      
				</table>
        </div>
        
        <div class="tab-pane active" id="tab_b">
             <h4>내가 읽은 책 목록</h4>
	            <table class="table table-striped">
				  <thead>
				   <tr>
				     <th>책사진 </th><th>제목</th><th>작가</th><th>장르</th><th>좋아요수</th>
				   </tr>
				   </thead>
				   <tbody id="tbody2"></tbody>      
				</table>
        </div>
        
        <div class="tab-pane" id="tab_c">
             <h4>내가 읽은 책 통계</h4>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames
                ac turpis egestas.</p>
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
	    var ary = [	{img : 'book1img', title : '첫번째', writer : '관리자', genre : '장르1', likecnt : 10, content : '내용1'},
					{img : 'book1img', title : '두번째', writer : '임정섭', genre : '장르2', likecnt : 12, content : '내용2'},
					{img : 'book1img', title : '세번째', writer : '입섭순', genre : '장르3', likecnt : 15, content : '내용3'}
		];
	    
	    $(document).ready(function() {
	    	var txt = "";
			$.each(ary, function(idx, data) {
				txt += "<tr><td>"+data.img+"</td>";
				txt += "<td><a href=javascript:showModal('"+data.content+"')>"+data.title+"</a></td>";
				txt += "<td>"+data.writer+"</td>";
				txt += "<td>"+data.genre+"</td>";
				txt += "<td>"+data.likecnt+"</td></tr>";
			});
			$("#tbody").empty();
			$("#tbody").append(txt);
	    });
	    
	    function showModal(content) {
	    	//	alert(content);
	    		$("#contentModal").modal('show');
	    		$(".modal-body").empty().append(content);
	    }
    
    </script>
  </body>
</html>