<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getMenuList</title>
<link rel="icon" type="image/jpg" href="/img/핑구1.jpg"/>
<link rel="stylesheet" href="/css/common.css"/>
<style>
	@font-face {
	    font-family: 'YOnepickTTF-Bold';
	    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/2410-1@1.0/YOnepickTTF-Bold.woff2') format('woff2');
	    font-weight: 700;
	    font-style: normal;
	}
	aside {
		margin-left: 115px;
		margin-top: 200px;
		padding: 10px;
		width: 200px;
		height: 100vh;
		background-color: rgba(200,200,200, 0.5);
		text-align: center;
		display: inline-block;
		flex-direction: row;
		border-radius: 8px;
		white-space: nowrap;
	}
	aside h2 {
		margin: 0 auto;
	}
	
	aside a {
		display: block;
		margin-top: 20px;
		margin-bottom: 20px;
		padding: 5px 10px 5px 10px;
		background-color: rgba(255, 178, 217, 0.7);
		border-radius: 12px;
		color: black;
		text-decoration: none;
		font-size: 13px;
		font-family: 'YOnepickTTF-Bold';
	}
	
	aside a:hover {
		font-size: 17px;
		color: blue;
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
<aside>
	<h2>메뉴 목록</h2>
	<c:forEach var="menu" items="${menus}">
		<a href="/menus/${menu.menu_name}">${menu.menu_name}</a>
	</c:forEach>
</aside>
</body>
</html>