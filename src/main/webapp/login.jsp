<%@ page language="java" contentType="text/html; charset=UTF-8"
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
        <h2 class="head_tt">Log in</h2>
    </div>
    <section class="login_input">
    	<form method="post" action="loginAction.jsp">
	        <table class="login_input_tt">
	            <tr>
	                <td class="label">
	                    <span>ID</span>
	                </td>
	                <td>
	                    <input class="login_member_id" type="text" name="userID" maxlength="20">
	                </td>
	            </tr>
	            <tr>
	                <td class="label">
	                    <span>PW</span>
	                </td>
	                <td>
	                    <input class="login_member_pw" type="password" name="userPassword" maxlength="20">
	                </td>
	            </tr>
	        </table>
	        <div>
	        	<input type="hidden" name="loginFrom" value="login.jsp">
	            <input type="submit" class="login_btn" value="Log in">
	        </div>
	        <ul class="not_login">
	            <li>
	                <a href="find_id_pw.html">FIND ID/PW</a>|
	            </li>
	            <li>
	                <a href="join.jsp">JOIN</a>
	            </li>
	        </ul>
	        <div class="social_login">
	            <ul>
	                <li>
	                    <a href="#" onclick="">
	                        <img src="img/social-1.png" alt="구글 로그인">
	                    </a>
	                </li>
	                <li>
	                    <a href="#" onclick="">
	                        <img src="img/social-2.png" alt="카카오 로그인">
	                    </a>
	                </li>
	                <li>
	                    <a href="#" onclick="">
	                        <img src="img/social-3.png" alt="네이버 로그인">
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