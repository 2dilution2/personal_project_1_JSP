<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/common.css">
    <title>Acoustic</title>
<script>
	function init() {
	    // userPasswordCk 엘리먼트 가져오기
	    const pwConfirmInput = document.getElementById('member_pw_check');
	    const pwInput = document.getElementById('member_pw');
	    // 엘리먼트에 이벤트 리스너 등록
	    pwConfirmInput.addEventListener('keyup', isSame);
	    pwInput.addEventListener('keyup', isSame);
	}
	function isSame() {
	    var pw = document.getElementById('member_pw').value;
	    var confirmPW = document.getElementById('member_pw_check').value;

	    // 비밀번호 길이 검사
	    if (pw.length < 6 || pw.length > 20) {
	        if (pw !== '') {
	            document.getElementById('long').innerHTML = '비밀번호는 6글자 이상, 20글자 이하만 이용 가능합니다.';
	            document.getElementById('long').style.color = 'red';
	            document.getElementById('same').innerHTML = '';
	        } else {
	            document.getElementById('long').innerHTML = '';
	        }
	    } else {
	        document.getElementById('long').innerHTML = '';

	        // 비밀번호 일치 검사
	        if (document.getElementById('member_pw').value != '' && document.getElementById('member_pw_check').value != '') {
	            if (document.getElementById('member_pw').value == document.getElementById('member_pw_check').value) {
	                document.getElementById('same').innerHTML = '비밀번호가 일치합니다.';
	                document.getElementById('same').style.color = 'blue';
	            } else {
	                document.getElementById('same').innerHTML = '비밀번호가 일치하지 않습니다.';
	                document.getElementById('same').style.color = 'red';
	            }
	        }
	    }
	}


	
	// init 함수를 실행하여 페이지 로드 시 수행되도록 함
	window.onload = init;

	function validateForm() {
		const userID = document.getElementById("member_id").value;
	    const userPassword = document.getElementById("member_pw").value;
	    const userPasswordCk = document.getElementById("member_pw_check").value;
	    const userName = document.getElementById("member_name").value;
	    const userNick = document.getElementById("member_nick").value;
	    const userNumber2 = document.getElementById("member_phone_mid").value;
	    const userNumber3 = document.getElementById("member_phone_end").value;
	    const agree_terms = document.getElementsByName("terms_of_use");
	    const agree_personal_info = document.getElementsByName("consent_to_collection_and_use");

	    // 입력된 모든 값이 존재하는지 확인합니다.
	    if (!userID) {
	        alert("아이디를 입력하세요.");
	        return false;
	    }
	    if (!userPasswordCk) {
	        alert("비밀번호를 입력하세요.");
	        return false;
	    }
	    if (userPasswordCk !== userPassword) {
	    	alert("비밀번호가 일치하지 않습니다.");
	        return false;
		}
	    if (!userName) {
	        alert("이름을 입력하세요.");
	        return false;
	    }
	    if (!userNick) {
	        alert("닉네임을 입력하세요.");
	        return false;
	    }
	    if (!userNumber2) {
	        alert("휴대폰 번호를 전부 입력하세요.");
	        return false;
	    }
	    if (!userNumber3) {
	        alert("휴대폰 번호를 전부 입력하세요.");
	        return false;
	    }

	    if (agree_terms[0].checked == false) {
	      alert("이용약관에 동의해주세요.");
	      return false;
	    }
	
	    if (agree_personal_info[0].checked == false) {
	      alert("개인정보 수집 이용에 동의해주세요.");
	      return false;
	    }
	
	    return true;
	}
</script>
</head>
<body>
	<header>
        <div class="container_h">
            <h1><a href="main.jsp">Acoustic</a></h1>
            <nav>
                <ul class="header_list">
                    <li class="hd_member_tt">
                        <a href="login.jsp">log in</a>
                        <a href="join.jsp">join</a>
                        <a href="wishlist.jsp">wishlist</a>
                        <a href="cart.jsp">cart</a>
                    </li>
                    <li class="hd_page_tt">
                        <a href="new_arrival.jsp">new arrival</a>
                        <a href="acoustic.jsp">acoustic</a>
                        <a href="clasic.jsp">clasic</a>
                        <a href="electric.jsp">electric</a>
                        <a href="accessary.jsp">accessary</a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
	<div class="bar">
        <h2 class="head_tt">Join</h2>
    </div>
    <section class="join_input">
	    <form method="post" action="joinAction.jsp" onsubmit="return validateForm()">
	    	<table>
	            <tr class="join_id">
	                <th>
	                    아이디
	                    <img src="img/ico_required.gif" alt="필수입력">
	                </th>
	                <td>
	                    <input id="member_id" type="text" name="userID" maxlength="20">
	                    <input type="button" value="중복확인">
	                </td>
	            </tr>
	             <tr class="join_pw">
	                <th>
	                    비밀번호
	                    <img src="img/ico_required.gif" alt="필수입력">
	                </th>
	                <td>
	                    <input id="member_pw" type="password" name="userPassword" maxlength="20" onkeyup="isSame()">
	                    <div id="long"></div>
	                </td>
	            </tr>
	            <tr class="join_pw_ck">
	                <th>
	                    비밀번호 확인
	                    <img src="img/ico_required.gif" alt="필수입력">
	                </th>
	                <td>
	                    <input id="member_pw_check" type="password" name="userPasswordCk" maxlength="20" onkeyup="isSame()">
	                    <div id="same"></div>
	                </td>
	            </tr>
	            <tr class="join_name">
	                <th>
	                    이름
	                    <img src="img/ico_required.gif" alt="필수입력">
	                </th>
	                <td>
	                    <input id="member_name" type="text" name="userName" maxlength="10">
	                </td>
	            </tr>
	            <tr class="join_nick">
	                <th>
	                    닉네임
	                    <img src="img/ico_required.gif" alt="필수입력">
	                </th>
	                <td>
	                    <input id="member_nick" type="text" name="userNick" maxlength="10">
	                </td>
	            </tr>
	            <tr class="join_num">
	                <th>
	                    휴대전화
	                    <img src="img/ico_required.gif" alt="필수입력">
	                </th>
	                <td>
	                    <select id="member_phone_st" name="userNumber1">
	                        <option>010</option>
	                        <option>011</option>
	                        <option>017</option>
	                        <option>016</option>
	                        <option>070</option>
	                    </select>
	                    -
	                    <input id="member_phone_mid" type="text" name="userNumber2" maxlength="4">
	                    -
	                    <input id="member_phone_end" type="text" name="userNumber3" maxlength="4">
	                </td>
	            </tr>
	            <tr class="join_mail">
	                <th>
	                    이메일
	                </th>
	                <td>
	                    <input type="email" id="member_email" type="text" name="userEmail">
	                </td>
	            </tr>
	        </table>
        <div class="agree">
            <div>
                <input type="checkbox" name="terms_of_use" id="terms">
                [필수] 이용약관 동의
            </div>
            <div>
                <input type="checkbox" name="consent_to_collection_and_use" id="consent">
                [필수] 개인정보 수집 이용 동의
            </div>
        </div>
            <div>
                <input type="submit" class="join_btn" value="Join">
            </div>
        <div class="social_join">
            <ul>
                <li>
                    <a href="#" onclick="">
                        <img src="img/social-1.png" alt="구글 회원가입">
                    </a>
                </li>
                <li>
                    <a href="#" onclick="">
                        <img src="img/social-2.png" alt="카카오 회원가입">
                    </a>
                </li>
                <li>
                    <a href="#" onclick="">
                        <img src="img/social-3.png" alt="네이버 회원가입">
                    </a>
                </li>
            </ul>
        </div>
      	</form>
    </section>
    <footer>
        <div class="container_f">
            <ul class="footer_list">
                <li class="terms_f">
                <a href="#" class="footer_tt_1">이용약관</a>
                |
                <a href="#" class="footer_tt_2">개인정보취급방침</a>
                |
                <a href="#" class="footer_tt_3">이용안내</a>
                </li>
                <li class="contact_us_tt">
                    <p>Contact us</p>
                </li>
                <li class="csnum">
                    <span class="cs">고객센터 </span>
                    <span class="num">1588-0000</span>
                </li>
            </ul>
        </div>
    </footer>
</body>
</html>