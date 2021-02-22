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
                    margin-top: 30px;
                }
                
                .find-title {
                    width: 100%;
                    height: 18px;
                    font-size: 12px;
                    line-height: 18px;
                }
                
                .txt-email {
                    height: 20px;
                    padding-top: 10px;
                    font-size: 14px;
                    line-height: 20px;
                    text-align: center;
                }
                
                .emph {
                    color: #4c0c70;
                    background-color:transparent;
                    outline:none;
                    border:none;
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
            
            $("#login-a-btn-1").on('click', function() {
                var chknumber = $("#chknumber").val();
                var chk1 = $("#chk1").val();
                var m_id = $("#m_id").val();
                console.log(chknumber);
                console.log(chk1);
                console.log(m_id);
                if (chknumber != chk1) {
                    alert('인증번호를 정확하게 입력해주세요.');
                    $("#chknumber").val('');
                } else if (chknumber == chk1) {
                	var url = "${pageContext.request.contextPath}/findpwdcg?m_id=" + m_id;
                    $(location).attr('href', url);
                }
            });
            });
        </script>

        <body>
            <jsp:include page="header.jsp"></jsp:include>
            <div id="login-big-con">
                <h3>비밀번호 찾기</h3>
                <div id="login-wirte-form">
                    <form id="sendmail" action="mailSender" method="post">
                        <strong class="find-title">이메일 주소 인증</strong>
                        <input type="text" class="login-input" id="chknumber" placeholder="인증번호를 입력해주세요">
                        <p class="txt-email">
                            인증번호를 못 받았다면?
                            <input type="submit" class="emph" value="인증번호 재전송 >">
                        </p>
                        <c:if test="${not empty hiddenid }">
                            <input type="hidden" name="m_id" id="m_id" value="${hiddenid }">
                        </c:if>
                        <c:if test="${not empty chk }">
                            <input type="hidden" id="chk1" value="${chk }">
                            <input type="hidden" name="chk" id="chk">
                        </c:if>
                        <c:if test="${not empty hiddenemail }">
                            <input type="hidden" name="m_email" value="${hiddenemail }">
                        </c:if>
                    </form>
                        <input type="button" class="login-input-btn" id="login-a-btn-1" value="확인">
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>

        </body>

        </html>