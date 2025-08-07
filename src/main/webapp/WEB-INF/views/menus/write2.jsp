<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css"/>
<style>
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
	<main>
		<h2>메뉴 추가</h2>
		<form action="/menus/write2" method="post">
			<table>
				<tr>
					<td>메뉴 이름</td>
					<td><input type="text" name="menu_name"/></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="등록"/>
					</td>
				</tr>
			</table>
		</form>
	</main>
	<script>
		const formEl = document.querySelector('form');
		
		formEl.addEventListener('submit', function(e) {
			const menu_nameEl = document.querySelector('[name="menu_name"]');
			
			if(menu_nameEl.value.trim() == '') {
				alert('메뉴 이름을 입력하세요.');
				e.stopPropagation();
				e.preventDefault();

				return false;
			}
		});
	</script>
</body>
</html>