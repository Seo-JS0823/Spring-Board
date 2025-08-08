<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Come Back Home</title>
<link rel="stylesheet" href="/css/common.css"/>
<style>
	.errorLogin {
		width: 30%;
		max-width: 600px;
		min-width: 600px;
		padding: 50px;
		background-color: gray;
		display: flex;
		vertical-align: middle;
		align-items: flex-start;
		flex-direction: column;
		white-space: nowrap;
	}
	.login-box {
		display: flex;
		vertical-align: middle;
		align-items: center;
		padding: 10px;
	}
	.login-box input {
		width: 250px;
		margin-left: 10px;
		border-style: none;
		height: 30px;
		border-radius: 12px;
		padding-left: 8px;
	}
	.login-box label {
		width: 70px;
	}
	.login-btn {
		width: 350px;
		display:flext;
		margin-top: 15px;
		vertical-align: middle;
		align-items: flex-end;
		text-align: right;
		padding-right: 15px;
	}
	.login-btn:hover {
			
	}
	.login-btn [type=submit] {
		width: 100px;
		height: 30px;
		border-radius: 12px;
		border-style: none;
		background-color: lightgreen;
	}
	a {
		text-decoration: none;
		padding: 8px;
		border-style: none;
		border-radius: 12px;
		background-color: red;
		font-size: 25px;
		color: black;
	}
	a:hover {
		background-color: black;
		color: red;
		font-size: 30px;
	}
</style>
</head>
<body>
<header>
</header>
<main class="errorLogin">
	<h2>로그인 에러 입니다.</h2>	
	<form action="/users/login" method="post">
		<div class="login-box">
			<label>아이디</label>
			<input type="text" name="userid" placeholder="아이디를 입력하세요."/>
		</div>
		<div class="login-box">
			<label>비밀번호</label>
			<input type="password" name="passwd" placeholder="비밀번호를 입력하세요."/>
		</div>
		<div class="login-btn">
			<input type="submit" value="로그인"/>
		</div>
		<a href="/">홈으로 돌아가기</a>
	</form>
</main>
<script>
	alert('로그인에 실패하였습니다. 다시 입력해주세요.');
	const formEl = document.querySelector('form');
	
	formEl.addEventListener('submit', function(e) {
		const useridEl = document.querySelector('[name=userid]');
		const passwdEl = document.querySelector('[name=passwd]');
		
		if(useridEl.value.trim() == '') {
			alert('아이디를 입력하세요.');
			e.preventDefault();
			
			return false;
		}
		
		if(passwdEl.value.trim() == '') {
			alert('비밀번호를 입력하세요.');
			e.preventDefault();
			
			return false;
		}
		
	});
</script>
</body>
</html>