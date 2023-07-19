<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="review.Review" %>
<%@ page import="review.ReviewDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/popup.css">
<title>Review</title>
</head>
	<script>
	function validateForm() {
		const reviewTitle = document.getElementById("reviewTitle").value;
	
	    if (reviewTitle == "") {
	        alert("제목을 입력하세요.");
	        return false;
	    }
	    return true;
	}
	  window.onunload = function() {
	    if (window.opener && !window.opener.closed) {
	      window.opener.location.reload();
	    }
	}
	</script>
<body class="pop">
	<%
	String userID = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}	
	if(userID == null){
		PrintWriter script = response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을 하세요.')");
        script.println("window.close();");
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
	}
	%>

	<div class="bar-pop">
		<h2 class="head_tt">Review Edit</h2>
	</div>
	<section>
		<form method="post" action="reviewUpdateAction.jsp?reviewID=<%= reviewID %>" onsubmit="return validateForm()">
				<div class="prod_review_write">
					<span>Rating</span>
					<select name="reviewRating" >
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option selected>5</option>
					</select>
					<button type="submit" class="">REWRITE</button>
					<script>
						function windowCloseAndRefresh() {
							window.opener.location.reload(true);
							window.close();
					    }
					</script>
				</div>
				<table class="table_striped">
					<tr>
						<td><input type="text" class="review review-title" placeholder="Title" name="reviewTitle" id="reviewTitle" maxlength="50" value="<%= review.getReviewTitle() %>"></input></td>
					</tr>
					<tr>	
						<td><textarea class="review review-content" placeholder="Content" name="reviewContent" maxlength="2048"><%= review.getReviewContent() %></textarea></td>
					</tr>
				</table>
		</form>
	</section>
</body>

</html>
