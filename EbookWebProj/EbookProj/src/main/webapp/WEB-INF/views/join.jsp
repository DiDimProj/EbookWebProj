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
		<form role="form">
			<br><br>
			<h2>회원가입 <small>정확한 정보를 입력하세요</small></h2>
			<hr class="colorgraph">
			
			<div class="form-group">
				<input type="text" name="id" id="id" class="form-control input-lg" placeholder="아이디" tabindex="1">
			</div>
			<div class="row">	
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <input type="text" name="pwd" id="pwd" class="form-control input-lg" placeholder="비밀번호" tabindex="2">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" name="pwd_conform" id="pwd_conform" class="form-control input-lg" placeholder="비밀번확인" tabindex="3">
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<input type="text" name="name" id="name" class="form-control input-lg" placeholder="이름" tabindex="4">
			</div>
	
					<div class="form-group">
						<input type="text" name="birth" id="birth" class="form-control input-lg" placeholder="생일" tabindex="5">
					</div>
				
				
					<div class="form-group">
						<input type="email" name="email" id="email" class="form-control input-lg" placeholder="이메일" tabindex="6">
					</div>
		
		<div class="row">
           <div class="col-md-6">
			
		<h5> 1.소설</h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 추리
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 호러
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 연애
        </label>	
        
        <h5> 2.기술 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> IT
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 전자/전기
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 건축
        </label>
        
        <h5> 3.만화 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 코믹
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 성인
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 판타지
        </label>
        
        <h5> 4.경제/경영 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 마케팅
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 재테크
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 창업
        </label>
        
        <h5> 5.순수과학 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 수학
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 천체/물리
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 화학
        </label>
        
        </div>
        <div class="col-md-6  ">
        
        <h5> 6.예체능 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 음악
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 미술
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 체육
        </label>
  
         <h5> 7.자기계발 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 인간관계
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 성공/처세
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 화술/협상
        </label>
        
         <h5> 8.역사 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 한국사
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 세계사
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 신화
        </label>
        
         <h5> 9.종교 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 불교
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 천주교
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 기독교
        </label>
			
		 <h5> 10.언어 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 한국어
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 영어
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 중국어
        </label>
        	
		</div>
			</div>	
			
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 center" ><input type="submit" value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"></div>
				
			</div>
		</form>
	</div>
</div>


	<hr>
	<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->
</body>


</html>