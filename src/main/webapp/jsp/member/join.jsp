<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<h1>회원가입</h1>
	
	<script>
		function joinFormSubmit(form) {
			form.loginId.value = form.loginId.value.trim();
			form.loginPw.value = form.loginPw.value.trim();
			form.loginPwCheck.value = form.loginPwCheck.value.trim();
			form.name.value = form.name.value.trim();
			
			if (form.loginId.value.length == 0) {
				alert('아이디를 입력해주세요.');
				form.loginId.focus();
				return;
			}
			
			if (form.loginPw.value.length == 0) {
				alert('비밀번호를 입력해주세요.');
				form.loginPw.focus();
				return;
			}
			
			if (form.loginPwCheck.value.length == 0) {
				alert('비밀번호 확인을 입력해주세요.');
				form.loginPwCheck.focus();
				return;
			}
			
			if (form.name.value.length == 0) {
				alert('이름를 입력해주세요.');
				form.name.focus();
				return;
			}
			
			if (form.loginPw.value != form.loginPwCheck.value) {
				alert('비밀번호를 확인해주세요.');
				form.loginPw.value = null;
				form.loginPwCheck.value = null;
				form.loginPw.focus();
				return;
			}
			
			form.submit();
		}
	</script>
	
	<form action="doJoin" method="post" onsubmit="joinFormSubmit(this); return false;">
		<div>
			로그인 아이디 :<input name="loginId" type="text" placeholder="아이디를 입력해주세요." autocomplete="on"/>
		</div>
		<div>
			로그인 비밀번호 :<input name="loginPw" type="password" placeholder="비밀번호를 입력해주세요."/>
		</div>
		<div>
			로그인 비밀번호 확인 :<input name="loginPwCheck" type="password" placeholder="비밀번호 확인"/>
		</div>
		<div>
			이름 : <input name="name" type="text" placeholder="이름를 입력해주세요."/>
		</div>
		<div>
			<button>가입</button>
			<a href="../home/main">뒤로가기</a>
		</div>
	</form>
</body>
</html>