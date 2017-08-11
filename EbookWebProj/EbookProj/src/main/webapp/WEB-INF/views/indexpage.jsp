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

	<style>
	.btn-glyphicon { padding:8px; background:#ffffff; margin-right:4px; }
	.icon-btn { padding: 1px 15px 3px 2px; border-radius:50px;}
    </style>
  </head>
      <!-- jQuery 2.1.4 중요-->
    <script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<!-- header 끝 -->
<!-- Main content -->
<section class="content">
<div class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-2"
				style="padding-top: 30px; padding-bottom: 10px;">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			
			<br>
			<br>
			<br>
			<form role="form" id="form-buscar" action="search.do">
			<div class="box">
			
				<div class="box-header with-border">
					<h3 class="box-title">원하는 책을 검색하세요.</h3>
				</div>
				<div class="box-body">
					<select id="searchType" name="searchType" > 
						<option>제목</option>
						<option>저자</option>
					</select>
					<input type="text" id="seachKeyword" name="searchKeyword">
					<button id="searchBtn" class ="btn-primary" type="submit">Search</button>

				</div>
				<!-- /.box-body -->
			</div>
			</form>
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
					<h3 class="box-title">BOOK LIST</h3>
				</div>
				<div class="box-body">
	
		
  <table class="table table-striped table-condensed">
	<tr>
		<th style="width: 10px">번호</th>
		<th>도서 이름</th>
		<th>도서 저자</th>
		<th>담기</th>
		<th>좋아요</th>
	</tr>

<tbody id="tbody">
<c:forEach items="${lists}" var="bookVO">

	<tr>

		<td>${bookVO.booknum}</td>
		<c:if test="${loginUser == null }">
		<td><a href="javascript:readModal(${bookVO.booknum},'${bookVO.title}','${bookVO.content}')">${bookVO.title}</a></td>
		</c:if>
		<c:if test="${loginUser != null }">
		<td><a href="javascript:contentModal(${bookVO.booknum},'${bookVO.title}','${bookVO.content}')">${bookVO.title}</a></td>
		</c:if>
		<td>${bookVO.author}</td>
		
		
		<!-- <td><a class="btn icon-btn btn-success" href="#"><span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span>Add</a></td> -->
 		
 			<!-- 로그인 안되어있을때 로그인 모달 띄움 -->
		    <c:if test="${loginUser == null }">
		    <td><a class="btn icon-btn btn-success" href="javascript:myModal(${bookVO.booknum},${bookVO.likecnt})"><span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span>Add</a></td> 
		    </c:if> 
		    <!-- 로그인 되어있을때 담기 반영-->
		     <c:if test="${loginUser != null }">
		    <%--  <td><a class="btn icon-btn btn-success" href="./addPutbook.do?=${userVO.userid},${bookVO.booknum}"><span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span>Add</a></td>  --%>
		    <td><a class="btn icon-btn btn-success"  href="javascript:addPutbook('${loginUser.userid}', ${bookVO.booknum})"><span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span>Add</a></td>
		    </c:if>
  
	
		<!-- 로그인 안되어있을때 로그인 모달 띄움 -->
		    <c:if test="${loginUser == null }">
		    <td><a class="btn icon-btn btn-primary" href="javascript:myModal(${bookVO.booknum},${bookVO.likecnt})"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>${bookVO.likecnt}</a></td> 
		    </c:if> 
		    <!-- 로그인 되어있을때 좋아요 반영-->
		     <c:if test="${loginUser != null }">
		    <td><a class="btn icon-btn btn-primary" href="likeupdate.do?booknum=${bookVO.booknum}"><span class="glyphicon btn-glyphicon glyphicon-thumbs-up img-circle text-primary"></span>${bookVO.likecnt}</a></td>
		    </c:if>
		   
		    
   
	
	</tr>
	

</c:forEach>
</tbody>
</table>


				</div>
			
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
	</div>
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script>

	var booknum ;
	function contentModal(booknum,title,content){
		this.booknum = booknum ;
		$.ajax({
			url  : "addReadbook.do",
			type : "post",
			data : {booknum : booknum , userid : '${loginUser.userid}'},
			success : function() {
				/* alert("레코드 정보를 저장하였습니다~~"); */
				$("#contentModal").modal('show');
				$("#title").val(title);
				$("#content").val(content);
			}
		});
	}
	
	var booknum ;
	function readModal(booknum,title,content){
		this.booknum = booknum ;
		$.ajax({
			data : {booknum : booknum},
			success : function() {
				/* alert("레코드 정보를 저장하였습니다~~"); */
				$("#contentModal").modal('show');
				$("#title").val(title);
				$("#content").val(content);
			}
		});
	}


	
	function likeModal(booknum,likecnt){
		this.booknum = booknum ;
		$("#likeModal").modal('show');
		$("#likecnt").val(likecnt);
	}
	
	function myModal(booknum,likecnt){
		this.booknum = booknum ;
		$("#myModal").modal('show');
		$("#likecnt").val(likecnt);
	}
	
 	function addPutbook(userid, booknum) {
		var str='';
		if(userid) str+="userid="+userid+"&";
		if(booknum) str+="booknum="+booknum+"&";
		$("#AddModal").modal('show');
		document.location.href="./addPutbook.do?"+str;
	} 
 	
 	/* function addReadbook(userid, booknum) {
		var str='';
		if(userid) str+="userid="+userid+"&";
		if(booknum) str+="booknum="+booknum+"&";
		document.location.href="./addReadbook.do?"+str;
	}  */
	
	$(document).ready(function(){
		
 	$("#updateBtn").click(function() {
	 			alert(booknum);
				location.href="likeupdate.do?booknum="+booknum;
			});
		
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
					/* alert(ary); */
					/* $("#tbody").empty();
				console.log('search check2');
					var txt=""; */
					/* $.each(ary, function(idx, obj){
						txt += "<tr><td>"+obj.booknum+"</td>";
						txt += "<td>"+obj.title+"</td>";
						txt += "<td>"+obj.author+"</td>";
						txt += "<td>"+obj.genrenum+"</td>";
						txt += "<td>"+obj.likecnt+"</td></tr>";
					}); *//* 
					$("#tbody").append(txt); */
				}
			});
		});
		
	});
	

</script>
<!-- ContentModal 기본 -->
   <div class="modal fade" id="contentModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Book Info </h4>
	      </div>
	      <div class="modal-body"> 
		    
		    <input type="hidden" name="writer" id="writer">
		    
		    <div class="form-group">   
		        <label for="title">제목 </label>
		        <input type="text" name="title" id="title" class="form-control"> 
		    </div>       
		    <div class="form-group">  
		        <label for="content">내용</label>
		        <textarea name="content" id="content" class="form-control"></textarea>
		    </div>      
				 </div>
		      </div>
		    </div> <!-- 모달 콘텐츠 -->
	  </div> <!-- 모달 다이얼로그 -->
	  
	<!-- 쌔거 -->
   <div class="modal fade" id="readModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Book Info </h4>
	      </div>
	      <div class="modal-body"> 
		    
		    <input type="hidden" name="writer" id="writer">
		    
		    <div class="form-group">   
		        <label for="title">제목 </label>
		        <input type="text" name="title" id="title" class="form-control"> 
		    </div>       
		    <div class="form-group">  
		        <label for="content">내용</label>
		        <textarea name="content" id="content" class="form-control"></textarea>
		    </div>      
				 </div>
		      </div>
		    </div> <!-- 모달 콘텐츠 -->
	  </div> <!-- 모달 다이얼로그 -->  
	  <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">로그인을 해주세요!</h4>
      </div>
  
      
    </div> <!-- 모달 콘텐츠 -->
  </div> <!-- 모달 다이얼로그 -->
</div> <!-- 모달 전체 윈도우 -->
		
		
				<!-- AddModal -->
		<div class="modal fade" id="AddModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">내 서재에 1권을 담았습니다^^</h4>
					</div>
				</div>
				<!-- 모달 콘텐츠 -->
			</div>
			<!-- 모달 다이얼로그 -->
		</div>
		<!-- 모달 전체 윈도우 -->

<!-- footer -->
 
    <!-- Bootstrap 3.3.2 JS -->
    <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='/resources/plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="/resources/dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="/resources/dist/js/demo.js" type="text/javascript"></script>
  


<!-- footer 끝-->
<%@include file="./footer.jsp"%>