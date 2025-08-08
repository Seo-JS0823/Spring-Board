<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css"/>
<style>
	tr:first-child {
	background-color: #24F3A1;
	color: black;
	font-weight: bolder;
	font-size: 1.5em;
	/* SCSS 문법 - 별도 라이브러리 필요 */
		th {
			border-color: #24F3A1;
		}
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
	<h2>사용자 목록</h2>
	<table>
		<tr>
			<th>User ID</th>
			<th>User Password</th>
			<th>User Name</th>
			<th>E-mail</th>
			<th>User Point</th>
			<th colspan="3">Reg Date</th>
		</tr>
		<tr>
			<td colspan="8" style="background: silver; height: 25px"></td>
		</tr>
		<c:forEach var="item" items="${userList}">
			<c:if test="${uid == item.userid && pwd == item.passwd || uid == 'admin'}">
				<tr>
					<td>${item.userid} (${item.grade})</td>
					<td>${item.passwd}</td>
					<td>${item.username}</td>
					<td>${item.email}</td>
					<td>${item.upoint}</td>
					<td>${item.indate}</td>		
					<td><a href="/users/delete?userid=${item.userid}" class="del">삭제</a></td>
					<td><a href="/users/updateform?userid=${item.userid}">수정</a></td>
				</tr>
			</c:if>
		</c:forEach>
	</table>
</main>
<script>
	const delEls = document.querySelectorAll(".del");
	
	for(let i = 0; i < delEls.length; i++) {
		delEls[i].addEventListener('click', function(e) {
			if(confirm('진짤루?')) {
				return true;
			} else {
				e.preventDefault();
				return false;
			}
		});
	}
</script>
</body>
</html>