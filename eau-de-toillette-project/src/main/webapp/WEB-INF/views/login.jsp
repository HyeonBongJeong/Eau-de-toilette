<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>로그인</title>
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
                    height: 352px;
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
                }
            </style>
        </head>
        <script>
        function login(){
        	var m_id = $("#m_id").val();
        	var m_password = $("#m_password").val();
        	if(m_id!='' && m_password!=''){
        	$.ajax({
        		url: "${pageContext.request.contextPath}/enterlogin",
				method : "POST",
				data : {
					m_id : m_id,
					m_password : m_password
				},
				success : function(data) {
					console.log("data: " + data);
					if(data==0){
						alert("등록되지 않은 아이디입니다.");
						$("#m_id").val('');
						$("#m_password").val('');
					} else if(data==1){
						alert("비밀번호를 다시 확인해주세요.");
						$("#m_password").val('');
					} else if(data==2){
						var url = "${pageContext.request.contextPath}/loginSuccess?m_id=" + m_id;
						$(location).attr('href', url);
					}
				},
				error : function(request, status, error) {
					console.log("error");
					alert("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:"
							+ error);
				}
        	});
        	} else{
        		alert("아이디와 비밀번호를 입력해주세요.");
        	}
        }
        </script>

        <body>
            <jsp:include page="header.jsp"></jsp:include>
            <div id="login-big-con">
                <h3>로그인</h3>
                <div id="login-wirte-form">
                    <input type="text" class="login-input" id="m_id" name="m_id" placeholder="아이디를 입력해주세요">
                    <input type="password" class="login-input" id="m_password" placeholder="비밀번호를 입력해주세요">
                    <div id="login-a-btn-con">
                        <a href="findid" class="login-a-btn">아이디 찾기</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="findpwd" class="login-a-btn">비밀번호 찾기</a>
                    </div>
                    <input type="submit" class="login-input-btn" id="login-a-btn-1" value="로그인" onclick="login();">
                    <input type="button" class="login-input-btn" value="회원가입" onclick="location.href='register';">
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </body>

        </html>