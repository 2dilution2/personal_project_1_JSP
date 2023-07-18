<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="review.ReviewDAO"%>
<%@ page import="review.Review"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>리뷰 더보기</title>
</head>
<body class="pop">
	<%
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>
	<table class="table table_striped">
		<thead>
			<tr class="prod_review_list">
				<th>번호</th>
				<th>별점</th>
				<th>제목</th>
				<th>닉네임</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<%
				ReviewDAO reviewDAO = new ReviewDAO();
				ArrayList<Review> list = reviewDAO.getList(pageNumber);
				for(int i = 0 ; i < list.size() ; i++) {
			%>
			
			<tr>
				<td><%= list.get(i).getReviewID() %></td>
				<td><%= list.get(i).getReviewRating() %></td>
				<td><a href="view.jsp?reviewID=<%= list.get(i).getReviewID() %>"><%= list.get(i).getReviewTitle() %></a></td>
				<td><%= list.get(i).getUserNick() %></td>
				<td><%= list.get(i).getReviewDate() %></td>
			</tr>
			
			<%
				}
			%>
		</tbody>
	</table>


</body>
</html>