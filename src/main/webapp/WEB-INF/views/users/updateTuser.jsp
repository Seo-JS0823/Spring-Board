<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<h2>유저 정보 수정</h2>
	<form action="/users/update" method="post">
		<table>
			<tr>
				<td>회원 이름</td>
				<td><input type="text" name="username" maxlength="10" value="${target.username}" readonly/></td>
			</tr>
			<tr>
				<td>회원 아이디</td>
				<td><input type="text" name="userid" value="${target.userid}" readonly/></td>
			</tr>
			<tr>
				<td>회원 비밀번호</td>
				<td><input type="password" name="passwd" value="${target.passwd}" readonly/></td>
			</tr>
			<tr>
				<td>회원 이메일</td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="정보 수정"/>
				</td>
			</tr>
		</table>
	</form>
</main>
<script>
	const formEl = document.querySelector('form');
	
	formEl.addEventListener('submit', function(e) {
		const usernameEl = document.querySelector('[name="username"]');
		const useridEl = document.querySelector('[name="userid"]');
		const passwdEl = document.querySelector('[name="passwd"]');
		const emailEl = document.querySelector('[name="email"]');
		
		if(usernameEl.value.trim() == '') {
			alert('이름을 입력하세요.');
			e.stopPropagation();
			e.preventDefault();
			
			return false;
		}
		
		if(useridEl.value.trim() == '') {
			alert('아이디를 입력하세요.');
			e.stopPropagation();
			e.preventDefault();
			
			return false;
		}
		
		if(passwdEl.value.trim() == '') {
			alert('비밀번호를 입력하세요.');
			e.stopPropagation();
			e.preventDefault();
			
			return false;
		}
		
		if(emailEl.value.trim() == '') {
			alert('이메일을 입력하세요');
			e.stopPropagation();
			e.preventDefault();
			
			return false;
		}
		
	});
</script>
</body>
</html>