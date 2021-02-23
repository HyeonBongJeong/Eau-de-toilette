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
                
                #main-big-add {
                    width: 100%;
                    height: 370px;
                }
                
                ul,
                li {
                    list-style: none;
                }
                
                #main-big-add ul {
                    height: 100%;
                }
                
                #main-big-add li {
                    height: 100%;
                }
                
                #main-big-add li:nth-child(1) {
                    background: #faa;
                }
                
                #main-big-add li:nth-child(2) {
                    background: #afa;
                }
                
                #main-big-add li:nth-child(3) {
                    background: #aaf;
                }
                
                #main-big-add li:nth-child(4) {
                    background: #faf;
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
                    max-height:270px;
                    /* margin-top: -141px; */
                    position: sticky;
                    top: 200px;
                }
                
                #scroll {
                    width: 78px;
                    float: right;
                    margin-right: -130px;
                    max-height:270px;
                    /* margin-top:141px; */
                    border:1px solid #4C4C4C;
                    text-align:center;
                    /* overflow:hidden; */
                }
                
                #scroll-inner {
                    width: 78px;
                    height: 100px;
                    background-color: yellow;
                }
                
                #scroll-img-con{
                max-height:200px;
                overflow:hidden;
                }
                
                .scroll-up{
                height:22px;
               	cursor:pointer;
                }
                
                #scroll-title{
                height:16px;
                font-size:12px;
                line-height:16px;
                padding-bottom:6px;
                }
                
                .scroll-img{
                width:60px;
                height:77px;
                background-color:white;
                }
            </style>
        </head>
        <script>
            /* var all = ele => document.querySelectorAll(ele)
                                                var one = ele => document.querySelector(ele)
                                                var slide = _ => {
                                                    var wrap = one('#main-big-add') // .slide 선택
                                                    var target = wrap.children[0] // .slide ul 선택
                                                    var len = target.children.length // .slide li 갯수
                                                        // .slide ul의 너비 조정
                                                    target.style.cssText = `width:calc(100% * ${len});display:flex;transition:1s;`
                                                        // .slide li의 너비 조정
                                                    Array.from(target.children)
                                                        .forEach(ele => ele.style.cssText = `width:calc(100% / ${len});`)
                                                    let pos = 0
                                                    setInterval(() => {
                                                        pos = (pos + 1) % len // 장면 선택
                                                        target.style.marginLeft = `${-pos * 100}%` // 장면 전환
                                                    }, 2000)
                                                }
                                                window.onload = function() {
                                                    slide()
                                                } */
        </script>
        <script>
            /* function scroll_follow(id) {
                                                    $(window).scroll(function() //스크롤이 움직일때마다 이벤트를 발생시키고
                                                        {
                                                            var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
                                                            $(id).stop().animate({
                                                                top: position + "px"
                                                            }, 1); //해당 오브젝트 위치값 재설정
                                                        });
                                                }
                                                scroll_follow("#scroll");
                                                //스크롤이 생기도록 <br> 을 여러개 넣은 부분..
                                                $(document).ready(function() {
                                                    for (var i = 0; i < 200; i++) {
                                                        $('#brr').html($('#brr').html() + "<br>" + i);
                                                    }
                                                }); */
        </script>

        <body>
            <jsp:include page="header.jsp"></jsp:include>
            <div id="main-big-add">
                <ul>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <div id="main-big-con">
                <section class="main-section-title">
                    <p>Candle</p>
                </section>
                <div id="scroll-outer">
                    <div id="scroll" style="right:100;">
                    <div class="scroll-up"><i class="fas fa-angle-up"></i></div>
                    <strong id="scroll-title">최근 본 상품</strong>
                    <div id="scroll-img-con">
                    <img class="scroll-img">
                    <img class="scroll-img">
                    <img class="scroll-img">
                    </div>
                    <div class="scroll-up"><i class="fas fa-angle-down"></i></div>
                    </div>
                </div> 
                <section id="main-section-1" class="main-blank">
                    <ul>
                        <li>
                            <div class="main249-320"></div>
                            <p class="main-product-name">캔들 이름</p>
                            <p class="main-product-price">140,000</p>
                        </li>
                        <li>
                            <div class="main249-320"></div>
                            <p class="main-product-name">캔들 이름</p>
                            <p class="main-product-price">140,000</p>
                        </li>
                        <li>
                            <div class="main249-320"></div>
                            <p class="main-product-name">캔들 이름</p>
                            <p class="main-product-price">140,000</p>
                        </li>
                        <li>
                            <div class="main249-320"></div>
                            <p class="main-product-name">캔들 이름</p>
                            <p class="main-product-price">140,000</p>
                        </li>
                    </ul>
                    <div class="main-blank-66"></div>
                    <div class="main-move-links">캔들 전체보기</div>
                </section>
                <section class="main-section-title">
                </section>
                <section id="main-section-2" class="main-blank">
                    <div id="main-section-2-left">
                        <span>Difuser</span>
                        <p>-<br> 향기가 아주 좋습니다.
                        </p>
                        <div class="main-section-2-link">디퓨져 전체보기</div>
                    </div>
                    <ul>
                        <li>
                            <div class="main338-434"></div>
                            <p class="main-product-name-3">디퓨져 이름</p>
                            <p class="main-product-price-3">140,000</p>
                        </li>
                        <li>
                            <div class="main338-434"></div>
                            <p class="main-product-name-3">디퓨져 이름</p>
                            <p class="main-product-price-3">140,000</p>
                        </li>
                    </ul>
                </section>
                <section class="main-section-title">
                    <p>Perfume</p>
                </section>
                <section id="main-section-3" class="main-blank">
                    <ul>
                        <li>
                            <div class="main338-338"></div>
                            <p class="main-product-name-2">향수 이름</p>
                            <p class="main-product-price-2">140,000</p>
                        </li>
                        <li>
                            <div class="main338-338"></div>
                            <p class="main-product-name-2">향수 이름</p>
                            <p class="main-product-price-2">140,000</p>
                        </li>
                        <li>
                            <div class="main338-338"></div>
                            <p class="main-product-name-2">향수 이름</p>
                            <p class="main-product-price-2">140,000</p>
                        </li>
                    </ul>
                    <div class="main-blank-72"></div>
                    <div class="main-move-links">향수 전체보기</div>

                </section>
                <section class="main-section-title">
                    <p>Cream</p>
                </section>
                <section id="main-section-4" class="main-blank">
                    <ul>
                        <li>
                            <div class="main249-320"></div>
                            <p class="main-product-name">크림 이름</p>
                            <p class="main-product-price">140,000</p>
                        </li>
                        <li>
                            <div class="main249-320"></div>
                            <p class="main-product-name">크림 이름</p>
                            <p class="main-product-price">140,000</p>
                        </li>
                        <li>
                            <div class="main249-320"></div>
                            <p class="main-product-name">크림 이름</p>
                            <p class="main-product-price">140,000</p>
                        </li>
                        <li>
                            <div class="main249-320"></div>
                            <p class="main-product-name">크림 이름</p>
                            <p class="main-product-price">140,000</p>
                        </li>
                    </ul>
                    <div class="main-blank-66"></div>
                    <div class="main-move-links">크림 전체보기</div>
                </section>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>
