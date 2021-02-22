<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                    margin-top: 20px;
                }
                
                .find-title {
                    width: 100%;
                    height: 18px;
                    font-size: 12px;
                    line-height: 18px;
                }
                
                .pw_chk {
                    height: 48px;
                    line-height: 18px;
                    font-size: 12px;
                    color: #666666;
                    padding-top: 6px;
                }
                
                .pw_chk2 {
                    height: 20px;
                    line-height: 18px;
                    font-size: 12px;
                    color: #666666;
                    padding-top: 6px;
                    display: none;
                }
            </style>
        </head>
        <script>
            // 비밀번호 정규식 
            var check1 = /^(?=.*[a-zA-Z])(?=.*[0-9]).{10,20}$/; //영문,숫자

            var check2 = /^(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9]).{10,20}$/; //영문,특수문자

            var check3 = /^(?=.*[^a-zA-Z0-9])(?=.*[0-9]).{10,20}$/; //특수문자, 숫자
            $(document).ready(function() {
                //  password
                $("#m_pwd").on("propertychange change keyup paste input", function() {
                    if ($('#m_pwd').val().length < 10 || check1.test($('#m_pwd').val()) != true && check2.test($('#m_pwd').val()) != true && check3.test($('#m_pwd').val()) != true || /(\w)\1\1/.test($('#m_pwd').val())) {
                        $('.pw_chk').css('color', 'red');
                    } else {
                        $('.pw_chk').html('사용 가능한 비밀번호입니다');
                        $('.pw_chk').css('color', 'green');
                        $(".pw_chk2").css("display", "block");
                        $("#m_pwd2").on("propertychange change keyup paste input", function() {
                            if ($('#m_pwd').val() == $('#m_pwd2').val()) {
                                $('.pw_chk2').css('color', 'green');
                                $("#findpw-val").val($('#m_pwd2').val());
                            } else {
                                $('.pw_chk2').css('color', 'red');
                            }
                        });
                    }
                });
                $("#findpw-ch-form").on('submit', function() {
					if($("#findpw-val").val()==''){
						alert('새 비밀번호를 형식에 맞추어 입력해주세요.');
						return false;
					} else{
						alert("비밀번호가 변경되었습니다.");
						return true;
					}
                });
            });
        </script>

        <body>
            <jsp:include page="header.jsp"></jsp:include>
            <div id="login-big-con">
                <h3>비밀번호 찾기</h3>
                <div id="login-wirte-form">
                    <strong class="find-title">새 비밀번호 등록</strong>
                    <input type="password" class="login-input" id="m_pwd" placeholder="새 비밀번호를 입력해주세요">
                    <p class="pw_chk">
                        최소 10글자 이상/영문, 숫자, 특수문자 2개 이상 조합<br> 동일한 숫자 3개 이상 연속 사용 불가
                    </p>
                    <strong class="find-title">새 비밀번호 확인</strong>
                    <input type="password" class="login-input" id="m_pwd2" placeholder="새 비밀번호를 한 번 더 입력해주세요">
                    <p class="pw_chk2">
                        동일한 비밀번호를 입력해주세요
                    </p>
                    <form id="findpw-ch-form" action="changepw" method="post">
                    <c:if test="${not empty hiddenid }">
                    <input type="hidden" name="m_id" value="${hiddenid }">
                    </c:if>
                        <input type="hidden" name="m_password" id="findpw-val">
                        <input type="submit" class="login-input-btn" id="login-a-btn-1" onclick="findpw();" value="확인">
                    </form>
                </div>
            </div>

            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>