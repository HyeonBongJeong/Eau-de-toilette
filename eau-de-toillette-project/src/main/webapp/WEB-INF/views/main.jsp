<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>eau de toillette</title>
            <script src="https://kit.fontawesome.com/2409d81413.js" crossorigin="anonymous"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
            <link rel="preconnect" href="https://fonts.gstatic.com">
            <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
            <style>
                * {
                    margin: 0%;
                    padding: 0%;
                    color: #333333;
                    font-family: 'Noto Sans KR', sans-serif;
                }
                
                body html {
                    max-width: 100%;
                    height: 100%;
                    display: block;
                }
                
                a {
                    text-decoration: none;
                }
                
                #main-big-ad {
                    width: 100%;
                    height: 370px;
                }
                
                ul,
                li {
                    list-style: none;
                }
                
                #main-big-ad ul {
                    width: calc(100% * 4);
                    display: flex;
                    animation: slide 8s infinite;
                }
                
                #main-big-ad li {
                    width: calc(100% / 4);
                    height: 370px;
                    cursor: pointer;
                }
                
                #main-big-ad li:nth-child(1) {
                    background: #faa;
                }
                
                #main-big-ad li:nth-child(2) {
                    background: #afa;
                }
                
                #main-big-ad li:nth-child(3) {
                    background: #aaf;
                }
                
                #main-big-ad li:nth-child(4) {
                    background: #faf;
                }
                
                @keyframes slide {
                    0% {
                        margin-left: 0;
                    }
                    /* 0 ~ 10  : 정지 */
                    10% {
                        margin-left: 0;
                    }
                    /* 10 ~ 25 : 변이 */
                    25% {
                        margin-left: -100%;
                    }
                    /* 25 ~ 35 : 정지 */
                    35% {
                        margin-left: -100%;
                    }
                    /* 35 ~ 50 : 변이 */
                    50% {
                        margin-left: -200%;
                    }
                    60% {
                        margin-left: -200%;
                    }
                    75% {
                        margin-left: -300%;
                    }
                    85% {
                        margin-left: -300%;
                    }
                    100% {
                        margin-left: 0;
                    }
                }
                
                #main-big-con {
                    width: 1050px;
                    margin: 0 auto;
                }
                
                .main-section-title {
                    width: 100%;
                    height: 146px;
                    box-sizing: border-box;
                    padding: 79px 0px 35px 0px;
                    text-align: center;
                    font-size: 28px;
                    line-height: 32px;
                }
                
                #main-section-1 {
                    width: 100%;
                    height: 506px;
                }
                
                #main-section-1>ul {
                    width: 1050px;
                    display: flex;
                    overflow: hidden;
                }
                
                #main-section-1>ul>li {
                    width: 262.5px;
                    float: left;
                    margin-right: 18px;
                }
                
                .main249-320 {
                    width: 249px;
                    height: 320px;
                    background-color: #faa;
                    cursor: pointer;
                }
                
                #main-section-2 {
                    width: 100%;
                    height: 527px;
                }
                
                #main-section-2-left {
                    width: 328px;
                    height: 527px;
                    padding: 11px 0 7px 10px;
                    float: left;
                }
                
                #main-section-2-left>span {
                    font-size: 32px;
                }
                
                .main-section-2-link {
                    width: 328px;
                    border: 1px solid #ccc;
                    box-sizing: border-box;
                    height: 56px;
                    cursor: pointer;
                    text-align: center;
                    border-radius: 3px;
                    line-height: 24px;
                    font-size: 16px;
                    padding-top: 16px;
                    margin-top: 75px;
                }
                
                #main-section-2>ul {
                    margin-left: 18px;
                    width: 694px;
                    display: flex;
                    overflow: hidden;
                    float: left;
                }
                
                #main-section-2>ul>li {
                    width: 338px;
                    float: left;
                    margin-right: 18px;
                }
                
                .main338-434 {
                    width: 338px;
                    height: 434px;
                    background-color: #faa;
                    cursor: pointer;
                }
                
                #main-section-2-left>p {
                    font-size: 16px;
                    color: #999999;
                    padding-top: 10px;
                    line-height: 29px;
                }
                
                #main-section-3 {
                    width: 100%;
                    height: 538px;
                }
                
                #main-section-3>ul {
                    width: 1050px;
                    display: flex;
                    overflow: hidden;
                }
                
                #main-section-3>ul>li {
                    width: 33%;
                    float: left;
                    margin-right: 18px;
                    text-align: center;
                }
                
                .main338-338 {
                    width: 338px;
                    height: 338px;
                    background-color: #faa;
                    cursor: pointer;
                }
                
                #main-section-4 {
                    width: 100%;
                    height: 506px;
                }
                
                #main-section-4>ul {
                    width: 1050px;
                    display: flex;
                    overflow: hidden;
                }
                
                #main-section-4>ul>li {
                    width: 262.5px;
                    float: left;
                    margin-right: 18px;
                }
                
                .main-section-add {
                    width: 100%;
                    height: 140px;
                    background-color: #9c5bc2;
                }
                
                .main-move-links {
                    width: 516px;
                    height: 56px;
                    border: 1px solid #ccc;
                    box-sizing: border-box;
                    margin-left: 267px;
                    cursor: pointer;
                    text-align: center;
                    border-radius: 3px;
                    line-height: 24px;
                    font-size: 16px;
                    padding-top: 16px;
                }
                
                .main-blank {
                    margin-bottom: 100px;
                }
                
                .main-product-name {
                    height: 23px;
                    margin-top: 12px;
                    line-height: 23px;
                    font-size: 16px;
                    cursor: pointer;
                }
                
                .main-product-price {
                    height: 20px;
                    margin-top: 9px;
                    line-height: 20px;
                    font-size: 16px;
                }
                
                .main-product-name-2 {
                    height: 27px;
                    margin-top: 17px;
                    line-height: 27px;
                    font-size: 18px;
                    cursor: pointer;
                }
                
                .main-product-price-2 {
                    height: 20px;
                    margin-top: 8px;
                    line-height: 24px;
                    font-size: 16px;
                    color: #999999;
                }
                
                .main-product-name-3 {
                    height: 24px;
                    margin-top: 14px;
                    line-height: 24px;
                    font-size: 12px;
                    cursor: pointer;
                }
                
                .main-product-price-3 {
                    height: 32px;
                    line-height: 32px;
                    font-size: 20px;
                }
                
                .main-blank-66 {
                    height: 66px;
                    width: 100%;
                }
                
                .main-blank-72 {
                    height: 72px;
                    width: 100%;
                }
                
                #scroll-outer {
                    width: 100%;
                    max-height: 270px;
                    /* margin-top: -141px; */
                    position: sticky;
                    top: 200px;
                }
            </style>
        </head>

        <body>
            <jsp:include page="header.jsp"></jsp:include>
            <div id="main-big-ad">
                <ul id="main-middle-ad">
                    <li class="main-ad"></li>
                    <li class="main-ad"></li>
                    <li class="main-ad"></li>
                    <li class="main-ad"></li>
                </ul>
            </div>
            <input type="button" class="slide_btn_next">
            <input type="button" class="slide_btn_prev">
            <div id="main-big-con">
                <section class="main-section-title">
                    <p>Candle</p>
                </section>
                <jsp:include page="quickmenu.jsp"></jsp:include>
                <section id="main-section-1" class="main-blank">
                    <ul>
                        <c:if test="${not empty candle }">
                            <c:forEach var="vo" items="${candle }" varStatus="s">
                                <li><img src="${ p_img}" class="main249-320" onclick="location.href='productsession?productimg1=${vo.p_img }&p_id=${vo.p_id }';">
                                    <p class="main-product-name" onclick="location.href='productsession?productimg1=${vo.p_img }&p_id=${vo.p_id }';">${vo.p_title }</p>
                                    <p class="main-product-price">${vo.p_price }</p>
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                    <div class="main-blank-66"></div>
                    <div class="main-move-links" onclick="location.href='productlist.do?p_type=c';">캔들 전체보기</div>
                </section>
                <section class="main-section-title"></section>
                <section id="main-section-2" class="main-blank">
                    <div id="main-section-2-left">
                        <span>Difuser</span>
                        <p>
                            -<br> 향기가 아주 좋습니다.
                        </p>
                        <div class="main-section-2-link" onclick="location.href='productlist.do?p_type=d';">디퓨져 전체보기</div>
                    </div>
                    <ul>
                        <c:if test="${not empty difuser }">
                            <c:forEach var="vo" items="${difuser }" varStatus="s">
                                <li>
                                    <img src="${ p_img}" class="main338-434" onclick="location.href='productsession?productimg1=${vo.p_img }&p_id=${vo.p_id }';">
                                    <p class="main-product-name-3" onclick="location.href='productsession?productimg1=${vo.p_img }&p_id=${vo.p_id }';">${vo.p_title }</p>
                                    <p class="main-product-price-3">${vo.p_price }</p>
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                </section>
                <section class="main-section-title">
                    <p>Perfume</p>
                </section>
                <section id="main-section-3" class="main-blank">
                    <ul>
                        <c:if test="${not empty perfume }">
                            <c:forEach var="vo" items="${perfume }" varStatus="s">
                                <li>
                                    <img src="${ p_img}" class="main338-338" onclick="location.href='productsession?productimg1=${vo.p_img }&p_id=${vo.p_id }';">
                                    <p class="main-product-name-2" onclick="location.href='productsession?productimg1=${vo.p_img }&p_id=${vo.p_id }';">${vo.p_title }</p>
                                    <p class="main-product-price-2">${vo.p_price }</p>
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                    <div class="main-blank-72"></div>
                    <div class="main-move-links" onclick="location.href='productlist.do?p_type=p';">향수 전체보기</div>

                </section>
                <section class="main-section-title">
                    <p>Cream</p>
                </section>
                <section id="main-section-4" class="main-blank">
                    <ul>
                        <c:if test="${not empty bodycream }">
                            <c:forEach var="vo" items="${bodycream }" varStatus="s">
                                <li>
                                    <img src="${ p_img}" class="main249-320" onclick="location.href='productsession?productimg1=${vo.p_img }&p_id=${vo.p_id }';">
                                    <p class="main-product-name" onclick="location.href='productsession?productimg1=${vo.p_img }&p_id=${vo.p_id }';">${vo.p_title }</p>
                                    <p class="main-product-price">${vo.p_price }</p>
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                    <div class="main-blank-66"></div>
                    <div class="main-move-links" onclick="location.href='productlist.do?p_type=b';">크림 전체보기</div>
                </section>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>