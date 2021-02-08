<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
                
                #login-big-con {
            height: 440px;
            width: 340px;
            margin: 0 auto;
            padding: 90px 0px 120px 0px;
        }
        
        #login-big-con>h3 {
            height: 20px;
            font-size: 20px;
            text-align: center;
        }
        
        #login-wirte-form {
            margin-top: 36px;
            width: 340px;
            height: 296px;
        }
        
        .login-input {
            outline: none;
            width: 300px;
            height: 52px;
            padding: 0px 19px 0px 19px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-bottom: 10px;
            margin-top: 7px;
        }
        
        .login-input:focus {
            border: 1px solid #333333;
        }
        
        #login-a-btn-con {
            width: 100%;
            height: 13px;
            font-size: 13px;
            margin-bottom: 30px;
            text-align: right;
        }
        
        .login-input-btn {
            width: 100%;
            height: 54px;
            outline: none;
            border: 1px solid #4c0c70;
            border-radius: 3px;
            background-color: transparent;
            margin-bottom: 10px;
            color: #4c0c70;
            font-size: 16px;
            cursor: pointer;
        }
        
        #login-a-btn-1 {
            color: #fff;
            background-color: #4c0c70;
            margin-top: 20px;
        }
        
        .find-title {
            width: 100%;
            height: 18px;
            font-size: 12px;
            line-height: 18px;
        }
            </style>
        </head>

        <body>
            <jsp:include page="header.jsp"></jsp:include>
        <div id="login-big-con">
        <h3>비밀번호 찾기</h3>
        <div id="login-wirte-form">
            <strong class="find-title">이름</strong>
            <input type="text" class="login-input" placeholder="고객님의 이름을 입력해주세요">
            <strong class="find-title">아이디</strong>
            <input type="text" class="login-input" placeholder="가입 시 등록하신 이메일 주소를 입력해주세요">
            <strong class="find-title">이메일</strong>
            <input type="email" class="login-input" placeholder="가입 시 등록하신 이메일 주소를 입력해주세요">
            <input type="submit" class="login-input-btn" id="login-a-btn-1" value="찾기">
        </div>
    </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>