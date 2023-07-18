<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="users.UsersDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="users" class="users.Users" scope="page"/>
<jsp:setProperty name="users" property="userID" />
<jsp:setProperty name="users" property="userPassword" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acoustic</title>
</head>
<body>
    <%
    
        String userID = null;
        String loginFrom = request.getParameter("loginFrom"); // 어느 페이지에서 로그인을 시도했는지 확인하기 위한 값
        boolean isFromPop = "loginPop.jsp".equals(loginFrom); // check if login is from loginPop.jsp
        String goBackScript = isFromPop ? "window.close();" : "history.back();";

        if (session.getAttribute("userID") != null) {
            userID = (String) session.getAttribute("userID");
        }
        if (userID != null) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('이미 로그인이 되어있습니다.')");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");
        }
        UsersDAO usersDAO = new UsersDAO();
        int result = usersDAO.login(users.getUserID(), users.getUserPassword());
        PrintWriter script = response.getWriter();

        if (result == 1) {
        	String userNick = usersDAO.getUserNick(users.getUserID());
        	if(userNick!=null){
	            session.setAttribute("userID", users.getUserID());
	            session.setAttribute("userNick", users.getUserNick());
	            script.println("<script>");
	
	            if ("loginPop.jsp".equals(loginFrom)) {
	                script.println("opener.location.reload();"); // 부모 창 새로고침
	                script.println("window.close();"); // 팝업 닫기
	            } else {
	                script.println("location.href = 'main.jsp'");
	            }
	            script.println("</script>");
        	} else {
                script.println("<script>");
                script.println("alert('데이터베이스 오류가 발생하였습니다.')");
                script.println(goBackScript);
                script.println("</script>");
            }
        } else if(result == 0){
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다.')");
            script.println(goBackScript);
            script.println("</script>");
        } else if(result == -1){
            script.println("<script>");
            script.println("alert('존재하지않는 아이디입니다.')");
            script.println(goBackScript);
            script.println("</script>");
        } else if(result == -2){
            script.println("<script>");
            script.println("alert('데이터베이스 오류가 발생하였습니다.')");
            script.println(goBackScript);
            script.println("</script>");
        }
    %>
</body>
</html>
