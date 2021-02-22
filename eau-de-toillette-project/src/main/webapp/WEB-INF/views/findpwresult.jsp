<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>비밀번호 찾기</title>
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
                
                #find-result {
                    width: 340px;
                    margin: 0 auto;
                    padding-top: 90px;
                    text-align: center;
                }
                
                #find-title {
                    height: 20px;
                    font-size: 20px;
                    line-height: 20px;
                }
                
                #find-view {
                    padding: 26px;
                    height: 280px;
                    margin-bottom: 120px;
                }
                
                #find-icon {
                    width: 52px;
                    height: 60px;
                    padding: 10px 0 5px 0;
                }
                
                #find-text {
                    font-size: 20px;
                    line-height: 36px;
                    height: 72px;
                    color: #4C0C70;
                    padding-bottom: 14px;
                }
                
                #find-info {
                    height: 18px;
                    width: 338px;
                    margin-left: -26px;
                    font-size: 12px;
                    line-height: 18px;
                    padding-bottom: 30px;
                }
                
                #find-btn {
                    margin-top: 30px;
                    width: 338px;
                    height: 52px;
                    border: 1px solid #4C0C70;
                    background-color: #4C0C70;
                    color: #fff;
                    display: inline-block;
                    line-height: 52px;
                    font-size: 16px;
                    margin-left: -26px;
                    outline: none;
                }
            </style>
        </head>
        <script>
            $(function(){
                var number = Math.floor(Math.random() * 100000) + 100000;
                var athor_text;
            if (number > 100000) {
                number = number - 10000;
            }
            if (!athor_text) {
                athor_text = number;
            } else {
                athor_text = '';
                athor_text = number;
            }
            $("#chk").val(athor_text);
            });
            
        </script>


        <body>
            <jsp:include page="header.jsp"></jsp:include>
            <div id="find-result">
                <h3 id="find-title">비밀번호 찾기</h3>
                <div id="find-view">
                    <img src="${pageContext.request.contextPath}/resources/images/001-email.svg" id="find-icon">
                    <div id="find-text">이메일로 인증 완료후<br>비밀번호를 재발급 받으세요!</div>
                    <c:if test="${not empty findpwresult }">
                        <p id="find-info">입력하신 ${findpwresult} 으로 인증번호가 발송되며, 인증 후 비밀번호가 재발급됩니다. 전송량이 많은 경우 이메일 전송이 지연될 수 있습니다.</p>
                    </c:if>
                    <form id="sendmail" action="mailSender" method="post">
                        <c:if test="${not empty hiddenid }">
                            <input type="hidden" name="m_id" value="${hiddenid }">
                        </c:if>
                        <c:if test="${not empty hiddenemail }">
                            <input type="hidden" name="m_email" value="${hiddenemail }">
                            <input type="hidden" name="chk" id="chk">
                        </c:if>
                        <input type="submit" id="find-btn" value="인증번호 받기">
                    </form>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>