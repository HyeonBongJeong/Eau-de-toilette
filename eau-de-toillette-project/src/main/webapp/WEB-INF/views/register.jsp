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
                
                #reg-big-con {
                    width: 640px;
                    margin: 0 auto;
                }
                
                #reg-head>h3 {
                    padding-top: 64px;
                    height: 40px;
                    font-size: 30px;
                    line-height: 40px;
                    text-align: center;
                }
                
                #reg-sub {
                    padding: 23px 0 10px 0;
                    width: 100%;
                    height: 17px;
                    line-height: 17px;
                    text-align: right;
                    font-size: 12px;
                    color: #666666;
                }
                
                #reg-big-con>ul {
                    list-style: none;
                }
                
                #reg-tlb {
                    width: 100%;
                }
                
                .reg-title {
                    width: 159px;
                    padding: 9px 0px 0px 20px;
                    height: 83px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input {
                    width: 481px;
                    padding: 9px 0px 0px 0px;
                }
                
                .reg-title-1 {
                    width: 159px;
                    padding: 0px 0px 0px 20px;
                    height: 74px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input-1 {
                    width: 481px;
                }
                
                .reg-title-2 {
                    width: 159px;
                    padding: 0px 0px 9px 20px;
                    height: 83px;
                    font-size: 14px;
                    box-sizing: border-box;
                }
                
                .reg-input-2 {
                    width: 481px;
                    padding: 0px 0px 9px 0px;
                }
                
                .reg-text {
                    outline: none;
                    width: 302px;
                    height: 42px;
                    padding: 0 14px 0 14px;
                    border: 1px solid #ccc;
                    border-radius: 3px;
                }
                
                .reg-text:focus {
                    border: 1px solid #333333;
                }
                
                .reg-btn {
                    width: 118px;
                    height: 42px;
                    outline: none;
                    border: 1px solid #4C0C70;
                    border-radius: 3px;
                    background-color: transparent;
                    color: #4C0C70;
                    font-size: 14px;
                    margin-left: 5px;
                    cursor: pointer;
                }
                
                .reg-btn-2 {
                    width: 332px;
                    height: 42px;
                    outline: none;
                    border: 1px solid #4C0C70;
                    border-radius: 3px;
                    background-color: transparent;
                    color: #4C0C70;
                    font-size: 14px;
                    cursor: pointer;
                }
                
                #reg-search-icon {
                    width: 12px;
                    height: 12px;
                    margin-right: 6px;
                }
                
                .reg-genter-rabel {
                    display: inline-block;
                }
                
                .reg-gender-p {
                    float: left;
                    margin: 0px 52px 0px 12px;
                    font-size: 14px;
                    line-height: 24px;
                }
                
                .reg-circle-1 {
                    border: 1px solid #ccc;
                    background-color: #fff;
                    width: 22px;
                    height: 22px;
                    border-radius: 50%;
                    cursor: pointer;
                    float: left;
                }
                
                .reg-circle-con {
                    float: left;
                    display: none;
                }
                
                .reg-circle-2 {
                    background-color: #4C0C70;
                    width: 24px;
                    height: 24px;
                    border-radius: 50%;
                    cursor: pointer;
                    float: left;
                }
                
                .reg-circle-3 {
                    background-color: #fff;
                    width: 10px;
                    height: 10px;
                    border-radius: 50%;
                    cursor: pointer;
                    position: absolute;
                    margin-top: 7px;
                    margin-left: 7px;
                }
                
                .reg-birth {
                    width: 332px;
                    height: 42px;
                    outline: none;
                    border: 1px solid #ccc;
                    border-radius: 3px;
                    background-color: transparent;
                    color: #ccc;
                    font-size: 14px;
                    cursor: pointer;
                }
                
                .reg-birth-text {
                    border: none;
                    outline: none;
                    width: 56px;
                    height: 42px;
                    padding: 0px 14px 0px 14px;
                    text-align: center;
                    float: left;
                }
                
                .reg-blank {
                    width: 22px;
                    height: 42px;
                    float: left;
                    color: #ccc;
                    line-height: 42px;
                    text-align: center;
                    cursor: default;
                }
                
                .reg-guide {
                    width: 100%;
                    margin-bottom: 10px;
                }
                
                .reg-guide>span {
                    display: block;
                    height: 18px;
                    font-size: 12px;
                    line-height: 18px;
                    color: #666666;
                }
                
                .fa-circle {
                    font-size: 2px;
                }
                
                .reg-guide-con {
                    display: none;
                }
                /* #agree-all-con {
            width: 100%;
            height: 40px;
            padding: 12px 0px 4px 0px;
            box-sizing: border-box;
        }
        
        #agree-all-con>span {
            margin-left: 12px;
            color: #4c4c4c;
            font-size: 18px;
            line-height: 24px;
        }
        
        #reg-agree-span-1 {
            height: 17px;
            font-size: 12px;
            line-height: 17px;
            display: block;
            margin: 0px 0px 10px 36px;
        }
        
        .agree-each {
            width: 100%;
            height: 24px;
            padding: 8px 0px 8px 0px;
        }
        
        .reg-agree-title {
            margin-left: 12px;
            color: #4c4c4c;
            font-size: 14px;
            line-height: 24px;
        }
        
        .reg-agree-title-2 {
            color: #999999;
            font-size: 14px;
            line-height: 24px;
        } */
                
                #reg-footer {
                    width: 100%;
                    height: 56px;
                    padding: 40px 0pc 120px 0px;
                    display: flex;
                    justify-content: center;
                }
                
                #reg-btn {
                    height: 56px;
                    width: 240px;
                    border: none;
                    outline: none;
                    background-color: #4C0C70;
                    color: #fff;
                    font-size: 16px;
                    border-radius: 3px;
                }
            </style>
        </head>
        <script>
            $(function() {
                $('input[type=radio][name=m_gender]').change(function() {
                    if (this.value == 'M') {
                        $(".reg-circle-con").css("display", "block");
                        $("#male-2").css("dlsplay", "block");
                        $("#male-1").css("display", "none");
                        $("#female-1").css("display", "block");
                        $("#notcheck-1").css("display", "block");
                        $("#female-2").css("display", "none");
                        $("#notcheck-2").css("display", "none");
                    } else if (this.value == 'F') {
                        $(".reg-circle-con").css("display", "none");
                        $("#male-2").css("dlsplay", "none");
                        $("#male-1").css("display", "block");
                        $("#female-1").css("display", "none");
                        $("#female-2").css("display", "block");
                        $("#notcheck-1").css("display", "block");
                        $("#notcheck-2").css("display", "none");
                    } else if (this.value == 'N') {
                        $(".reg-circle-con").css("display", "none");
                        $("#male-2").css("dlsplay", "none");
                        $("#male-1").css("display", "block");
                        $("#female-1").css("display", "block");
                        $("#female-2").css("display", "none");
                        $("#notcheck-1").css("display", "none");
                        $("#notcheck-2").css("display", "block");
                    }
                });

                $(".reg-birth-text").focus(function() {
                    $(".reg-birth").css("border", "1px solid #666666");
                });
                $(".reg-birth-text").blur(function() {
                    $(".reg-birth").css("border", "1px solid #ccc");
                });

                $("#reg-input-1").focus(function() {
                    $("#reg-guide-con-1").css("display", "table-row");
                });
                $("#reg-input-2").focus(function() {
                    $("#reg-guide-con-2").css("display", "table-row");
                });
                $("#reg-input-3").focus(function() {
                    $("#reg-guide-con-3").css("display", "table-row");
                });
            });
        </script>

        <body>
            <jsp:include page="header.jsp"></jsp:include>
           <div id="reg-big-con">
        <div id="reg-head">
            <h3>회원가입</h3>
            <p id="reg-sub">* 필수입력사항</p>
        </div>
        <table id="reg-tlb" style="border-top: 2px solid #333333;">
            <tr>
                <td class="reg-title">아이디*</td>
                <td class="reg-input">
                    <input type="text" class="reg-text" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" id="reg-input-1">
                    <input type="button" class="reg-btn" value="중복확인">
                </td>
            </tr>
            <tr class="reg-guide-con" id="reg-guide-con-1">
                <td class="reg-title-s"></td>
                <td class="reg-input-s">
                    <p class="reg-guide">
                        <span id="reg-span-1"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;6자 이상의 영문 혹은 영문과 숫자를 조합</span>
                        <span id="reg-span-2"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;아이디 중복확인</span>
                    </p>
                </td>
            </tr>
            <tr>
                <td class="reg-title-1">비밀번호*</td>
                <td class="reg-input-1">
                    <input type="password" class="reg-text" placeholder="비밀번호를 입력해주세요" id="reg-input-2">
                </td>
            </tr>
            <tr class="reg-guide-con" id="reg-guide-con-2">
                <td class="reg-title-s"></td>
                <td class="reg-input-s">
                    <p class="reg-guide">
                        <span id="reg-span-3"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;10자 이상 입력</span>
                        <span id="reg-span-4"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;영문/숫자/특수문자(공백 제외)만 허용하며, 2개 이상 조합</span>
                        <span id="reg-span-5"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;동일한 숫자 3개 이상 연속 사용 불가</span>
                    </p>
                </td>
            </tr>
            <tr>
                <td class="reg-title-1">비밀번호확인*</td>
                <td class="reg-input-1">
                    <input type="password" class="reg-text" placeholder="비밀번호를 한번 더 입력해주세요" id="reg-input-3">
                </td>
            </tr>
            <tr class="reg-guide-con" id="reg-guide-con-3">
                <td class="reg-title-s"></td>
                <td class="reg-input-s">
                    <p class="reg-guide">
                        <span id="reg-span-6"><i class="far fa-circle"></i>&nbsp;&nbsp;&nbsp;동일한 비밀번호를 입력해주세요</span>
                    </p>
                </td>
            </tr>
            <tr>
                <td class="reg-title-1">이름*</td>
                <td class="reg-input-1">
                    <input type="password" class="reg-text" placeholder="이름을 입력해주세요">
                </td>
            </tr>
            <tr>
                <td class="reg-title-1">이메일*</td>
                <td class="reg-input-1">
                    <input type="email" class="reg-text" placeholder="예: eaudetoillette@eaude.com">
                    <input type="button" class="reg-btn" value="중복확인">
                </td>
            </tr>
            <tr>
                <td class="reg-title-1">휴대폰*</td>
                <td class="reg-input-1">
                    <input type="tel" class="reg-text" placeholder="숫자만 입력해주세요">
                    <input type="button" class="reg-btn" value="인증번호 받기">
                </td>
            </tr>
            <tr>
                <td class="reg-title-1">성별</td>
                <td class="reg-input-1">
                    <input type="radio" name="m_gender" id="male" value="M" style="display: none;">
                    <input type="radio" name="m_gender" id="female" value="F" style="display: none;">
                    <input type="radio" name="m_gender" id="notcheck" value="N" checked style="display: none;">
                    <label for="male" class="reg-genter-rabel">
                        <div class="reg-circle-1" id="male-1"></div>
                        <div class="reg-circle-con" id="male-2">
                            <div class="reg-circle-2"></div>
                            <div class="reg-circle-3"></div>
                        </div>
                        <p class="reg-gender-p">남자</p>
                    </label>
                    <label for="female" class="reg-genter-rabel">
                        <div class="reg-circle-1" id="female-1"></div>
                        <div class="reg-circle-con" id="female-2">
                            <div class="reg-circle-2"></div>
                            <div class="reg-circle-3"></div>
                        </div>
                        <p class="reg-gender-p">여자</p>
                    </label>
                    <label for="notcheck" class="reg-genter-rabel">
                        <div class="reg-circle-1" id="notcheck-1" style="display: none;"></div>
                        <div class="reg-circle-con" id="notcheck-2" style="display: block;">
                            <div class="reg-circle-2"></div>
                            <div class="reg-circle-3"></div>
                        </div>
                        <p class="reg-gender-p">선택안함</p>
                    </label>
                </td>
            </tr>
            <tr>
                <td class="reg-title-2" style="margin-bottom: 9px;">생년월일</td>
                <td class="reg-input-2">
                    <div class="reg-birth">
                        <p class="reg-blank"></p>
                        <input type="text" class="reg-birth-text" placeholder="YYYY">
                        <p class="reg-blank">/</p>
                        <input type="text" class="reg-birth-text" placeholder="MM">
                        <p class="reg-blank">/</p>
                        <input type="text" class="reg-birth-text" placeholder="DD">
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-bottom: 1px solid #333333;"></td>
            </tr>
            <!-- <tr>
                <td class="reg-title-1">이용약관동의*</td>
                <td class="reg-input-1">
                    <input type="checkbox" name="agree" id="agree-all" style="display: none;">
                    <input type="checkbox" name="agree" id="agree-1" style="display: none;">
                    <input type="checkbox" name="agree" id="agree-2" style="display: none;">
                    <input type="checkbox" name="agree" id="agree-3" style="display: none;">
                    <input type="checkbox" name="agree" id="agree-4" style="display: none;">
                    <input type="checkbox" name="agree" id="agree-5" style="display: none;">
                    <input type="checkbox" name="agree" id="agree-6" style="display: none;">
                    <input type="checkbox" name="agree" id="agree-7" style="display: none;">
                    <label for="agree-all">
                        <div id="agree-all-con">
                            <div class="reg-circle-1"></div>
                            <span>전체 동의합니다.</span>
                        </div>
                    </label>
                    <span id="reg-agree-span-1">
                        선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.
                    </span>
                    <label for="agree-1">
                        <div class="agree-each">
                            <div class="reg-circle-1"></div>
                            <span class="reg-agree-title">이용약관 동의&nbsp;</span><span class="reg-agree-title-2">(필수)</span>
                        </div>
                    </label>
                    <label for="agree-2">
                        <div class="agree-each">
                            <div class="reg-circle-1"></div>
                            <span class="reg-agree-title">개인정보 수집, 이용 동의&nbsp;</span><span class="reg-agree-title-2">(필수)</span>
                        </div>
                        <label for="agree-3">
                            <div class="agree-each">
                                <div class="reg-circle-1"></div>
                                <span class="reg-agree-title">개인정보 수집, 이용 동의&nbsp;</span><span class="reg-agree-title-2">(필수)</span>
                            </div>
                        </label>
                    <label for="agree-4">
                            <div class="agree-each">
                                <div class="reg-circle-1"></div>
                            </div>
                        </label>
                    <label for="agree-5">
                            <div class="agree-each">
                                <div class="reg-circle-1"></div>
                            </div>
                        </label>
                    <label for="agree-6">
                            <div class="agree-each">
                                <div class="reg-circle-1"></div>
                            </div>
                        </label>
                    <label for="agree-7">
                            <div class="agree-each">
                                <div class="reg-circle-1"></div>
                            </div>
                        </label>
                </td>
            </tr> -->
        </table>
        <div id="reg-footer">
            <input type="submit" value="가입하기" id="reg-btn">
        </div>
    </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>