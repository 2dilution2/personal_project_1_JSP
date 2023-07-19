<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="review.ReviewDAO" %>
<%@ page import="review.Review" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../css/common.css">
<title>Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타</title>
</head>
<script>
document.addEventListener("DOMContentLoaded", () => {
    const headerHeight = document.querySelector(".header_list").offsetHeight; // 상단 헤더를 선택하고 높이를 구합니다.
    const tabLinks = document.querySelectorAll(".prod_tab td[data-target]");

    tabLinks.forEach((link) => {
        link.style.cursor = "pointer";
        link.addEventListener("click", (event) => {
            const targetSelector = link.getAttribute("data-target");
            const targetElement = document.querySelector(targetSelector);

            if (targetElement) {
                // 스크롤 위치에서 상단 헤더 높이를 빼줍니다.
                window.scrollTo({
                    top: targetElement.offsetTop - headerHeight,
                    behavior: "smooth",
                });
            }
        });
    });
});
</script>

<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<header>
		<div class="container_h">
			<h1 class="active">
				<a href="../../main.jsp">Acoustic</a>
			</h1>
			<nav>
				<%
				if (userID == null) {
				%>
				<ul class="header_list">
					<li class="hd_member_tt">
						<a href="#" onclick="loginpopup()">log in</a>
							<script>
								function loginpopup() {
									window.open("../../loginPop.jsp", "LogInPopup", "width=860px, height=600px");					
								}
							</script>
						<a href="../../join.jsp">join</a> 
						<a href="../../wishlist.jsp">wishlist</a>
						<a href="../../cart.jsp">cart</a>
					</li>
					<li class="hd_page_tt">
						<a href="../../new_arrival.jsp">new arrival</a> 
						<a href="../../acoustic.jsp">acoustic</a> 
						<a href="../../clasic.jsp">clasic</a> 
						<a href="../../electric.jsp">electric</a>
						<a href="../../accessary.jsp">accessary</a>
					</li>
				</ul>
				<%
				} else {
				%>
				<ul class="header_list">
					<li class="hd_member_tt">
						<a href="../../logoutAction.jsp">logout</a>
						<a href="../../mypage.jsp">mypage</a> 
						<a href="../../wishlist.jsp">wishlist</a>
						<a href="../../cart.jsp">cart</a>
					</li>
					<li class="hd_page_tt">
						<a href="../../new_arrival.jsp">new arrival</a> 
						<a href="../../acoustic.jsp">acoustic</a> 
						<a href="../../clasic.jsp">clasic</a> 
						<a href="../../electric.jsp">electric</a>
						<a href="../../accessary.jsp">accessary</a>
					</li>
				</ul>
				<%
				}
				%>
			</nav>
		</div>
	</header>
	<section class="prod_header_desc">
		<div class="prod_img">
			<img src="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
				alt="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타" class="bigImg" width="530px">
			<div class="img_list">
				<ul>
					<li><img src="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbImg" alt=""></li>
					<li><img src="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_2.jpg"
						class="thumbImg" alt=""></li>
					<li><img src="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_3.jpg"
						class="thumbImg" alt=""></li>
					<li><img src="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_4.jpg"
						class="thumbImg" alt=""></li>
				</ul>
			</div>
			<script>
                document.addEventListener("DOMContentLoaded", function () {
                    const thumbnails = document.querySelectorAll('.thumbImg');
                    const mainImage = document.querySelector('.bigImg');

                    thumbnails.forEach(thumb => {
                        thumb.addEventListener('mouseover', () => {
                            mainImage.src = thumb.src;
                            mainImage.alt = thumb.alt;
                        });
                    });
                });
            </script>
		</div>
		<div class="prod_desc">
			<div class="prod_name">Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타</div>
			<div class="prod_spac">
				<ul>
					<li>Eastman의 엔트리급 올솔리드 모델</li>
					<li>OM 바디</li>
					<li>상판 : Solid Sitka Sprucer</li>
					<li>측후판 : Solid Sapelel</li>
					<li>지판 : Ebony</li>
					<li>44.5mm 너트, 빈티지 오픈기어 헤드머신</li>
				</ul>
			</div>
			<div class="prod_info">
				<ul>
					<li>원산지 해외</li>
					<li>브랜드 Eastman</li>
					<li>모델 Eastman E1OM</li>
					<li>소비자가 <del>1,490,000</del>원
					</li>
					<li><span>판매가</span> <span>798,000</span>원</li>
				</ul>
			</div>
			<div class="prod_buy">
				<a href="#" class="prod_addList"> ADD LIST </a> 
				<a href="#" class="prod_buyNow"> BUY NOW </a>
			</div>
		</div>
	</section>
	<section class="prod_description">
		<table class="prod_tab">
			<tr>
				<td></td>
				<td class="prod_description_tab active"
					data-target=".prod_description">상품정보</td>
				<td class="prod_review_tab" data-target=".prod_review">구매후기</td>
				<td class="prod_shipping_tab" data-target=".prod_shipping">배송안내</td>
				<td class="prod_QnA_tab" data-target=".prod_QnA">Q&amp;A</td>
				<td></td>
			</tr>
		</table>

		<div class="prod_description_img">
			<img src="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_desc.jpg"
				alt="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타 상품정보">
		</div>
	</section>
	<section class="prod_review">
		<table class="prod_tab">
			<tr>
				<td></td>
				<td class="prod_description_tab" data-target=".prod_description">상품정보</td>
				<td class="prod_review_tab active" data-target=".prod_review">구매후기</td>
				<td class="prod_shipping_tab" data-target=".prod_shipping">배송안내</td>
				<td class="prod_QnA_tab" data-target=".prod_QnA">Q&amp;A</td>
				<td></td>
			</tr>
		</table>
		<div class="prod_review_container">
			<div class="prod_review_write">
				<button onclick="writeReview()">WRITE</button>
				<button onclick="#">MYLIST</button>
				<script>
			       	 function writeReview() {
						<%
						if (userID == null) {
						%>
							alert('로그인후 다시 시도하세요.')
					    <%
						} else {
					    %>
							window.open("../../reviewWrite.jsp", "review_Write", "width=860px, height=500px");
					     <%
						}
					    %>
			        }
			    </script>
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
					<%
						int pageNumber = 1;
						if (request.getParameter("pageNumber") != null) {
							pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
						}
						ReviewDAO reviewDAO = new ReviewDAO();
						ArrayList<Review> list = reviewDAO.getList(pageNumber);
						for(int i = 0 ; i < list.size() ; i++) {
					%>
					
					<tr>
						<td><%= list.get(i).getReviewID() %></td>
						<td><%= list.get(i).getReviewRating() %></td>
						<td><a href="#" onclick="window.open('../../review_view.jsp?reviewID=<%= list.get(i).getReviewID() %>', 'ViewReview', 'width=860px, height=600px'); return false;"><%= list.get(i).getReviewTitle().replaceAll(" ", "&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("/n","<br>;") %></a></td>
						<td><%= list.get(i).getUserNick() %></td>
						<td><%= list.get(i).getReviewDate() %></td>
					</tr>
					
					<%
						}
					%>
				</tbody>
			</table>
			<div class="tableBtn">
				<%
					if (pageNumber != 1) {
				%>
				<a href="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.jsp?pageNumber=<%=pageNumber - 1 %>">prev</a>
				<%
					}
					if (reviewDAO.nextPage(pageNumber)) {
				%>
				<a href="Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.jsp?pageNumber=<%=pageNumber + 1 %>">next</a>
				<%
					}
				%>
			</div>
			
		</div>	
	</section>
	<section class="prod_shipping">
		<table class="prod_tab">
			<tr>
				<td></td>
				<td class="prod_description_tab" data-target=".prod_description">상품정보</td>
				<td class="prod_review_tab" data-target=".prod_review">구매후기</td>
				<td class="prod_shipping_tab active" data-target=".prod_shipping">배송안내</td>
				<td class="prod_QnA_tab" data-target=".prod_QnA">Q&amp;A</td>
				<td></td>
			</tr>
		</table>

		<div class="prod_shipping_img">
			<img src="../../img/shpping.png" alt="" width="860px">
		</div>
	</section>
	<section class="prod_QnA">
		<table class="prod_tab">
			<tr>
				<td></td>
				<td class="prod_description_tab" data-target=".prod_description">상품정보</td>
				<td class="prod_review_tab" data-target=".prod_review">구매후기</td>
				<td class="prod_shipping_tab" data-target=".prod_shipping">배송안내</td>
				<td class="prod_QnA_tab active" data-target=".prod_QnA">Q&amp;A</td>
				<td></td>
			</tr>
		</table>
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
	</section>
	<footer>
		<div class="container_f">
			<ul class="footer_list">
				<li class="terms_f"><a href="#" class="footer_tt_1">이용약관</a> |
					<a href="#" class="footer_tt_2">개인정보취급방침</a> | <a href="#"
					class="footer_tt_3">이용안내</a></li>
				<li class="contact_us_tt">
					<p>Contact us</p>
				</li>
				<li class="csnum"><span class="cs">고객센터 </span> <span
					class="num">1588-0000</span></li>
			</ul>
		</div>
	</footer>
</body>

</html>