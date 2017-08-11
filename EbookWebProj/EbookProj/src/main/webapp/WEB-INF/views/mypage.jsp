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
						<dl>
						  <dt>
						   	장르(태그) BEST 3
						  </dt>
						
						  <c:forEach items="${readchart}" var="readchartVO">
							  <dd class="percentage percentage-${readchartVO.percent}"><span class="text">${readchartVO.genrename}(${readchartVO.tag}) ${readchartVO.cnt}권 ${readchartVO.percent}%</span></dd>
						  </c:forEach>
						  
						</dl>
					
					</div>
				</div>
	          <!-- //.row -->
          </fieldset>
        </div>
        
        <div class="tab-pane" id="tab_d">
	        <legend>회원 정보 수정</legend>
	        <div class="col-xs-12 col-sm-8 col-md-8 col-sm-offset-2 col-md-offset-2"
					style="padding-top: 30px; padding-bottom: 10px;">
				 <form class="form-horizontal" method="post" action="update.do" name="updateform">
	
						<div class="form-group" id="idcheck">
							<div class="input-group" >
								<input type="text" name="userid" id="idinput" value="${loginUser.userid}"
									class="form-control input-lg" placeholder="아이디" tabindex="1" readonly="readonly">
									<span class="input-group-addon danger" id="idspan">
									<span class="glyphicon glyphicon-remove" id="idicon">
									</span></span>
								</div>
						</div>
	
						<div class="form-group" id="pwdcheck">
						<div class="input-group" >
							<input type="text" name="password" id="pwdinput" value="${loginUser.password}"
								class="form-control input-lg" placeholder="비밀번호" tabindex="2">
								<span class="input-group-addon danger" id="pwdspan">
									<span class="glyphicon glyphicon-remove" id="pwdicon">
									</span></span>
								</div>
						</div>
	
						<div class="form-group" id="namecheck">
						<div class="input-group" >
							<input type="text" name="name" id="nameinput" value="${loginUser.name}"
								class="form-control input-lg" placeholder="이름" tabindex="4">
								<span class="input-group-addon danger" id="namespan">
									<span class="glyphicon glyphicon-remove" id="nameicon">
									</span></span>
								</div>
						</div>
	
						<div class="form-group" id="agecheck">
						<div class="input-group" >
							<input type="number" name="age" id="ageinput" value="${loginUser.age}"
								class="form-control input-lg" placeholder="나이 : 숫자만 입력하시오"
								tabindex="5">
								<span class="input-group-addon danger" id="agespan">
									<span class="glyphicon glyphicon-remove" id="ageicon">
									</span></span>
								</div>
						</div>
	
						<div class="form-group" id="phonecheck">
						<div class="input-group" >
							<input type="text" name="phone" id="phoneinput" value="${loginUser.phone}"
								class="form-control input-lg" placeholder="핸드폰 번호 : 숫자만 입력하시오"
								tabindex="6">
								<span class="input-group-addon danger" id="phonespan">
									<span class="glyphicon glyphicon-remove" id="phoneicon">
									</span></span>
								</div>
						</div>
	
						<h4>INFORMATION ABOUT YOUR BOOK</h4>
						<div class="row">
							<div class="col-md-5">
	
								<h5>1.소설</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox1" name="chk" value="01-1"> 추리
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox2" name="chk" value="01-2"> 호러
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox3" name="chk" value="01-3"> 연애
								</label>
	
								<h5>2.기술</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox4" name="chk" value="02-1"> IT
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox5" name="chk" value="02-2"> 전자/전기
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox6" name="chk" value="02-3"> 건축
								</label>
	
								<h5>3.만화</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox7" name="chk" value="03-1"> 코믹
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox8" name="chk" value="03-2"> 성인
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox9" name="chk" value="03-3"> 판타지
								</label>
	
								<h5>4.경제/경영</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox10" name="chk" value="04-1"> 마케팅
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox11" name="chk" value="04-2"> 재테크
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox12" name="chk" value="04-3"> 창업
								</label>
	
								<h5>5.순수과학</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox13" name="chk" value="05-1"> 수학
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox14" name="chk" value="05-2"> 천체/물리
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox15" name="chk" value="05-3"> 화학
								</label>
	
							</div>
							<div class="col-md-7">
	
								<h5>6.예체능</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox16" name="chk" value="06-1"> 음악
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox17" name="chk" value="06-2"> 미술
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox18" name="chk" value="06-3"> 체육
								</label>
	
								<h5>7.자기계발</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox19" name="chk" value="07-1">인간관계
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox20" name="chk" value="07-2">성공/처세
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox21" name="chk" value="07-3">화술/협상
								</label>
	
								<h5>8.역사</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox22" name="chk" value="08-1"> 한국사
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox23" name="chk" value="08-2"> 세계사
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox24" name="chk" value="08-3"> 신화
								</label>
	
								<h5>9.종교</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox25" name="chk" value="09-1"> 불교
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox26" name="chk" value="09-2"> 천주교
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox27" name="chk" value="09-3"> 기독교
								</label>
	
								<h5>10.언어</h5>
								<label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox28" name="chk" value="10-1"> 한국어
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox29" name="chk" value="10-2"> 영어
								</label> <label class="checkbox-inline"> <input type="checkbox"
									id="inlineCheckbox30" name="chk" value="10-3"> 중국어
								</label>
	
							</div>
	
	
						</div>
	
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-12 center"></div>
						</div>
							<input type="hidden" name="genrenum">
						<button type="button" onclick="update_btn()"
							class="btn btn-primary btn-block btn-lg" tabindex="7">수정
						</button>
						<%-- 
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
					</div> --%>
				</form>
	        </div>
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
		
		///////////////--수정오류
		
		function check(obj) {
	     var checkboxs = document.getElementsByName("chk");
	     var cnt=0;
	     
	     for(var i=0;i<checkboxs.length;i++) {
	       if(checkboxs[i].checked) cnt++;
	     }
	     if(cnt>3) {
	       obj.checked = false;
	    alert("3개 선택해주세요.");
	     }
	   }
	
	
	//--------------------------------
	
	   function insert_Ck(){
	   var cbox = document.getElementsByName("chk");
	   var checked = 0;
	   
	   var resultbox = [];
	   
	   for(i=0;i<cbox.length;i++){
	      if(cbox[i].checked==true){
	
	         resultbox[checked] = cbox[i].value;
	         checked ++;
	      }
	   }
	   
	   if(checked != 3){
	      alert('태그는 3개 선택해주세요.');
	       location.reload(false);
	       return false;
	   }
	   
	   var checkvalue = resultbox[0]+"|"+resultbox[1]+"|"+resultbox[2];
	   
	   return checkvalue;
	}
	
	//-------------------------------------
	
	
	   
	function update_btn(){
	   
	   var genren = insert_Ck();
	   
	   
/* 	    if(document.getElementById("userid").value.length > 10 || 
	    		document.getElementById("userid").value.length < 5){
	    	alert('아이디는 5~10자만 가능합니다.');
	        location.reload(false);
	        return false;
	    } */
	   if(document.getElementById("pwdinput").value.length > 10 ||
			  document.getElementById("pwdinput").value.length < 5){
		      alert('비밀번호는 5~10자만 가능합니다.');
		      location.reload(true);
		      return false;
	   } 
	   if(document.getElementById("nameinput").value.length > 5 ||
			   document.getElementById("nameinput").value.length< 2){
		      alert('이름은 2~5자만 가능합니다.');
		      location.reload(true);
		      return false;
	   }
	   if(document.getElementById("ageinput").value.length >3 ||
			   document.getElementById("ageinput").value.length < 1){
	
		      alert('정확한 나이를 입력해주세요.');
		      location.reload(true);
		      return false;
	   }
	   if(document.getElementById("phoneinput").value.length != 11){
		      alert('정확한 핸드폰번호를 입력해주세요.');
		      location.reload(true);
		      return false;
	   } 
	   
	   window.alert('수정이 완료되었습니다.');
	   
	   document.updateform.genrenum.value = genren;
	   updateform.submit();
	  
	}
		
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
	    
	    /////////////////////////--수정오류
////////filter_table
        var activeSystemClass = $('.list-group-item.active');

   	//something is entered in search form
	    $('#idinput').keyup( function() {
	       var that = this;
	       
	    	if($(that).val().length > 10 || 
	    			$(that).val().length < 5){
	     			$("#idcheck").attr("class","form-group has-error");
	     			$("#idspan").attr("class","input-group-addon danger");
	     			$("#idicon").attr("class","glyphicon glyphicon-remove");
	     			 
	    	}else{
	    		$("#idcheck").attr("class","form-group has-success");
    			$("#idspan").attr("class","input-group-addon success");
    			$("#idicon").attr("class","glyphicon glyphicon-ok");
	    	}
	    });
   	
	    $('#pwdinput').keyup( function() {
		       var that = this;
		       
		    	if($(that).val().length > 10 || 
		    			$(that).val().length < 5){
		     			  $("#pwdcheck").attr("class","form-group has-error");
			     			$("#pwdspan").attr("class","input-group-addon danger");
			     			$("#pwdicon").attr("class","glyphicon glyphicon-remove");
		    	}else{
		    		$("#pwdcheck").attr("class","form-group has-success");
	     			$("#pwdspan").attr("class","input-group-addon success");
	     			$("#pwdicon").attr("class","glyphicon glyphicon-ok");
		    	}
		    });
	    
	    $('#nameinput').keyup( function() {
		       var that = this;
		       
		    	if($(that).val().length > 5 ||
		    			$(that).val().length < 2){
		     			  $("#namecheck").attr("class","form-group has-error");
			     			$("#namespan").attr("class","input-group-addon danger");
			     			$("#nameicon").attr("class","glyphicon glyphicon-remove");
		    	}else{
		    		$("#namecheck").attr("class","form-group has-success");
	     			$("#namespan").attr("class","input-group-addon success");
	     			$("#nameicon").attr("class","glyphicon glyphicon-ok");
		    	}
		    });
	    
	    $('#ageinput').keyup( function() {
		       var that = this;
		       
		    	if($(that).val().length > 3 || 
		    			$(that).val().length < 1){
		     			  $("#agecheck").attr("class","form-group has-error");
			     			$("#agespan").attr("class","input-group-addon danger");
			     			$("#ageicon").attr("class","glyphicon glyphicon-remove");
		    	}else{
		    		$("#agecheck").attr("class","form-group has-success");
	     			$("#agespan").attr("class","input-group-addon success");
	     			$("#ageicon").attr("class","glyphicon glyphicon-ok");
		    	}
		    });
	    
	    $('#phoneinput').keyup( function() {
		       var that = this;
		       
		    	if($(that).val().length != 11){
		     			  $("#phonecheck").attr("class","form-group has-error");
			     			$("#phonespan").attr("class","input-group-addon danger");
			     			$("#phoneicon").attr("class","glyphicon glyphicon-remove");
		    	}else{
		    		$("#phonecheck").attr("class","form-group has-success");
	     			$("#phonespan").attr("class","input-group-addon success");
	     			$("#phoneicon").attr("class","glyphicon glyphicon-ok");
		    	}
		    });

          
       });
		
    
    </script>

    
  </body>
       <!-- footer.jsp 시작 -->
   <%@ include file="./footer.jsp"%>
   <!-- footer.jsp 끝 -->
</html>