<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css"/>
<style>
	.user-info {
		
	}
	
	td {
		padding: 10px;
		width: 700px;
		text-align: center;
	}
	
	td:last-child {
		text-align: right;
	}
	
	td:nth-of-type(1) {
		width: 200px;
	}
	
	input {
		width: 100%;
	}
	
	input[type=submit] {
		width: 200px;
	}
	
	#btnEmail, #btnPasswd {
		margin-left: 12px;
	}
</style>
</head>
<body>
<header>
	<h2><a href="/" id="home">ComeBack Home</a></h2>
	<a href="/menus/list">메뉴목록</a>
	<a href="/menus/writeform2">메뉴추가</a>
	<a href="/users/list">유저 목록</a>
	<a href="/users/addform">회원 가입</a>
</header>
<main>
	<h2>회원가입</h2>
	<form action="/users/add" method="post">
		<table>
			<tr>
				<td>회원 아이디</td>
				<td><input type="text" name="userid"/></td>
			</tr>
			<tr>
				<td>회원 비밀번호</td>
				<td>
					<input type="password" name="passwd"/>
					<button type="button" id="btnPasswd">비밀번호 확인</button>
				</td>
			</tr>
			<tr>
				<td>회원 이름</td>
				<td><input type="text" name="username" maxlength="10"/></td>
			</tr>
			<tr>
				<td>회원 이메일</td>
				<td>
					<input type="text" name="email"/>
					<button type="button" id="btnEmail">이메일 확인</button>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="회원가입"/>
				</td>
			</tr>
		</table>
	</form>
</main>
<script src="/js/login.js"></script>
</body>
</html>