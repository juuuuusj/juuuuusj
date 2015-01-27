<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/header.jsp" %>    
<script>

function join_check(){
	/*********************************************************
	1.아이디 체크
		- 아이디 자리수 체크
		- 한글 / 특수문자 못하게
	**********************************************************/
	var frm = document.joinfrm;
		
	if(frm.user_id.value.length < 4  || frm.user_id.value.length > 12 )
	{ // 4자리 이하 12자 이상이면 오류 
		alert('아이디는 3글자 이상 12글자 이하로 입력해주세요');
		frm.user_id.value="";
		frm.user_id.focus();
		return false
	} 

	for( var i= 0; i< frm.user_id.value.length; i++ ) 
	{ 
		var chk = frm.user_id.value.charAt(i); // id 벨류값을 한자리씩 확인
		var check = /^[a-zA-Z0-9]+$/;
		
		if( !check.test(chk) )
		{ 
			alert("특수문자 또는 한글을 사용할 수 없습니다");
			frm.user_id.value="";
			frm.user_id.focus();
			return false
		}
	}

	/**************************************************************
	2.비밀번호 체크 
	- 비밀번호/ 비밀번호 확인이 서로 맞는지 체크
	- 비밀번호 길이 제한
	***************************************************************/
	
	if(frm.user_pass.value.length < 6 || frm.user_pass.value.length > 18 )
	{
		alert("비밀번호는 6자리 이상 또는 18자리 이하로 입력해주세요.");
		frm.user_pass.value="";
		frm.user_pass.focus();
		return false
	}
	
	if( frm.user_pass.value != frm.user_pass2.value )
	{
		alert("비밀번호가 일치하지 않습니다.");
		frm.user_pass2.value="";
		frm.user_pass2.focus();
		return false
	}
	
	/*****************************************************************
	3.이름 체크
	- 한글 이외는 못쓴다.
	*****************************************************************/
	
	if(frm.user_name.value.length < 2  || frm.user_name.value.length > 64 )
	{ // 4자리 이하 12자 이상이면 오류 
		alert('이름이 너무 짧거나 깁니다.');
		frm.user_name.value="";
		frm.user_name.focus();
		return false
	} 
	
	for( var i= 0; i< frm.user_name.value.length; i++ ) 
	{ 
		var chk = frm.user_name.value.charAt(i); // name 벨류값을 한자리씩 확인
		var check = /([^가-힣ㄱ-ㅎㅏ-ㅣ\x20])/i; 
		
		if( check.test(chk) )
		{ 
			alert("한글이 아닙니다.");
			frm.user_name.value="";
			frm.user_name.focus();
			return false
		}
	}
	
	
	/*****************************************************************
	4.이메일 체크
	- 이메일 형식 체크
	*****************************************************************/

	
	var mcheck = /^[_\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\.)+[a-zA-Z]{2,6}$/i;
	
	if( !mcheck.test( frm.user_email.value ) ){
			alert("이메일 형식이 잘 못 입력 되었습니다.");
			frm.user_email.value="";
			frm.user_emall.focus();
			return false;
		}

	/*********************************************************************
	5.중복체크 여부확인
	
	**********************************************************************/
	if( document.getElementById("is_check").value == 'N' ){
		alert('아이디 중복 체크를 해주세요.');
		frm.user_id.focus();
		return false;
	}else{
		frm.submit();
	}
		
}


</script>

<div id="signUp_content">
	<div id="content">
	
	<fieldset> <legend>회원가입</legend>
	
		<form id="join"  class="form-horizontal" name="joinfrm" method="post" action="./join_form.php" > 

		  <div class="form-group">
		 아이디<input type="text" class="form-control"
		 					 placeholder="ID를 입력하세요"autofocus id="input_id" name="user_id" style="width:250px;" value="" required />
		  <button type="button" id="id_check" class="btn btn-warning" onclick="confirmID()">중복확인</button>
		  <span id="check_id"></span>
		  <input type="hidden" id="is_check" name="is_check" value="N" />
			</div>
		   
		   <div class="form-group">
		   비밀번호<input type="password" class="form-control" 
		   						placeholder="비밀번호를 입력하세요" autofocus name="user_pass" style="width:250px;" required /><br />
		   </div>
		   
		   <div class="form-group">
		   비밀번호 확인<input type="password" class="form-control" 
		   								placeholder="위에서 입력한 비밀번호를 입력하세요" autofocus name="user_pass2" style="width:250px;" required/><br />
		   </div>
		   
		   <div class="form-group">
		   이름<input type="text" class="form-control"
		   							 placeholder="이름을 입력하세요"autofocus name="user_name" style="width:250px;" value="" required /><br />
		  </div>
		 
		   <div class="form-group">
		   이메일 주소<input type="text" class="form-control" 
		   							placeholder="이메일을 입력하세요" autofocus name="user_email" style="width:250px;" required /><br />
		   </div>
		   
		   <div id="button_div">
		   <input type="submit" class="btn btn-success" onclick="return join_check()" value="회원가입">
		   <input type="reset" class="btn btn-warning" value="재작성">
		   <button type="button" class="btn btn-danger" onclick="history.back(-1)">되돌아가기</button>
		   </div>
		  </form>
	</fieldset>
</div>
</div>

<%@ include file="/WEB-INF/view/footer.jsp" %>    