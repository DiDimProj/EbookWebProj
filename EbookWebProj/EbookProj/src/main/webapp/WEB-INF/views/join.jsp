<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
	<!-- header.jsp 시작 -->
	<%@ include file="./header.jsp"%>
	<!-- header.jsp 끝 -->
  <body>
  
  	 <hr>
	<div class="well well-lg" style="width: 50%; margin: 0 auto 0 auto; min-width: 400px;">
    <h4 class="text-primary">회원가입</h4>
	</div>
  <br><br>
    <form role="form">    
	    <div class="well well-lg" style="width: 50%; margin: 0 auto 0 auto; min-width: 400px;">    
	    <div class="form-group">  
	        <label for="emailaddress">아이디</label>
	        <input type="email" class="form-control" placeholder="아이디"> 
	    </div> 
	     <div class="form-group">  
	        <label for="emailaddress">비밀번호</label>
	        <input type="email" class="form-control" placeholder="비밀번호"> 
	    </div> 
	    </div>
	  <br><br>
	    <div class="well well-lg" style="width: 50%; margin: 0 auto 0 auto; min-width: 400px;">
	    <div class="form-group">   
	        <label for="Name">이름</label>
	        <input type="text" class="form-control" placeholder="이름"> 
	    </div> 
	     <div class="form-group">  
	        <label for="emailaddress">phone number</label>
	        <input type="email" class="form-control" placeholder="phone number"> 
	    </div> 
	     <div class="form-group">  
	        <label for="emailaddress">email</label>
	        <input type="email" class="form-control" placeholder="email"> 
	    </div>
	     </div> 
	    <div class="well well-lg" style="width: 50%; margin: 0 auto 0 auto; min-width: 400px;">
	     <h4 class="text-primary">Information</h4>
	     <h5> 소설 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 추리
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 호러
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 연애
        </label>
        <h5> 기술 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> IT
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 전자/전기
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 건축
        </label>
        <h5> 만화 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 코믹
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 성인
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 판타지
        </label>
        <h5> 경제/경영 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 마케팅
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 재테크
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 창업
        </label>
        <h5> 순수과학 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 수학
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 천체/물리
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 화학
        </label>
        <h5> 예체능 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 음악
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 미술
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 체육
        </label>
        <h5> 자기계발 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 인간관계
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 성공/처세
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 화술/협상
        </label>
        <h5> 역사 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 한국사
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 세계사
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 신화
        </label>
        <h5> 종교 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 불교
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 첝주교
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 기독교
        </label>
        <h5> 언어 </h5>  
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox1" value="option1"> 한국어
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox2" value="option2"> 영어
        </label>
        <label class="checkbox-inline">
          <input type="checkbox" id="inlineCheckbox3" value="option3"> 중국어
        </label>
	      
	    <div class="form-group">     
	        <button type="submit"> 확인</button>    
	    
	    </div>  
	    </div>
                
    </form>
	 
     <hr>
  	<!-- footer.jsp 시작 -->
	<%@ include file="./footer.jsp"%>
	<!-- footer.jsp 끝 -->
  </body>
</html>