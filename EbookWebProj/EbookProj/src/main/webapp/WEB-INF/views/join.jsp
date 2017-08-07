<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<!-- header.jsp 시작 -->
<%@ include file="./header.jsp"%>
<!-- header.jsp 끝 -->
<style>
.colorgraph {
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -moz-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: -o-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
  background-image: linear-gradient(to right, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
</style>
<body>
<div class="container">

<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3" style="padding-top: 30px; padding-bottom: 10px;">
		<form role="form" method="post" action="insert.do">
			<br><br>
			<h2>회원가입 <small>정확한 정보를 입력하세요</small></h2>
			<hr class="colorgraph">
			
			<div class="form-group">
				<input type="text" name="userid" id="userid" class="form-control input-lg" placeholder="아이디" tabindex="1">
			</div>
			<div class="form-group">
                 <input type="text" name="password" id="password" class="form-control input-lg" placeholder="비밀번호" tabindex="2">
			</div>
			
			<div class="form-group">
				<input type="text" name="name" id="name" class="form-control input-lg" placeholder="이름" tabindex="4">
			</div>
	
			<div class="form-group">
				<input type="text" name="age" id="age" class="form-control input-lg" placeholder="나이" tabindex="5">
			</div>
					
			<div class="form-group">
				<input type="text" name="phone" id="phone" class="form-control input-lg" placeholder="핸드폰 번호" tabindex="6">
			</div>
		
		<h4> INFORMATION ABOUT YOU </h4>
		<div class="row">
           <div class="col-md-5">
			
		<h5> 1.소설</h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" name=chk value="option1"> 추리
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2"name=chk  value="option2"> 호러
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" name=chk value="option3"> 연애
        </label>	
        
        <h5> 2.기술 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox4" name=chk value="option4"> IT
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox5" name=chk value="option5"> 전자/전기
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox6" name=chk value="option6"> 건축
        </label>
        
        <h5> 3.만화 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox7" name=chk value="option7"> 코믹
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox8" name=chk value="option8"> 성인
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox9" name=chk value="option9"> 판타지
        </label>
        
        <h5> 4.경제/경영 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox10" name=chk value="option10"> 마케팅
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox11" name=chk value="option11"> 재테크
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox12" name=chk value="option12"> 창업
        </label>
        
        <h5> 5.순수과학 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox13" name=chk value="option13"> 수학
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox14" name=chk value="option14"> 천체/물리
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox15" name=chk value="option15"> 화학
        </label>
        
        </div>
        <div class="col-md-7">
        
        <h5> 6.예체능 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox16" name=chk value="option16"> 음악
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox17" name=chk value="option17"> 미술
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox18" name=chk value="option18"> 체육
        </label>
  
         <h5> 7.자기계발 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox19" name=chk value="option19">인간관계
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox20" name=chk value="option20">성공/처세
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox21" name=chk value="option21">화술/협상
        </label>
        
         <h5> 8.역사 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox22" name=chk value="option22"> 한국사
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox23" name=chk value="option23"> 세계사
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox24" name=chk value="option24"> 신화
        </label>
        
         <h5> 9.종교 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox25" name=chk value="option25"> 불교
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox26" name=chk value="option26"> 천주교
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox27" name=chk value="option27"> 기독교
        </label>
			
		 <h5> 10.언어 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox28" name=chk value="option28"> 한국어
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox29" name=chk value="option29"> 영어
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox30" name=chk value="option30"> 중국어
        </label>
        	
		</div>
			</div>	
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 center" >

				</div>
			</div>
			
					<button type="submit" class="btn btn-primary btn-block btn-lg" tabindex="7"> 등록 </button>
			
		</form>
			</div>
</div>
</div>


	<hr>
	<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->
</body>


<script> 

 
 
/*  $(document).ready(function(){
	$("#insert").click(function(){		
		alert("회원가입 되었습니다.");
		location.href="redirect:/main.do" ;
	});
});	  */

 
/* var DATA;
$('input:checkbox[name=chk]').each(function() {
   if($(this).is(':checked'))
      DATA += "|"+($(this).val());
}); */

 
/* function selectDelRow() {

	var chk = document.getElementsByName("row[]"); // 체크박스객체를 담는다

	var len = chk.length;    //체크박스의 전체 개수

	var checkRow = '';      //체크된 체크박스의 value를 담기위한 변수

	var checkCnt = 0;        //체크된 체크박스의 개수

	var checkLast = '';      //체크된 체크박스 중 마지막 체크박스의 인덱스를 담기위한 변수

	var rowid = '';             //체크된 체크박스의 모든 value 값을 담는다

	var cnt = 0;                 



	for(var i=0; i<len; i++){

	if(chk[i].checked == true){

	checkCnt++;        //체크된 체크박스의 개수

	checkLast = i;     //체크된 체크박스의 인덱스

	}

	} 



	for(var i=0; i<len; i++){

	if(chk[i].checked == true){  //체크가 되어있는 값 구분

	checkRow = chk[i].value;

	            	

	if(checkCnt == 1){                            //체크된 체크박스의 개수가 한 개 일때,

	rowid += "'"+checkRow+"'";        //'value'의 형태 (뒤에 ,(콤마)가 붙지않게)

	}else{                                            //체크된 체크박스의 개수가 여러 개 일때,

	if(i == checkLast){                     //체크된 체크박스 중 마지막 체크박스일 때,

	rowid += "'"+checkRow+"'";  //'value'의 형태 (뒤에 ,(콤마)가 붙지않게)

	}else{

	rowid += "'"+checkRow+"',";	 //'value',의 형태 (뒤에 ,(콤마)가 붙게)         			

	}

						

	}

	cnt++;

	checkRow = '';    //checkRow초기화.

	}



	alert(rowid);    //'value1', 'value2', 'value3' 의 형태로 출력된다.

	}

 */



</script>


</html>