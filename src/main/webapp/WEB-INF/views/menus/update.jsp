<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 업데이트</title>
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
		<h2>메뉴 수정</h2>
		<form action="/menus/update" method="post">
			<table>
				<tr>
					<td>메뉴 아이디</td>
					<td><input type="text" name="menu_id" value="${target.menu_id}" readonly/></td>
				</tr>
				<tr>
					<td>메뉴 이름</td>
					<td><input type="text" name="menu_name" value="${target.menu_name}"/></td>
				</tr>
				<tr>
					<td>메뉴 순서</td>
					<td><input type="text" name="menu_seq" value="${target.menu_seq}"/></td>
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
		/* formEl = document.querySelectorAll('form')[0] */
		const formEl = document.querySelector('form');
		
		formEl.addEventListener('submit', function(e) {
			const menu_idEl = document.querySelector('[name="menu_id"]');
			const menu_nameEl = document.querySelector('[name="menu_name"]');
			const menu_seqEl = document.querySelector('[name="menu_seq"]');
			
			if(menu_idEl.value.trim() == '') {
				alert('메뉴 아이디를 입력하세요.');
				e.stopPropagation();
				e.preventDefault();
				/*
				e.stopPropagation() : 이벤트 버블링 방지
				e.preventDefault()  : 이벤트 작동 취소
				jQuery에서는 retrun false가 알아서 위 메서드가 적용된다.
				JS에서는 위 메서드를 쳐줘야된다.
				*/
				return false;
			}
			
			if(menu_nameEl.value.trim() == '') {
				alert('메뉴 이름을 입력하세요.');
				e.stopPropagation();
				e.preventDefault();

				return false;
			}
			
			if(menu_seqEl.value.trim() == '') {
				alert('메뉴 번호를 입력하세요.');
				e.stopPropagation();
				e.preventDefault();
				
				return false;
			}
			
		});
	</script>
</body>
</html>