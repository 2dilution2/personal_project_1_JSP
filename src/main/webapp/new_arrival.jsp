<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<header>
        <div class="container_h">
            <h1 class="active"><a href="main.jsp">Acoustic</a></h1>
            <nav>
            	<%
            		if(userID == null) {
            	%>		
                <ul class="header_list">
                    <li class="hd_member_tt">
                        <a href="login.jsp">log in</a>
                        <a href="join.jsp">join</a>
                        <a href="wishlist.jsp">wishlist</a>
                        <a href="cart.jsp">cart</a>
                    </li>
                    <li class="hd_page_tt">
                        <a class ="active" href="new_arrival.jsp">new arrival</a>
                        <a href="acoustic.jsp">acoustic</a>
                        <a href="clasic.jsp">clasic</a>
                        <a href="electric.jsp">electric</a>
                        <a href="accessary.jsp">accessary</a>
                    </li>
                </ul>
                <%
            		} else {
            	%>
            	<ul class="header_list">
                    <li class="hd_member_tt">
                        <a href="logoutAction.jsp">logout</a>
                        <a href="mypage.jsp">mypage</a>
                        <a href="wishlist.jsp">wishlist</a>
                        <a href="cart.jsp">cart</a>
                    </li>
                    <li class="hd_page_tt">
                        <a href="new_arrival.jsp">new arrival</a>
                        <a href="acoustic.jsp">acoustic</a>
                        <a href="clasic.jsp">clasic</a>
                        <a href="electric.jsp">electric</a>
                        <a href="accessary.jsp">accessary</a>
                    </li>
                </ul>
            	<%
            		}
            	%>
            </nav>
        </div>
    </header>
	<div class="bar">
		<h2 class="head_tt">New Arrival</h2>
	</div>
	<section class="product">
		<ul class="sort">
			<li class="prod_sort"><a href="#">인기순</a></li>
			<li class="prod_sort"><a href="#">높은가격순</a></li>
			<li class="prod_sort"><a href="#">낮은가격순</a></li>
		</ul>
		<ul class="prodList">
			<li id="prodBox_1" class="itemList">
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.jsp"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
			<li id="prodBox_" class="itemList">
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
			<li>
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
			<li>
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
			<li>
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
			<li>
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
			<li>
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
			<li>
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
			<li>
				<div class="thumbnail">
					<a
						href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html"> <img
						src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
						class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
					</a>
				</div>
				<div class="description"
					onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html'">
					<ul class="spac">
						<li class="name"><strong> <a
								href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.html">
									<span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타
								</span>
							</a>
						</strong></li>
						<li class="spac_line">Eastman의 엔트리급 올솔리드 모델 <br> OM 바디 <br>
							상판 : Solid Sitka Sprucer <br> 측후판 : Solid Sapelel <br>
							지판 : Ebony <br> 44.5mm 너트, 빈티지 오픈기어 헤드머신
						</li>
						<li class="price"><span class="own_price">798,000원</span></li>
					</ul>
				</div>
			</li>
		</ul>
		<ul class="prod_list_num">
			<li>1</li>
			<li>2</li>
			<li>3</li>
			<li>4</li>
			<li>5</li>
		</ul>
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