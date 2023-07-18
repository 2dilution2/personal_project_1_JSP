<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/popup.css">
<title>Review</title>
</head>
<body class="pop">
	<div class="bar-pop">
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
	        	<input type="hidden" name="loginFrom" value="loginPop.jsp">
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
</body>
</html>