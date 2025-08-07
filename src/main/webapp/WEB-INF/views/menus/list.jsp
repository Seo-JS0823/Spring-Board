<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getMenuList</title>
<link rel="icon" type="image/jpg" href="/img/핑구1.jpg"/>
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
<main>
	<h2>메뉴 목록</h2>
	<table>
		<tr>
			<th>Menu ID</th>
			<th>Menu Name</th>
			<th>Menu SeQ</th>
			<th>Delete</th>
			<th>Modify</th>
		</tr>
		<tr>
			<td colspan="5" style="background: silver; height: 25px"></td>
		</tr>
		<c:forEach var="item" items="${menuList}">
		<tr>
			<td>${item.menu_id}</td>
			<td>${item.menu_name}</td>
			<td>${item.menu_seq}</td>
			<td><!--<a href="/menus/delete?menu_id=${item.menu_id}">삭제</a>--></td>
			<td><a href="/menus/updateform?menu_id=${item.menu_id}">수정</a></td>
		</tr>
		</c:forEach>
		<tr>
			<th colspan="5">
				<a href="/menus/writeform2">메뉴 추가</a>
			</th>
		</tr>
	</table>
</main>
</body>
</html>