<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Acoustic</title>
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet"
	    href="https://fonts.googleapis.com/css2?family=Material+Icons+Outlined">
	
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script>
        $(document).ready(function () {
            $('.banner_slide').slick({
                infinite: true,
                speed: 500,
                fade: true,
                cssEase: 'linear',
                autoplay:true,
                autoplaySpeed:2000
            });
            $('.best_seller_slide').slick({
                infinite: true,
                slidesToShow: 3,
                slidesToScroll: 3
            });
        });
    </script>
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
                        <a href="new_arrival.jsp">new arrival</a>
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
    <section class="banner">
        <ul class="banner_slide" style="font-family: 'Lexend Exa' sans-serif;">
            <li>
                <p class="banner_tt_1">
                    Feel <br> 
                    <span class="banner_hl">freedom</span>
                </p>
                <img src="img/banner1.jpg" alt="" width="1280px">
            </li>
            <li>
                <p class="banner_tt_2">
                    unleash <br> your <br> inner <br>
                    <span class="banner_hl">Artist</span>
                </p>
                <img src="img/banner2.jpg" alt="" width="1280px">
            </li>
            <li>
                <p class="banner_tt_3">
                    <span class="banner_hl">Awaken</span> <br> 
                    <span class="banner_small">your</span> <br> passion
                </p>
                <img src="img/banner3.jpg" alt="" width="1280px">
            </li>
        </ul>
    </section>
    <section class="features">
        <ul class="feature_list">
            <li>
                <img src="img/feature1.jpg" alt="" width="615.2px">
                <div class="gradientOverlay"></div>
                <p>take a trip <br>with your guitar</p>
            </li>
            <li>
                <img src="img/feature2.jpg" alt="" width="615.2px">
                <div class="gradientOverlay"></div>
                <p>Put your own soul <br>on the guitar.</p>
            </li>
        </ul>
    </section>
    <section class="bestSeller">
        <h2 class="bestSeller_tt">Best seller</h2>
        <ul class="best_seller_slide">
            <li class="bs_itemList">
                <div class="thumbnail">
                    <a href="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.jsp">
                        <img src="product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타_1.jpg"
                            class="thumbnail_img" alt="이스트만 올솔리드 E1OM">
                    </a>
                </div>
                <div class="description" onclick="window.location.href='/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.jsp'">
                    <ul class="spac">
                        <li class="name">
                            <strong>
                                <a href="/product/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타/Eastman 이스트만 올솔리드 E1OM 어쿠스틱 기타.jsp">
                                    <span>Eastman 이스트만 올솔리드 <br>E1OM 어쿠스틱 기타</span>
                                </a>
                            </strong>
                        </li>
                        <li class="spac_line">
                            Eastman의 엔트리급 올솔리드 모델
                            <br>
                            OM 바디
                            <br>
                            상판 : Solid Sitka Sprucer
                            <br>
                            측후판 : Solid Sapelel
                            <br>
                            지판 : Ebony
                            <br>
                            44.5mm 너트, 빈티지 오픈기어 헤드머신
                        </li>
                        <li class="price">
                            <span class="own_price">798,000원</span>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="bs_itemList">
                <div class="thumbnail">
                    <a href="product/Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐/Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐.jsp">
                        <img src="product/Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐/Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐_1.jpg"
                            class="thumbnail_img" alt="마틴 브룩 리거트우드 시그니쳐">
                    </a>
                </div>
                <div class="description" onclick="window.location.href='product/Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐/Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐.jsp'">
                    <ul class="spac">
                        <li class="name">
                            <strong>
                                <a href="product/Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐/Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐.jsp">
                                    <span>Martin 000-28 Brooke Ligertwood 브룩 리거트우드 시그니쳐</span>
                                </a>
                            </strong>
                        </li>
                        <li class="spac_line">
                            워쉽 뮤지션 Brooke Ligertwood 시그니쳐 모델
                            <br>
                            24.9" 숏스케일 000바디
                            <br>
                            상판 : 시트카 스프루스 with VTS
                            <br>
                            측후판 : 인디언 로즈우드
                            <br>
                            하드케이스 포함
                        </li>
                        <li class="price">
                            <span class="own_price">5,730,000원</span>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="product/Cordoba 코르도바 퓨전 클래식기타 Fusion Orchestra 오케스트라 CE CD (48mm 너트너비)/Cordoba 코르도바 퓨전 클래식기타 Fusion Orchestra 오케스트라 CE CD (48mm 너트너비).jsp">
                    <img src="product/Cordoba 코르도바 퓨전 클래식기타 Fusion Orchestra 오케스트라 CE CD (48mm 너트너비)/Cordoba 코르도바 퓨전 클래식기타 Fusion Orchestra 오케스트라 CE CD (48mm 너트너비)_1.jpg" alt="" width="420px">
                </a>
            </li>
            <li>
                <a href="Cordoba 코르도바 클래식기타 C7-CE.jsp">
                    <img src="product/Cordoba 코르도바 클래식기타 C7-CE/Cordoba 코르도바 클래식기타 C7-CE.jpg" alt="" width="420px">
                </a>
            </li>
            <li>
                <a href="Cordoba 코르도바 C7 CD 입문용 클래식기타.jsp">
                    <img src="product/Cordoba 코르도바 C7 CD 입문용 클래식기타/Cordoba 코르도바 C7 CD 입문용 클래식기타.jpg" alt="" width="420px">
                </a>
            </li>
        </ul>
    </section>
    <section class="event">
        <div class="event_tt">
            <span class="event_tt_1">Event</span><br>
            <span class="event_tt_2">신규회원 10만원 이상 구매시</span><br>
            <span class="event_tt_3">10% 할인쿠폰 지급</span>
        </div>
        <img class="eventImg" src="img/event.png" alt="" width="520.93px">
    </section>
    <footer>
        <div class="container_f">
            <ul class="footer_list">
                <li class="terms_f">
                <a href="#" class="footer_tt_1">이용약관</a>
                |
                <a href="#" class="footer_tt_2">개인정보취급방침</a>
                |
                <a href="#" class="footer_tt_3">이용안내</a>
                </li>
                <li class="contact_us_tt">
                    <p>Contact us</p>
                </li>
                <li class="csnum">
                    <span class="cs">고객센터 </span>
                    <span class="num">1588-0000</span>
                </li>
            </ul>
        </div>
    </footer>
</body>
</html>