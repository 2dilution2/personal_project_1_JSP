<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="users.UsersDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%	request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="users" class="users.Users" scope="page"/>
<jsp:setProperty name="users" property="userID" />
<jsp:setProperty name="users" property="userPassword" />
<jsp:setProperty name="users" property="userName" />
<jsp:setProperty name="users" property="userNick" />
<jsp:setProperty name="users" property="userNumber1" />
<jsp:setProperty name="users" property="userNumber2" />
<jsp:setProperty name="users" property="userNumber3" />
<jsp:setProperty name="users" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acoustic</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if(userID != null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인이 되어있습니다.')");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
		UsersDAO usersDAO = new UsersDAO();
		int result= usersDAO.join(users);
		if(result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하는 아이디가 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			session.setAttribute("userID", users.getUserID());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
	%>
</body>
</html>