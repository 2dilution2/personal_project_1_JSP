<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="review.ReviewDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%	request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="review" class="review.Review" scope="page"/>
<jsp:setProperty name="review" property="reviewTitle" />
<jsp:setProperty name="review" property="reviewContent" />
<jsp:setProperty name="review" property="reviewRating" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Acoustic</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('데이터베이스 오류.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			ReviewDAO reviewDAO = new ReviewDAO();
			 int result = reviewDAO.write(review.getReviewTitle(), userID, review.getReviewRating(), review.getReviewContent());
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('글쓰기에 실패하였습니다.')");
				script.println("history.back()");
				script.println("</script>");
			} else {
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("window.close()");
				script.println("</script>");
			}
			reviewDAO.close();
		}
		
	%>
</body>
</html>