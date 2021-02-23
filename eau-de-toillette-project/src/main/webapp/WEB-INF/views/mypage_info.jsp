<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<style type="text/css">        
        
        
        /*비밀번호 확인 페이지*/
        #mypage_passChk{
        	border-collapse: separate;
 			border-spacing: 0 10px;
 			margin: 0 auto;
 			height: 100%; 
 			clear: both;
 			font-size: 14px;
 			
        }
        
        #form-bottom{
        width : 100%;
        margin:10px 0 20px 0;
        border-bottom: 1px solid #ccc;
        }
        
        .mypage_passChk_td_label{
         padding: 20px 0 20px 120px;
	        font-size: 15px;
	        font-weight: bold;
	        vertical-align: top;
        }
        
        .mypage_passChk_td_input{
        padding-left: 20px
        }
        
        .mypage_passChk_td_input_single{
       		 width: 300px;
	         height: 40px;
	         border: 1px solid #ccc;
	         font-size: 14px;
	         border-radius: 2px;
	         padding: 0 0 0 20px;

        }
        
        #mypage_passChk_submit{
        width: 500px;
        height: 60px;
        color : white;
        font-size: 20px;
        background: #5f0080;
        font-weight: bold;
        }
   
        /*마이페이지 종료*/
</style>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>

     <div id="main">

 <jsp:include page="myPageTop.jsp"></jsp:include>
        <div id="mypage_section">
          <div id="mypage-side-section">
            <h2>마이뚜알레</h2>
            <div id="mypage-side-menu">
                <ul id="mypage-side-menus">
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/myPageOrderList.do'">주문내역&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/mypageShippingDestination.do'">배송지 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 75px;"></a></li>
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/myPageInfo.do'">개인 정보 수정&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 55px;"></a></li> 
                </ul>
                <div id="mypage-ques">
                    <p id="mypage-ques-header">도움이 필요하신가요?</p>
                    <p id="mypage-ques-text">1대1문의하기</p>
                </div>
            </div>
		</div>
            <div class="mypage-personer-info">
                <div class = "mypage-personer-info-section">
                    <h2>개인정보 수정</h2>
                    <div>비밀번호 재확인</div>
                    <div>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한번 확인해주세요</div>
                    <br>
                    <hr style="background-color: black; height: 1px;">
                    <div>
                    	<form class="mypage_update_info" action="mypage_update.do" method="post" style="text-align: center;">
	                        <table id="mypage_passChk">
	                            <tr class="mypage_passChk_tr">
	                                <td class="mypage_passChk_td_label">아이디</td>
	                                <!-- 여기 인풋값 세션값들어가야함 -->
	                                <td class="mypage_passChk_td_input"><input class="mypage_passChk_td_input_single" type="text" name="id" value="whb1026" readonly="readonly"></td>
	                            </tr>
	                            <tr class="mypage_passChk_tr">
	                                <td  class="mypage_passChk_td_label">비빌번호</td>
	                                <td  class="mypage_passChk_td_input"><input class="mypage_passChk_td_input_single" type="text" name="password"></td>
	                            </tr>
	                        </table>
	                        <hr id="form-bottom">
                        <input id="mypage_passChk_submit" type="submit" name="passCk" value="확인">
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 <script>
 	$('.mypage_update_info').submit(function(event){ 
 		/*전송 이벤트를 막고 폼안의 비밀번호와 아이디를 변수에 저장한다*/
 		
 		event.preventDefault();
 		var password = $('input[name=password]').val();
		var id = $('input[name=id]').val();
		/*ajax의 전송 결과를 담는 변수*/
		if(!password){
			alert('비밀번호를 입력해 주세요.'); 
		}else{
			
		
 		var when = 
 			$.ajax({
 				 url : "${pageContext.request.contextPath}/myPagePassChk.do",
	             type : 'POST',
	             dataType : 'json',
	             data : {
	                m_id : id,
	                m_password : password
	                	
	                },
 			 success : function(data) {
             	console.log(data);
             	if(data == '1'){
             		console.log('맞음');

             	}                
             },
 		}); 
 		/*ajax가 끝나면 실행*/
 		$.when(when) 
 		.done(function(data) { 
 			var message = data; 
 			if ( message == '1' ) {
 				console.log('success');
 				event.currentTarget.submit(); 
 				} else{
 					alert('비밀번호가 일치하지 않습니다.'); 
 				}
 			})
		}
 	});

 </script>
</body>
</html>