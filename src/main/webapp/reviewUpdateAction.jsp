<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="review.Review" %>
<%@ page import="review.ReviewDAO" %>
<%	request.setCharacterEncoding("UTF-8"); %>
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
		} 
		int reviewID = 0;
		if(request.getParameter("reviewID") != null){
			reviewID = Integer.parseInt(request.getParameter("reviewID"));
		}	
		if(reviewID == 0){
			PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('유효하지 않은 글입니다.')");
	        script.println("window.close();");
	        script.println("</script>");
		}
		Review review = new ReviewDAO().getReview(reviewID);
		if(!userID.equals(review.getUserNick())){
			PrintWriter script = response.getWriter();
	        script.println("<script>");
	        script.println("alert('권한이 없습니다.')");
	        script.println("window.close();");
	        script.println("</script>");
		} else {
			ReviewDAO reviewDAO = new ReviewDAO();
			int result = reviewDAO.write(request.getParameter("reviewTitle"), userID, Integer.parseInt(request.getParameter("reviewRating")), request.getParameter("reviewContent"));
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