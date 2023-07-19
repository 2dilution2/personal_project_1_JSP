<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="review.Review" %>
<%@ page import="review.ReviewDAO" %>
<%@ page import="users.Users" %>
<%@ page import="users.UsersDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/popup.css">
<title>Review</title>
</head>
<body class="pop">
	<%								
		String userID = null;
		String userNick = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}	
		int reviewID = 0;
		if(request.getParameter("reviewID") != null){
			reviewID = Integer.parseInt(request.getParameter("reviewID"));
		}	
		if(reviewID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지않은 글입니다.')");
			script.println("window.close()");
			script.println("</script>");
		}
		Review review = new ReviewDAO().getReview(reviewID);
		UsersDAO usersDAO = new UsersDAO();
			userNick = usersDAO.getUserNick(userID);
	%>
	<div class="bar-pop">
		<h2 class="head_tt">Review</h2>
	</div>
	<section>
		<div class="prod_review_view">
			<%
				if(userID != null && userID.equals(userNick)){
			%>
				<a href="review_update.jsp?reviewID=<%=reviewID %>">edit</a>	
				<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="review_deleteAction.jsp?reviewID=<%=reviewID %>">del</a>	
			<%		
				}
			%>
		</div>
			<table class="table_striped">
				<tr>	
					<td>Nick</td>
					<td colspan="2"><%= review.getUserNick() %></td>
				</tr>
				<tr>	
					<td>Rating</td>
					<td colspan="2"><%= review.getReviewRating() %></td>
				</tr>
				<tr>	
					<td>Date</td>
					<td colspan="2"><%= review.getReviewDate() %></td>
				</tr>
				<tr>
					<td style="width:20%;">Title</td>
					<td colspan="2" class="review review-title"><%= review.getReviewTitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("/n","<br>;") %></td>
				</tr>
				<tr>	
					<td>Comtent</td>
					<td colspan="2" class="review review-content">
					<% if(review.getReviewContent() == null){ %>
						내용없음
					<%} else { %>
						<%=review.getReviewContent().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("/n","<br>;") %> 
					<% }%>
					</td>
				</tr>
			</table>
	</section>
</body>

</html>
