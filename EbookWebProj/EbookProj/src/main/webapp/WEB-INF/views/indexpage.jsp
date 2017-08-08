<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="./header.jsp"%>

<!-- header -->

  <head>
    <meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
   
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
 
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
   
    <link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
   
    <link href="/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    
  </head>
      <!-- jQuery 2.1.4 -->
    <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<!-- header 끝 -->
<!-- Main content -->
<section class="content">

	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">Search PAGE</h3>
				</div>
				<div class="box-body">
					<select id="searchType"> 
						<option>제목</option>
						<option>저자</option>
					</select>
					<input type="text" id="seachKeyword">
					<button id="searchBtn" class ="btn-primary">Search</button>

				</div>
				<!-- /.box-body -->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->



	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST ALL PAGE</h3>
				</div>
				<div class="box-body">
				
<table class="table table-bordered">
	<tr>
		<th style="width: 10px">BOOKNUM</th>
		<th>TITLE</th>
		<th>AUTHOR</th>
		<th>GENRENUM</th>
		<th style="width: 40px">LIKECNT</th>
	</tr>

<tbody id="tbody">
<c:forEach items="${lists}" var="bookVO">

	<tr>
		<td>${bookVO.booknum}</td>
		<td><a href="javascript:contentModal(${bookVO.booknum},'${bookVO.title}','${bookVO.genrenum}','${bookVO.author}')">${bookVO.title}</a></td>
		<td>${bookVO.author}</td>
		<td>${bookVO.genrenum}</td>
		<td><span class="badge bg-red">${bookVO.likecnt }</span></td>
	</tr>

</c:forEach>
</tbody>
</table>

				</div>
				<!-- /.box-body -->
				<div class="box-footer">Footer</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script>

	function contentModal(booknum,title,content,author){
		this.booknum = booknum ;
		$("#contentModal").modal('show');
		$("#title").val(title);
		$("#genrenum").val(genrenum);
		$("#author").val(author);
	}
	$(document).ready(function(){
		
		$("#searchBtn").click(function(){
			var type 		= $("#searchType").val();
			var keyword 	= $("#seachKeyword").val();
			console.log('search check1');
			$.ajax({
				url:"search.do" ,
				type:"post" ,
				data : {searchType:type,searchKeyword:keyword} ,
				dataType:"json" ,
				success:function(ary){
					alert(ary);
					$("#tbody").empty();
				console.log('search check2');
					var txt="";
					$.each(ary, function(idx, obj){
						txt += "<tr><td>"+obj.booknum+"</td>";
						txt += "<td>"+obj.title+"</td>";
						txt += "<td>"+obj.author+"</td>";
						txt += "<td>"+obj.genrenum+"</td>";
						txt += "<td>"+obj.likecnt+"</td></tr>";
					});
					$("#tbody").append(txt);
				}
			});
		});
		
	});
	    
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <div class="modal fade" id="contentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>	     
	        <h4 class="modal-title" id="myModalLabel">글번호</h4>
	      </div>
		      <div class="modal-body"> 
				   
				   <input type="hidden" name="author" id="author">				     
				   <div class="form-group">   
				     <label for="title">제목</label>
				     <input type="text" name="title" id="title" 
				     class = "from-control">
				    </div>       
				    <div class="form-group">  
					<label for="content">장르</label>
					<textarea name="genrenum" id="genrenum" class="form-control"></textarea>
				    </div> 
				    
							
				    
				        
				    </div>
		      </div>
		    </div> <!-- 모달 콘텐츠 -->
	  </div> <!-- 모달 다이얼로그 -->
<!-- footer -->
 
    <!-- Bootstrap 3.3.2 JS -->
    <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='/resources/plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="/resources/dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="/resources/dist/js/demo.js" type="text/javascript"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!-- footer 끝-->
<%@include file="./footer.jsp"%>
	  