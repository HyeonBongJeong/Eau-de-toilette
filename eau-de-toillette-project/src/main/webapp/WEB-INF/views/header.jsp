<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
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
                /*header*/
                
                #header {
                    position: relative;
                    width: 100%;
                }
                /*유저정보*/
                
                #header-usermenu {
                    width: 1050px;
                    margin: 0 auto;
                    height: 37px;
                }
                
                #header-usermenu-left {
                    float: left;
                    width: 50%;
                    clear: both;
                }
                
                #header-usermenu-right {
                    display: block;
                    text-align: right;
                }
                /*로고*/
                
                #header-logo {
                    width: 1050px;
                    margin: 0 auto;
                }
                
                #header-logo>#logo {
                    display: block;
                    max-width: 300px;
                    max-height: 300px;
                    cursor: pointer;
                    margin-left:375px;
                }
                /*메뉴(네비게이터)*/
                
                #header-nav-con {
                    width: 100%;
                    background-color: #fff;
                    position: sticky;
                    top: 0;
                }
                
                #header-nav {
                    width: 1050px;
                    margin: 0 auto;
                    text-align: center;
                    height: 56px;
                }
                
                #header-nav>#header-nav-menus {
                    display: block;
                    margin: 0 auto;
                }
                
                #header-nav>#header-nav-menus>.header-nav-menu {
                    display: inline-block;
                }
                
                .menu1 {
                    width: 168px;
                    height: 55px;
                    float: left;
                }
                
                .menu2 {
                    width: 124px;
                    height: 55px;
                    float: left;
                }
                
                .menu3 {
                    width: 116px;
                    height: 55px;
                    float: left;
                }
                
                .header-nav-menu-title {
                    font-size: 16px;
                    text-decoration: none;
                    line-height: 56px;
                }
                
                .header-nav-menu-title:hover {
                    color: #4C0C70;
                    text-decoration: underline;
                    text-underline-position: under;
                }
                
                .header-nav-icon {
                    margin-top: 14.5px;
                    margin-left: 30px;
                }
                
                .header-nav-menu-icon {
                    width: 27px;
                    height: 27px;
                }
                
                .header-nav-right {
                    float: right;
                }
                
                #header-nav-search {
                    width: 242px;
                    height: 36px;
                    background-color: #F7F7F7;
                    border-radius: 18px;
                    padding-left: 14px;
                    box-sizing: border-box;
                    margin-top: 10px;
                    border: 1px solid #F7F7F7;
                }
                
                #header-search {
                    width: 166px;
                    height: 34px;
                    border: none;
                    outline: none;
                    float: left;
                    background-color: transparent;
                }
                
                #header-nav-search-icon {
                    width: 20px;
                    height: 20px;
                    margin-top: 7px;
                    margin-right: 10px;
                    float: right;
                    cursor: pointer;
                }
                
                #header-nav-search-icon-cancel {
                    width: 12px;
                    height: 12px;
                    margin-top: 11px;
                    margin-right: 10px;
                    float: right;
                    cursor: pointer;
                    display: none;
                }
                
                #header-nav-addr-con-big {
                    width: 1050px;
                    margin: 0 auto;
                    display: none;
                    position: absolute;
                    left: 50%;
                    margin: 0 0 0 -525px;
                }
                
                #header-nav-addr-con {
                    width: 310px;
                    height: 140px;
                    float: right;
                    margin-right: 44px;
                    background-color: #fff;
                    box-sizing: border-box;
                    border: 1px solid #ccc;
                    padding: 20px;
                }
                
                #header-nav-addr-con-tri {
                    position: absolute;
                    margin-left: 950px;
                }
                
                #header-nav-addr-con-tri:before {
                    content: '';
                    width: 0;
                    height: 0;
                    position: absolute;
                    top: -10px;
                    left: 20px;
                    border-left: 10px solid transparent;
                    border-right: 10px solid transparent;
                    border-bottom: 10px solid #ccc;
                }
                
                #header-nav-addr-con-tri:after {
                    content: '';
                    width: 0;
                    height: 0;
                    position: absolute;
                    border-left: 10px solid transparent;
                    border-right: 10px solid transparent;
                    border-bottom: 10px solid #fff;
                    top: -9px;
                    left: 20px;
                }
                
                .header-nav-addr-mention {
                    font-size: 14px;
                    line-height: 21px;
                    display: inline;
                }
                
                #header-nav-addr-mention-1 {
                    color: #4C0C70;
                }
                
                #header-nav-button-icon {
                    width: 12px;
                    height: 12px;
                }
                
                .header-nav-button {
                    height: 36px;
                    outline: none;
                    border: 1px solid #4C0C70;
                    border-radius: 5px;
                    padding: 0px 38px 0px 38px;
                    margin-top: 15px;
                    background-color: #fff;
                    font-size: 12px;
                    cursor: pointer;
                }
                
                .header-nav-button-2 {
                    height: 36px;
                    width: 100%;
                    outline: none;
                    border: 1px solid #4C0C70;
                    border-radius: 5px;
                    margin-top: 15px;
                    background-color: #fff;
                    font-size: 12px;
                    cursor: pointer;
                    color: #4C0C70;
                }
                
                .header-nav-button-b {
                    padding: 0px 50px 0px 37px;
                    background-color: #4C0C70;
                    color: #fff;
                }
                
                .header-usermenu-title {
                    float: right;
                    font-size: 12px;
                    line-height: 37px;
                }
                
                .header-usermenu-title-1 {
                    float: right;
                    font-size: 12px;
                    line-height: 37px;
                    text-decoration: none;
                }
                
                .header-usermenu-title-2 {
                    color: #ccc
                }
                
                #header-usermenu-register {
                    color: #4C0C70;
                }
                
                #header-usermenu-drop-con {
                    width: 1050px;
                    margin: 0 auto;
                    position: absolute;
                    margin-top: 37px;
                    z-index: 2;
                    display: none;
                }
                
                #header-usermenu-drop {
                    float: right;
                    width: 100px;
                    background-color: #fff;
                    border: 1px solid #ccc;
                }
                
                #header-usermenu-drop-con-2 {
                    width: 1050px;
                    margin: 0 auto;
                    position: absolute;
                    margin-top: 37px;
                    z-index: 2;
                    display: none;
                }
                
                #header-usermenu-drop-2 {
                    float: right;
                    width: 100px;
                    background-color: #fff;
                    border: 1px solid #ccc;
                    margin-right: 75px;
                }
                
                .header-drop-menu {
                    height: 30px;
                    list-style: none;
                    box-sizing: border-box;
                    padding: 0px 10px 0px 10px;
                    font-size: 12px;
                    line-height: 30px;
                }
                
                .member-grade {
                    border: 1px solid #ccc;
                    padding: 0 5px 0 5px;
                    font-size: 10px;
                    border-radius: 10px;
                }
            </style>
        </head>
        <script>
            $(function() {
                $("#header-search").on("focus", function() {
                    $("#header-nav-search").css("background-color", "#fff");
                    $("#header-nav-search-icon-cancel").css("display", "block");
                });
                $("#header-search").on("blur", function() {
                    $("#header-nav-search").css("background-color", "#F7F7F7");
                    //$("#header-nav-search-icon-cancel").css("display", "none");
                });
                $("#header-nav-search-icon-cancel").on('click', function() {
                    $("#header-search").val('');
                    $("#header-nav-search-icon-cancel").css("display", "none");
                });
                $("#header-nav-menu-pin").hover(function() {
                    $("#header-nav-addr-con-big").css("display", "block");
                    $("#header-nav-addr-con-big").hover(function() {
                        $("#header-nav-addr-con-big").css("display", "block");
                    }, function() {
                        $("#header-nav-addr-con-big").css("display", "none");
                    });
                }, function() {
                    $("#header-nav-addr-con-big").css("display", "none");
                });

                $("#header-usermenu-sc").hover(function() {
                    $("#header-usermenu-drop-con").css("display", "block");
                    $("#header-usermenu-drop").hover(function() {
                        $("#header-usermenu-drop-con").css("display", "block");
                    }, function() {
                        $("#header-usermenu-drop-con").css("display", "none");
                    });
                }, function() {
                    $("#header-usermenu-drop-con").css("display", "none");
                });

                $("#header-usermenu-mypage").hover(function() {
                    $("#header-usermenu-drop-con-2").css("display", "block");
                    $("#header-usermenu-drop-2").hover(function() {
                        $("#header-usermenu-drop-con-2").css("display", "block");
                    }, function() {
                        $("#header-usermenu-drop-con-2").css("display", "none");
                    });
                }, function() {
                    $("#header-usermenu-drop-con-2").css("display", "none");
                });
            });
            
         // 로그아웃
            function logout(id) {
                $.ajax({
                    url: "${pageContext.request.contextPath}/logout",
                    method: "POST",
                    data: {
                        m_id: id
                    },
                    success: function(data) {
                        var url = "${pageContext.request.contextPath}/main";
                        $(location).attr('href', url);
                    },
                    error: function(request, status, error) {
                        console.log("error");
                        alert("code:" +
                            request.status +
                            "\n" +
                            "message:" +
                            request.responseText +
                            "\n" + "error:" +
                            error);
                    }
                });
            }
        </script>

        <body>
            <div id="header">
                <div id="header-usermenu">
                    <c:if test="${empty my_name }">
                        <a href="#" class="header-usermenu-title header-usermenu-title-1" id="header-usermenu-sc">고객센터&nbsp;&nbsp;<i class="fas fa-caret-down"></i></a>
                        <p class="header-usermenu-title header-usermenu-title-2">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</p>
                        <a href="login" class="header-usermenu-title header-usermenu-title-1">로그인</a>
                        <p class="header-usermenu-title header-usermenu-title-2">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</p>
                        <a href="register" class="header-usermenu-title header-usermenu-title-1" id="header-usermenu-register">회원가입</a>
                        <div id="header-usermenu-drop-con">
                            <ul id="header-usermenu-drop">
                                <li class="header-drop-menu"><a href="#">공지사항</a></li>
                                <li class="header-drop-menu"><a href="#">1:1문의</a></li>
                                <li class="header-drop-menu"><a href="#">상품 후기</a></li>
                            </ul>
                        </div>
                    </c:if>
                    <c:if test="${not empty my_name }">
                        <a href="#" class="header-usermenu-title header-usermenu-title-1" id="header-usermenu-sc">고객센터&nbsp;&nbsp;<i class="fas fa-caret-down"></i></a>
                        <p class="header-usermenu-title header-usermenu-title-2">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</p>
                        <a href="login" class="header-usermenu-title header-usermenu-title-1" id="header-usermenu-mypage">
                            <span class="member-grade">${regInfo.m_grade }</span> ${regInfo.m_name }&nbsp;&nbsp;<i class="fas fa-caret-down"></i></a>
                        <div id="header-usermenu-drop-con-2">
                            <ul id="header-usermenu-drop-2">
                                <li class="header-drop-menu"><a href="#" onclick="location.href='/eaude/myPageOrderList.do'">주문 내역</a></li>
                                <li class="header-drop-menu"><a href="#" onclick="location.href='/eaude/mypageShippingDestination.do'">배송지 관리</a></li>
                                <li class="header-drop-menu"><a href="#" onclick="location.href='/eaude/myPageInfo.do'">개인 정보 수정</a></li>
                                <li class="header-drop-menu"><a href="#" onclick="logout('${my_name}');">로그아웃</a></li>
                 </ul>
                        </div>
                        <div id="header-usermenu-drop-con">
                            <ul id="header-usermenu-drop">
                                <li class="header-drop-menu"><a href="#">공지사항</a></li>
                                <li class="header-drop-menu"><a href="#">1:1문의</a></li>
                            </ul>
                        </div>
                    </c:if>
                </div>
                <div id="header-logo">
                    <img id="logo" src="${pageContext.request.contextPath}/resources/images/index_logo.png" alt="마켓컬리 로고" onclick="location.href='/eaude/main';">
                </div>
            </div>
            <div id="header-nav-con">
                <div id="header-nav">
                    <ul id="header-nav-menus">
                        <li class="header-nav-menu menu2"><a href="#" class="header-nav-menu-title menu2">캔들</a></li>
                        <li class="header-nav-menu menu3"><a href="#" class="header-nav-menu-title menu3">디퓨져</a></li>
                        <li class="header-nav-menu menu2"><a href="#" class="header-nav-menu-title menu2">바디크림</a></li>
                        <li class="header-nav-menu menu3"><a href="#" class="header-nav-menu-title menu3">향수</a></li>
                        <li class="header-nav-menu menu2"><a href="#" class="header-nav-menu-title menu2">기타</a></li>
                        <li class="header-nav-icon header-nav-menu header-nav-right">
                            <a href="#"><img src="${pageContext.request.contextPath}/resources/images/001-shopping-cart.svg" class="header-nav-menu-icon"></a>
                        </li>
                        <li class="header-nav-icon header-nav-menu header-nav-right" id="header-nav-menu-pin">
                            <a href="#"><img src="${pageContext.request.contextPath}/resources/images/002-pin.svg" class="header-nav-menu-icon"></a>
                        </li>
                        <li id="header-nav-search" class="header-nav-menu header-nav-right">
                            <input name="header-search" id="header-search" type="text" placeholder="검색어를 입력해주세요.">
                            <img src="${pageContext.request.contextPath}/resources/images/loupe.svg" id="header-nav-search-icon">
                            <img src="${pageContext.request.contextPath}/resources/images/cancel.svg" id="header-nav-search-icon-cancel">
                        </li>
                    </ul>
                </div>
                <div id="header-nav-addr-con-big">
                    <div id="header-nav-addr-con-tri"></div>
                    <c:if test="${empty my_name }">
                        <div id="header-nav-addr-con">
                            <p class="header-nav-addr-mention" id="header-nav-addr-mention-1">배송지를 등록</p>
                            <p class="header-nav-addr-mention">하고<br>집에서 eau de toillette의 상품을 만나보세요!</p>
                            <div>
                                <button type="button" class="header-nav-button" onclick="location.href='login';">로그인</button>
                                <button type="button" class="header-nav-button header-nav-button-b"><img src="${pageContext.request.contextPath}/resources/images/loupe.svg" id="header-nav-button-icon">&nbsp;&nbsp;주소검색</button>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${not empty my_name }">
                        <div id="header-nav-addr-con">
                            <p class="header-nav-addr-mention" style="height:45px; display:inline-block;">${regInfo.m_addr }</p>

                            <div>
                                <button type="button" class="header-nav-button-2" onclick="location.href='/eaude/mypageShippingDestination.do'">배송지 변경</button>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>

        </body>

        </html>
