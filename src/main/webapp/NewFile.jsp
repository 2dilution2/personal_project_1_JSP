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
	padding-top: 45px; /* prod_review_write�� ���̿� ���� ���� */
}

.prod_review_write {
	position: absolute;
	top: 0;
	right: 210px;
}

.table_striped {
	width: 860px;
	font-size: 20px;
	table-layout: fixed; /* �� ���� �ʺ� ���� */
	border-collapse: collapse; /* �� �׵θ��� ��ġ���� */
}

.table_striped th, .table_striped td {
	text-align: center; /* �ؽ�Ʈ�� ��� ���� */
	padding: 10px; /* �� ���� ���� ���� */
	border: 0px; /* �� �׵θ� ���� */
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
						<th>��ȣ</th>
						<th>����</th>
						<th>����</th>
						<th>�г���</th>
						<th>�ۼ���</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>5</td>
						<td>�Ҹ��� ���׿�</td>
						<td>���Ǹ��Ǹ�</td>
						<td>2023-07-12</td>
					</tr>
				</tbody>
			</table>
		</div>
	</section>
</body>
</html>