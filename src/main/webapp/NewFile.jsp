<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/common.css">
<title>Acoustic</title>
<style>
.prod_review_container {
	position: relative;
}

.prod_review {
	padding-top: 45px; /* prod_review_write의 높이에 따라 조절 */
}

.prod_review_write {
	position: absolute;
	top: 0;
	right: 210px;
}

.table_striped {
	width: 860px;
	font-size: 20px;
	table-layout: fixed; /* 각 셀의 너비를 고정 */
	border-collapse: collapse; /* 셀 테두리를 겹치도록 */
}

.table_striped th, .table_striped td {
	text-align: center; /* 텍스트를 가운데 정렬 */
	padding: 10px; /* 셀 안쪽 여백 설정 */
	border: 0px; /* 셀 테두리 설정 */
}
</style>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>

	<section class="prod_review_container">
		<div class="prod_review">
			<div class="prod_review_write">
				<span><a href="#">WRITE</a></span> <span><a href="#">MYLIST</a></span>
			</div>
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
					<tr>
						<td>1</td>
						<td>5</td>
						<td>소리가 좋네요</td>
						<td>리또리또리</td>
						<td>2023-07-12</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
</body>
</html>