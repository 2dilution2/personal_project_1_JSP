<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/common.css">
    <title>Acoustic</title>
</head>
<body>
	<header>
        <div class="container_h">
            <h1><a href="index.jsp">Acoustic</a></h1>
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
        <table>
            <tr class="join_id">
                <th>
                    아이디
                    <img src="img/ico_required.gif" alt="필수입력">
                </th>
                <td>
                    <input id="member_id" type="text">
                    <input type="button" value="중복확인">
                </td>
            </tr>
            <tr class="join_pw">
                <th>
                    비밀번호
                    <img src="img/ico_required.gif" alt="필수입력">
                </th>
                <td>
                    <input id="member_pw" type="password">
                </td>
            </tr>
            <tr class="join_pw_ck">
                <th>
                    비밀번호 확인
                    <img src="img/ico_required.gif" alt="필수입력">
                </th>
                <td>
                    <input id="member_pw_check" type="password">
                </td>
            </tr>
            <tr class="join_name">
                <th>
                    이름
                    <img src="img/ico_required.gif" alt="필수입력">
                </th>
                <td>
                    <input id="member_name" type="text">
                </td>
            </tr>
            <tr class="join_num">
                <th>
                    휴대전화
                    <img src="img/ico_required.gif" alt="필수입력">
                </th>
                <td>
                    <select name="member_phone" id="member_phone_st">
                        <option>010</option>
                        <option>011</option>
                        <option>017</option>
                        <option>016</option>
                        <option>070</option>
                    </select>
                    -
                    <input id="member_phone_mid" type="text">
                    -
                    <input id="member_phone_end" type="text">
                </td>
            </tr>
            <tr class="join_mail">
                <th>
                    이메일
                </th>
                <td>
                    <input id="member_email" type="text">
                    @
                    <select name="member_email_domain" id="member_email_domain">
                        <option>gmail.com</option>
                        <option>naver.com</option>
                        <option>kakao.com</option>
                        <option>daum.net</option>
                    </select>
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
            <div class="join_btn">
                <a href="#none" class="bk_btn_2" onclick="">Join</a>
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