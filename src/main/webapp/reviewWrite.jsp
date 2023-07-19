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
	String userNick = null;
	if(session.getAttribute("userID") != null){
		userID = (String) session.getAttribute("userID");
	}	
	%>
	<div class="bar-pop">
		<h2 class="head_tt">Review</h2>
	</div>
	<section>
		<form method="post" action="reviewAction.jsp" onsubmit="return validateForm()">
				<div class="prod_review_write">
					<span>Rating</span>
					<select name="reviewRating" >
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option selected>5</option>
					</select>
					<button type="submit" class="">WRITE</button>
					<script>
						function windowCloseAndRefresh() {
							window.opener.location.reload(true);
							window.close();
					    }
					</script>
				</div>
				<table class="table_striped">
					<tr>
						<td><input type="text" class="review review-title" placeholder="Title" name="reviewTitle" id="reviewTitle" maxlength="50"></input></td>
					</tr>
					<tr>	
						<td><textarea class="review review-content" placeholder="Content" name="reviewContent" maxlength="2048"></textarea></td>
					</tr>
				</table>
		</form>
	</section>
</body>

</html>
