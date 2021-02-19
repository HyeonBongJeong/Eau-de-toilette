<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<style type="text/css">        
        
        
        /*개인정보 수정 폼*/
        #mypage_personer_info_update_tb{
        	border-collapse: separate;
 			border-spacing: 0 10px;
 			margin: 0 auto;
 			height: 100%; 
 			clear: both;
 			font-size: 14px;
        }
        .mypage_personer_info_update_td_label{
	        padding: 20px 0 20px 120px;
	        font-size: 15px;
	        font-weight: bold;
	        vertical-align: top;
        }
        
        .mypage_personer_info_update_td_input{
        	padding-left: 20px
        }
        
        .mypage_personer_info_update_single_input{
	         width: 300px;
	         height: 40px;
	         border: 1px solid #ccc;
	         font-size: 14px;
	         border-radius: 2px;
	         padding: 0 0 0 20px;
         }
         
         .mypage_personer_info_update_button{
	         width: 100px;
	         height: 40px;
	         background-color: white;
	         border: 1px solid #5f0080;
	         color: #5f0080;
	         font-size: 14px;
	         font-weight: bold;
	         margin-left: 10px;
	         border-radius: 2px;
	         cursor: pointer;
         }
         .mypage_personer_info_update_button_2{
	         width: 100px;
	         height: 40px;
	         background-color: #5f0080;
	         border: 1px solid #5f0080;
	         color: white;
	         font-size: 14px;
	         font-weight: bold;
	         margin-left: 10px;
	         border-radius: 2px;
	         cursor: pointer;
         }
         .mypage_personer_info_update_gender_label{
         	font-size: 14px;
         }
         .mypage_personer_info_update_gender_label .mypage_personer_info_update_gender:checked + .mypage_personer_info_update_gender_span{
    		 background: url(${pageContext.request.contextPath}/resources/images/chk.png) no-repeat 50% 50%;
    		 background-size: 24px 24px;
		}
		.mypage_personer_info_update_gender_label .mypage_personer_info_update_gender + .mypage_personer_info_update_gender_span{
			display: inline-block;
		    position: relative;
		    width: 24px;
		    height: 24px;
		    margin-right: 12px;
		    background: url(${pageContext.request.contextPath}/resources/images/defaultChk.png) no-repeat 50% 50%;
		    background-size: 24px 24px;
		    vertical-align: -7px;
		}
		
		#mypage_personer_info_update_birth_div{
			width: 300px;
	        height: 40px;
			display: block;
			border: 1px solid #ccc;
			font-size: 14px;
	        border-radius: 5px;
	        
			
		}
		
		.mypage_personer_info_update_birth{
			display: inline;
			width: 94px;
			height: 40px;
			margin: 0;
			padding: 0;
			border: none;
			text-align: center;
		}
		
		#mypage_personer_info_update_choose_agree + #mypage_personer_info_update{
			display: inline-block;
		    position: relative;
		    width: 24px;
		    height: 24px;
		    margin-right: 12px;
		    border: 0;
		    background: url(${pageContext.request.contextPath}/resources/images/defaultChk.png) no-repeat 50% 50%;
		    background-size: 24px 24px;
		    vertical-align: -7px;
		}
		
		#mypage_personer_info_update_choose_agree:checked + #mypage_personer_info_update{
		    background: url(${pageContext.request.contextPath}/resources/images/chk.png) no-repeat 50% 50%;
		    background-size: 24px 24px;
		}
		#mypage-btn{
			width: 225px;
			height: 100%;
			margin: 0 auto;
			padding : 50px 0 150px 0;
		
		}
        
        
        #pass_warning{
        	display: none;
        	color: #b3130b;
        	font-size: 14px;
        }
        
        #new_password{
        	display: none;
        	padding-left:20px;
        	font-size: 12px;
        	
        }
        #re_pass_warning{
        	display: none;
        	color: #b3130b;
        	font-size: 14px;
        	
        }
        
        #email_warning{
        	display: none;
        	color: #b3130b;
        	font-size: 14px;
        }
  		
  		.top-margin{
  			margin-top: 10px;
  			display: none;
  			color: #BDBDBD;
  		}
  		.chk-phone{
  			border : 1px solid #BDBDBD;
  			color: #BDBDBD;
  			display: none;
  		}
  		
  		#count{
  		position: absolute;
	    left: 180px;
	    top: 10px;
	    width: 100px;
	    font-size: 14px;
	    color: #b3130b;
	    line-height: 20px;
	    text-align: right;
	    letter-spacing: -.5px;
    }
    
    #athor_num_text{
    	font-size: 12px;
    	
    }
    #yak_div{
    margin-top:10px;
    display: block; 
    width: 300px; 
    overflow:auto; 
    word-break:break-all;
    }
    
    #yak_tb{
    border-collapse: collapse;
    font-size:12px; 
    border: 1px solid grey; 
    width: 100%; 
    text-align: center;
    }
    .yak_tr .yak_td{
    font-size:12px; 
    border: 1px solid grey;
    }
    
    .yak_tr_col{
     background-color: #ccc;
    }
    
    .yak_trans{
	transform: rotate( 90deg );
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
                    <li class= "menu">&nbsp;&nbsp;&nbsp;주문내역&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;배송지 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 75px;"></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;상품후기&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;적립금&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 105px;"></li>
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;개인 정보 수정&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 55px;"></li> 
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
                    <br>
                    
                    
                    <hr style="background-color: black; height: 1px;">
                    <div>
                    	<form class="mypage_personer_info_update" action="mypage_personer_info_update.do" method="post">
	                        <c:if test="${not empty sessionList}">
	                        <c:forEach items="${sessionList }" varStatus="s" var="vo">
	                        <table id="mypage_personer_info_update_tb">
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">아이디</td>
	                                <td class="mypage_personer_info_update_td_input"><input type="text" class="mypage_personer_info_update_single_input" name="mypage_personer_info_update_id" value="${vo.m_id}" readonly="readonly"></td>
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">현재 비빌번호</td>
	                                <td class="mypage_personer_info_update_td_input">
	                                <input type="text" class="mypage_personer_info_update_single_input" name="mypage_personer_info_update_password">
	                                <div id="pass_warning">
	                                	현재 비밀번호를 확인해 주세요.
	                                </div>
	                                </td>
	                           		
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">새 비빌번호</td>
	                                <td class="mypage_personer_info_update_td_input" >
	                                <input type="text" class="mypage_personer_info_update_single_input" name="mypage_personer_info_update_new_password" readonly="readonly">
	                                <div id="new_password">
	                                	<ul id="new_password_validate_ul"> 
	                                		<li class="new_password_validate_li diff">현재 비밀번호와 다르게 입력</li>
	                                		<li class="new_password_validate_li ennum">영문/숫자/특수문자만 허용하며,2개 이상 조합 10자 이상</li>
	                                		<li class="new_password_validate_li three">동일한 숫자 3개 이상 연속 사용 불가</li>
	                                	</ul>
	                                </div>
	                                </td>
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">새 비빌번호 확인</td>
	                                <td class="mypage_personer_info_update_td_input">
	                                <input type="text" class="mypage_personer_info_update_single_input" name="mypage_personer_info_update_new_passwordChk">
	                                <div id="re_pass_warning">
	                                <input type="hidden" name="pass_chk" value="0">
	                                	새 비밀번호를 확인해주세요.
	                                </div>
	                                </td>
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">이름</td>
	                                <td class="mypage_personer_info_update_td_input"><input type="text" class="mypage_personer_info_update_single_input" name="mypage_personer_info_update_name" value="${vo.m_name}"></td>
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">이메일</td>
	                                <td class="mypage_personer_info_update_td_input">
	                                	<input type="hidden" name="certification_chk_email" value="0">
		                                <input type="text" class="mypage_personer_info_update_single_input" name="mypage_personer_info_update_email" value="${vo.m_email}">
		                                <input type="button" class="mypage_personer_info_update_button" id="chk_email" value="중복확인">
	                                	<div id="email_warning">
	                                	이메일 형식에 맞지 않습니다.
	                                </div>
	                                </td>
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">휴대폰</td>
	                                <td class="mypage_personer_info_update_td_input">
	                                
	                                	<input type="text" class="mypage_personer_info_update_single_input" name="mypage_personer_info_update_phone" value="${vo.m_phone}">
	                                	<input type="button" class="mypage_personer_info_update_button b-phone" id="new_phone" value="다른번호인증">
	                                	<input type="text" class="mypage_personer_info_update_single_input top-margin" name="mypage_personer_info_update_top-margin" value="숫자만 입력해 주세요">
	                                	<input type="button" class="mypage_personer_info_update_button chk-phone" value="인증번호 받기">
	                                	<div id="chk_num_div" style="display: none; margin-top: 10px; position: relative;">
	                                	<input type="text" class="mypage_personer_info_update_single_input" id="chk_num" name="mypage_personer_info_update_chk_num">
	                                	<input type="button" class="mypage_personer_info_update_button" id="chk_num_btn" value="본인인증">
	                                	<p id="count"></p>
	                                	<p id="athor_num_text">문자가 오지 않는다면 번호 확인 후 다시 시도해 주세요.</p>
	                                	<input type="hidden" name="certification_chk_phone" value="0">
	                                	</div>
	                                </td>
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">성별</td>
	                                <td class="mypage_personer_info_update_td_input">
	                                <label for="mypage_personer_info_update_gender_man" style="margin-right: 10px;" class="mypage_personer_info_update_gender_label">
	                                <input style="display: none;" type="radio" value="M" id="mypage_personer_info_update_gender_man" class="mypage_personer_info_update_gender" name="mypage_personer_info_update_gender">
	                               	<span class="mypage_personer_info_update_gender_span"></span>남자 
	                                </label>
	                                <label for="mypage_personer_info_update_gender_women" class="mypage_personer_info_update_gender_label">
	                                <input style="display: none;" type="radio" value="F" id="mypage_personer_info_update_gender_women" class="mypage_personer_info_update_gender" name ="mypage_personer_info_update_gender">
	                                <span class="mypage_personer_info_update_gender_span"></span>여자
	                                </label>
	                                <label for="mypage_personer_info_update_gender_none" class="mypage_personer_info_update_gender_label">
	                                <input style="display: none;" value="none"  type="radio" id="mypage_personer_info_update_gender_none" class="mypage_personer_info_update_gender" name ="mypage_personer_info_update_gender" checked>
	                                <span class="mypage_personer_info_update_gender_span"></span>선택안함
	                                </label>
	                                </td>
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">생년월일</td>
	                                <td class="mypage_personer_info_update_td_input">
	                                	<div id="mypage_personer_info_update_birth_div">
											<input type="text" name="year" class="mypage_personer_info_update_birth" id="mypage_personer_info_update_birth_year" placeholder="YYYY">/
											<input type="text" name="month" class="mypage_personer_info_update_birth" id="mypage_personer_info_update_birth_month"  placeholder="MM">/
											<input type="text" name="date" class="mypage_personer_info_update_birth" id="mypage_personer_info_update_birth_day"  placeholder="DD">
	                                	</div>
	                                </td>
	                            </tr>
	                            <tr class="mypage_personer_info_update_tr">
	                                <td class="mypage_personer_info_update_td_label">선택약관 동의</td>
	                                <td class="mypage_personer_info_update_td_input">
	                                <label for="mypage_personer_info_update_choose_agree">
	                                <input type="checkbox" id="mypage_personer_info_update_choose_agree" name="mypage_personer_info_update_choose_agree" style="display: none;">
	                                <span id="mypage_personer_info_update"></span>개인정보 수집 이용 동의
	                                </label>
	                                <span style="color: #ccc;">(선택)</span>
	                                <span id="yak_show" style="margin-left: 30px; cursor: pointer; color:#5f0081;">약관보기 <img id="yak_img" src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 10px; height: 10px; vertical-align: 1.5px; transition: all ease 0.5s;"></span>
	                                
	                                </td>
	                                
	                            </tr>
	                            
	                            
	                        </table>
	                        </c:forEach>
	                        </c:if>
	                        <div id="yak_div" style="display: none; width: 300px; overflow:auto; word-break:break-all; margin: 0px 200px 20px 310px">
	                                	<table id="yak_tb" style="font-size:12px; border: 1px solid grey; width: 100%; text-align: center;">
	                                		<tr class="yak_tr yak_tr_col" style="font-size:12px; border: 1px solid grey;">
	                                			<td class="yak_td">수집목적</td>
	                                			<td class="yak_td">수집 항목</td>
	                                			<td class="yak_td">보유 기간</td>
	                                		</tr>
	                                		<tr class="yak_tr" style="font-size:12px; border: 1px solid grey;">
	                                			<td class="yak_td">맞춤형 회원 서비스 제공</td>
	                                			<td class="yak_td">성별, 생년월일</td>
	                                			<td class="yak_td">회원탈퇴</td>	                                			
	                                		</tr>
	                                	</table>
	                                </div>
	                        <hr style="border: 1px solid #ccc;">
	                        <div id="mypage-btn">    
	                        <input type="button"class= "mypage_personer_info_update_button" name="mypage_account_del" value="탈퇴하기">
	                        <input type="submit" class="mypage_personer_info_update_button_2" name="mypage_account_update" value="회원정보 수정">
                        </div>
                        </form>

	                    
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 <script>

 $(function(){
	 var athor_text;
	 /*비밀번호 검증*/
	 var default_pass_chk;
	 /*새 비밀번호 검증*/
	 var ennum_chk;
	 var three_chk;
	 var diff_chk;
 	$('input[name=mypage_personer_info_update_password]').focusout(function() {
 		var id = $('input[name=mypage_personer_info_update_id]').val().trim();
 		var password = $('input[name=mypage_personer_info_update_password]').val().trim();
 		var pw = $('input[name=mypage_personer_info_update_new_password]').val().trim();
 		console.log(id);
 		console.log(password);
 		
 		
 		if(password){
 			if(password == pw){
 	 			$('.diff').css('color', 'red');
 	 		}else{
 	 			$('.diff').css('color', 'black');
 	 		}
 			$.ajax({
 				 url : "${pageContext.request.contextPath}/myPagePassChk.do",
 	            type : 'POST',
 	            dataType : 'json',
 	            data : {
 	               m_id : id,
 	               m_password : password
 	               	
 	               },
 			 success : function(data) {
				if(data == '0'){
 				 $('#pass_warning').css('display','block');		
 					default_pass_chk = '0'; 
				}else{
				$('#pass_warning').css('display','none');
					default_pass_chk='1';
				
				}
 			 },
 		}); 
 		}
 		
	})
	
	$('input[name=mypage_personer_info_update_new_password]').focus(function() {
		$('#new_password').css('display','block');
	})
	
	$('input[name=mypage_personer_info_update_new_password]').keyup(function() {
		var b_pw = $('input[name=mypage_personer_info_update_password]').val().trim();
		var pw = $('input[name=mypage_personer_info_update_new_password]').val().trim();
		var checkNumber = pw.search(/[0-9]/g);
		var checkEnglish = pw.search(/[a-z]/ig);
		if(default_pass_chk == '0'){
			alert('현재 비밀번호를 먼저 입력해 주세요');
			$('input[name=mypage_personer_info_update_new_password]').attr("readonly",true);

		}else{
			$('input[name=mypage_personer_info_update_new_password]').removeAttr("readonly");

			if(!b_pw){
				alert('새 비밀번호를 입력 해 주세요');
				$('input[name=mypage_personer_info_update_password]').focus();
			}else{
				if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{10,25}$/.test(pw)){            
			        $('.ennum').css('color', 'red');
			        ennum_chk = '0';
			        
			    }else{
			    	$('.ennum').css('color', 'black');
			        ennum_chk = '1';
			    }
				
				if(/(\w)\1\1/.test(pw)){
			    	$('.three').css('color', 'red');
			    	three_chk = '0';
				}else{
			    	$('.three').css('color', 'black');
			    	three_chk = '1';
			    	
				}
				
				if(b_pw == pw){
			    	$('.diff').css('color', 'red');
			    	diff_chk = '0';
			    }else{
			    	$('.diff').css('color', 'black');
			    	diff_chk = '1';
			    }
			}
		}
		
		
		
	    
	})
 	
	
	$('input[name=mypage_personer_info_update_new_passwordChk]').focusout(function() {
		var new_pw = $('input[name=mypage_personer_info_update_new_password]').val().trim();
		var re_new_pw = $('input[name=mypage_personer_info_update_new_passwordChk]').val().trim();
		if(!new_pw){
			alert('새 비밀번호를 입력 해 주세요');
			$('input[name=mypage_personer_info_update_new_password]').focus();
		}
		else if(new_pw != re_new_pw || ennum_chk == '0' || three_chk == '0' || diff_chk == '0'){
			$('#re_pass_warning').css('display','block');	
			 $('input[name=pass_chk]').val('0');
		}else if(new_pw == re_new_pw && ennum_chk == '1' && three_chk == '1' && diff_chk == '1'){
			$('#re_pass_warning').css('display','none');
			$('input[name=pass_chk]').val('1');
		}
	})
	
	$('input[name=mypage_personer_info_update_email]').keyup(function() {
		var email= $('input[name=mypage_personer_info_update_email]').val().trim();
		var regExpEm = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
		if(regExpEm.test(email)){
			$('#email_warning').css('display', 'none');
		}else{
			if(!email){
			$('#email_warning').css('display', 'none');				
			}else{
			$('#email_warning').css('display', 'block');				
				
			}
		}
	})
	$('#chk_email').click(function() {
		var email= $('input[name=mypage_personer_info_update_email]').val().trim();
		$.ajax({
			 url : "${pageContext.request.contextPath}/myPageEmailChk.do",
            type : 'POST',
            dataType : 'json',
            data : {
               m_email : email
               },
		 success : function(data) {
			if(data == '1'){
			alert('중복된 이메일 입니다.');			
			}else{
			alert('사용가능한 이메일 입니다.');			
			$('input[name=certification_chk_email]').val('1');
			}
		 },
	}); 
	})
	
	$('#new_phone').click(function() {
		var phone = $('input[name=mypage_personer_info_update_phone]').val().trim();
		var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
		$('input[name=mypage_personer_info_update_phone]').css('display', 'none');
		$('.b-phone').css('display','none');
		
		$('.top-margin').css('display', 'inline');
		$('.chk-phone').css('display','inline');
		
		
		
	})
	
	$('.top-margin').click(function() {
		var new_phone = $('.top-margin').val();
		if(new_phone == '숫자만 입력해 주세요'){
			$('.top-margin').val('');			
		}

	})
	
	$('.chk-phone').click(function() {
		var new_phone = $('.top-margin').val().trim();
		var regExp = /^\d{3}\d{3,4}\d{4}$/;
		var timer = null;
		 var isRunning = false;
		 var number = Math.floor(Math.random() * 100000) + 100000;
         if(number>100000){
            number = number - 10000;
         }
        if(!athor_text){
        	athor_text = number;        	
        }else{
        	athor_text = '';
        	athor_text = number;        	
        }
        
        
        
         if(new_phone == "" || new_phone == null ){
        	 alert("번호를 적어주세요");
            
         }else if(!regExp.test(new_phone)){
        	 alert("올바른 번호를 적어주세요");
        	 $('.top-margin').val('');	
         }
         else{
        	 var con_test = confirm("해당번호로 인증문자를 발송하시겠습니까?");   /* 문자를 보낼껀지 물어본다 */
        	 if(con_test == true){
        		 $.ajax({
                     url:"${pageContext.request.contextPath}/myPhoneAthor.do",
                     type:"post",
                     data:{
                    	  to: new_phone,
                          text: athor_text
                          },
                   success:function(){
                    alert("해당 휴대폰으로 인증번호를 발송했습니다");
                    $('#chk_num_div').css('display', 'block');
         			
         			var display = $('#count');
         	    	var leftSec = 180;
         	    	// 남은 시간
         	    	// 이미 타이머가 작동중이면 중지
         	    	if (isRunning){
         	    		clearInterval(timer);
         	    		display.html("");
         	    		startTimer(leftSec, display);
         	    	}else{
         	    	startTimer(leftSec, display);
         	    		
         	    	}
                     
                     },
                     error:function(){
                        
                     },
                     
                  });
        	 }else if(con_test == false){
        		 
        	 }
        	



         }


	
			
		
		
	})
	
	
	
	$('#chk_num_btn').click(function() {
		var change_phone = $('input[name=mypage_personer_info_update_top-margin]').val();
		var chk_num = $('input[name=mypage_personer_info_update_chk_num]').val();
		if(!chk_num){
			alert('인증번호를 입력해 주세요');
		}else if(chk_num != athor_text){
			alert('인증번호가 맞지 않습니다');
			
		}else{
			alert('인증되었습니다.');
			$('input[name=certification_chk_phone]').val('1');
			 $('#chk_num_div').css('display','none');
    	     $('input[name=mypage_personer_info_update_top-margin]').css('display','none');
    	     $('.chk-phone').css('display','none');
    	     $('input[name=mypage_personer_info_update_phone]').css('display','inline');
    	     $('#new_phone').css('display','inline');
    	     athor_text = '';
    	     
    	     $('input[name=mypage_personer_info_update_phone]').val(change_phone);
    	     change_phone.val('');
		}
	})
	
	function startTimer(count, display) {
            
    		var minutes, seconds;
            timer = setInterval(function () {
            minutes = parseInt(count / 60, 10);
            seconds = parseInt(count % 60, 10);
     
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
     
            display.html(minutes + ":" + seconds);
     
            // 타이머 끝
            if (--count < 0) {
    	     clearInterval(timer);
    	     alert("시간초과");
    	     display.html("시간초과");
    	     $('#chk_num_div').css('display','none');
    	     $('input[name=mypage_personer_info_update_top-margin]').css('display','none');
    	     $('.chk-phone').css('display','none');
    	     $('input[name=mypage_personer_info_update_phone]').css('display','inline');
    	     $('#new_phone').css('display','inline');
    	     $('input[name=mypage_personer_info_update_top-margin]').val('');
    	     athor_text = '';

    	    // $('.btn_chk').attr("disabled","disabled");
    	     isRunning = false;
            }
        }, 1000);
             isRunning = true;
}
 	
 	$('#yak_show').mouseenter(function() {
		$('#yak_img').addClass('yak_trans');
		$('#yak_div').css('display', 'block');
	})
	
	$('#yak_show').mouseleave(function() {
		$('#yak_img').removeClass('yak_trans');
		$('#yak_div').css('display', 'none');
	})
	
	
 })

 </script>
</body>
</html>