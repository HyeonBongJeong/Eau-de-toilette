<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        #footer {
            width: 100%;
            height: 302px;
            width: 1050px;
            margin: 0 auto;
            box-sizing: border-box;
            border-top: 1px solid #ccc;
        }
        
        #footer-left {
            width: 534px;
            float: left;
            padding-top: 29px;
        }
        
        #footer-right {
            width: 476px;
            float: left;
            padding-top: 29px;
            font-size: 12px;
        }
        
        .footer-left-in-1 {
            width: 100%;
            height: 64px;
            box-sizing: border-box;
            padding-top: 20px;
        }
        
        .footer-left-in-2 {
            width: 100%;
            height: 60px;
            box-sizing: border-box;
            padding-top: 16px;
        }
        
        #footer-number {
            font-size: 28px;
            margin-right: 16px;
            line-height: 36px;
            padding-top: 4px;
            box-sizing: border-box;
            width: 140px;
            display: inline-block;
            text-align: center;
        }
        
        .footer-btn {
            display: inline-block;
            margin-right: 16px;
            width: 138px;
            height: 31px;
            border: 1px solid #ccc;
            padding-top: 7px;
            text-align: center;
            border-radius: 3px;
            font-size: 14px;
        }
        
        .footer-left-in-right {
            width: 378px;
            float: right;
        }
        
        .footer-left-in-right-title {
            height: 22px;
            font-size: 14px;
            line-height: 22px;
        }
        
        .footer-left-in-right-content {
            height: 22px;
            font-size: 14px;
            line-height: 22px;
            color: #999999;
        }
        
        #footer-right-top {
            width: 100%;
            height: 20px;
            margin-bottom: 29px;
        }
        
        #footer-right-top>li {
            font-size: 14px;
            line-height: 20px;
            margin-right: 16px;
            list-style: none;
        }
    </style>
</head>
<body>
<footer id="footer">
        <div id="footer-left">
            <p>고객행복센터</p>
            <div class="footer-left-in-1">
                <p id="footer-number">1644-1107</p>
                <div class="footer-left-in-right">
                    <p class="footer-left-in-right-title">
                        365고객센터
                    </p>
                    <p class="footer-left-in-right-content">
                        오전 7시 - 오후 7시
                    </p>
                </div>
            </div>
            <div class="footer-left-in-2">
                <a href="#" class="footer-btn">챗봇 문의</a>
                <div class="footer-left-in-right">
                    <p class="footer-left-in-right-title">
                        365고객센터
                    </p>
                    <p class="footer-left-in-right-content">
                        오전 7시 - 오후 7시
                    </p>
                </div>
            </div>
            <div class="footer-left-in-2">
                <a href="#" class="footer-btn">1:1 문의</a>
                <div class="footer-left-in-right">
                    <p class="footer-left-in-right-title">
                        24시간 접수 가능
                    </p>
                    <p class="footer-left-in-right-content">
                        고객센터 운영시간에 순차적으로 답변해드리겠습니다.
                    </p>
                </div>
            </div>
        </div>
        <div id="footer-right">
            <ul id="footer-right-top">
                <li><a href="#">오 드 뚜왈렛 소개</a></li>
            </ul>
            개발자 : &nbsp;&nbsp;&nbsp;&nbsp;<a href="#">강대영</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">금지운</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">김수민</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">정현봉</a>
            <br>
            <br>
            <br> Copyright © 2021.eau de toillete. All rights reserved.
        </div>
    </footer>
</body>
</html>