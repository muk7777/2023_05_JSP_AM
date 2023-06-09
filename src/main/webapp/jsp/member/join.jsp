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
	<form action="doJoin" method="post">
		<div>
			<input name="loginId" type="text" placeholder="아이디를 입력해주세요."/>
		</div>
		<div>
			<input name="loginPw" type="password" placeholder="비밀번호를 입력해주세요."/>
		</div>
		<div>
			<input name="loginPwCheck" type="password" placeholder="비밀번호 확인"/>
		</div>
		<div>
			<input name="name" type="text" placeholder="이름를 입력해주세요."/>
		</div>
		<div>
			<a href="../home/main">취소</a>
			<a href="doJoin" onclick="if(confirm('정말 삭제하시겠습니까?') == false) return false;">삭제</a>
		</div>
	</form>
</body>
</html>