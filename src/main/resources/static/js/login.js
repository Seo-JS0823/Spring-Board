const formEl = document.querySelector('form');
	
	/* 이메일 체크 확인 변수 */
	let email_check = false;
	
	/* 비밀번호 체크 확인 변수 */
	let passwd_check = false;
	
	/* 입력 폼 유효성 검사 */
	formEl.addEventListener('submit', function(e) {
		const useridEl = document.querySelector('[name=userid]');
		const passwdEl = document.querySelector('[name=passwd]');
		const usernameEl = document.querySelector('[name=username]');
		const emailEl = document.querySelector('[name=email]');
		
		/* 순서대로 체크 */
		if(useridEl.value.trim() == '') {
			alert('아이디를 입력해주세요.');
			e.preventDefault();
			return false;
		}
		
		if(passwdEl.value.trim() == '') {
			alert('패스워드를 입력해주세요.');
			e.preventDefault();
			return false;
		}
		
		if(!passwd_check) {
			alert('비밀번호 확인 버튼을 눌러주세요.');
			e.preventDefault();
			return false;
		}
		
		if(usernameEl.value.trim() == '') {
			alert('이름을 입력해주세요.');
			e.preventDefault();
			return false;
		}
		
		if(emailEl.value.trim() == '') {
			alert('이메일을 입력해주세요.');
			e.preventDefault();
			return false;
		}
		
		if(!email_check) {
			alert('이메일 확인 버튼을 눌러주세요.');
			e.preventDefault();
			return false;
		}
	});
	
	const btnEmailEl = document.querySelector('[id=btnEmail]');
	
	/*
	이메일 형식 유효성 검사(기본 이메일 형식 정규식)
	/^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/
	*/
	btnEmailEl.addEventListener('click', function() {
		const emailText = document.querySelector('[name=email]');
		const email = emailText.value.trim();
		
		const regex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
		
		if(regex.test(email)) {
			email_check = true;
			alert('올바른 이메일 형식입니다.');
		} else {
			email_check = false;
			alert('올바른 이메일 형식으로 입력하세요.');
		}
	});
	
	const btnPasswdEl = document.querySelector('[id=btnPasswd]');
	
	/*
	비밀번호 형식 유효성 검사(8~20자, 영대,영소,특수문자 1개 이상 포함)
	/^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&#.~_-])[A-Za-z\d@$!%*?&#.~_-]{8,20}$/	
	*/
	btnPasswdEl.addEventListener('click', function() {
		const passwdText = document.querySelector('[name=passwd]');
		const passwd = passwdText.value.trim();
		
		const regex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&#.~_-])[A-Za-z\d@$!%*?&#.~_-]{8,20}$/;
		
		if(regex.test(passwd)) {
			passwd_check = true;
			alert('올바른 비밀번호 형식입니다.');
		} else {
			passwd_check = false;
			alert('8~20자, 하나의 영 대·소문자 포함, 특수문자(@,#,$,%,^,&,*)를 포함해야 합니다.');
		}
	});
