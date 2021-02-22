<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>회원가입</title>
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
                
                #reg-finish-con {
                    width: 1050px;
                    margin: 0 auto;
                    margin-top: 180px;
                    margin-bottom: 220px;
                    height: 309px;
                    padding: 50px 0px 50px 0px;
                    border-top: 2px solid #333333;
                    border-bottom: 1px solid #333333;
                    text-align: center;
                    background-color: #F7F5F8;
                }
                
                #joincomp {
                    width: 430px;
                    height: 309px;
                    margin: 0 auto;
                }
                
                .desc {
                    height: 18px;
                    font-size: 20px;
                    color: #4C4C4C;
                    margin-bottom: 30px;
                }
                
                .member-info {
                    height: 177px;
                    padding: 10px 0 0 0;
                    border-top: 2px solid #4C0C70;
                }
                
                .member-info>ul>li {
                    list-style: none;
                    height: 58px;
                    width: 100%;
                    border-bottom: 1px solid #4C0C70;
                }
                
                .bolds {
                    width: 129px;
                    height: 58px;
                    padding: 20px 0 20px 20px;
                    box-sizing: border-box;
                    float: left;
                    font-size: 13px;
                    line-height: 18px;
                    text-align: left;
                }
                
                .normals {
                    float: left;
                    font-size: 13px;
                    line-height: 18px;
                    margin-top: 20px;
                }
                
                #button {
                    margin-top: 30px;
                    height: 42px;
                }
                
                .movebtn {
                    width: 198px;
                    height: 40px;
                    border: 1px solid #4C0C70;
                    display: inline-block;
                    font-size: 13px;
                    line-height: 40px;
                    cursor: pointer;
                }
                
                #movebtn1:hover {
                    background-color: #4C0C70;
                    color: #fff;
                }
                
                #movebtn2:hover {
                    background-color: #fff;
                    color: #4C0C70;
                }
                
                #movebtn1 {
                    color: #4C0C70;
                    background-color: #fff;
                }
                
                #movebtn2 {
                    color: #fff;
                    background-color: #705B8F;
                }
            </style>
        </head>

        <body>
            <jsp:include page="header.jsp"></jsp:include>
            <div id="reg-finish-con">
                <div id="joincomp">
                    <p class="desc">회원가입이 완료되었습니다.</p>
                    <div class="member-info">
                        <c:if test="${not empty regInfo }">
                            <ul>
                                <li>
                                    <strong class="bolds">아이디</strong>
                                    <span class="normals">${ regInfo.m_id}</span>
                                </li>
                                <li>
                                    <strong class="bolds">이름</strong>
                                    <span class="normals">${regInfo.m_name }</span>
                                </li>
                                <li>
                                    <strong class="bolds">이메일</strong>
                                    <span class="normals">${regInfo.m_email }</span>
                                </li>
                            </ul>
                        </c:if>
                    </div>
                    <div id="button">
                        <a href="main" class="movebtn" id="movebtn1">메인페이지로 이동</a>
                        <a href="#" class="movebtn" id="movebtn2">마이페이지로 이동</a>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>