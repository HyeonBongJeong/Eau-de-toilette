<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style type="text/css">
		#main {
            width: 100%;
            margin: 0 auto;
            height: 100%;
            
        }
        #user-info-back{
            width: 100%; 
            background-color: #f7f7f7;
            padding: 50px 0px 50px 0px;
        }

        #user-infos{
            width: 1050px;
            background-color: white; 
            margin: 0 auto;
            padding: 50px 0px 50px 0px;
            display: flex;
            
        }

        .user-info-body{
            display: block; 
            width: 50%; 
            border-right:5px solid#f7f7f7;
        }

        #grade-square{
            display: block;
        }
        #grade{
            float: left; 
            border: 1px solid #5f0080; 
            width: 60px; 
            height: 60px; 
            border-radius: 5px; 
            text-align: center; 
            line-height: 60px; 
            color: #5f0080; 
            margin-left: 30px; 
            clear: both; 
            font-size: 15px;
        }
        .grades{
            display:inline; 
            border: 1px solid #5f0080; 
            padding : 10px 5px 10px 5px;
            border-radius: 5px; 
            text-align: center; 
            line-height: 60px; 
            color: #5f0080; 
            margin-left: 5px; 
            font-size: 15px;
        }

        #info-body{
            display: inline-block; 
            margin-left: 20px; 
            height: 80px;
        }

        #info-name{
            font-size: 20px; height: 50px;
        }

         #info-name > span{
            font-size: 15px;
            display: inline;
        }
        
        #info_realname{
        display: inline;
        }

        #info-point-grade{
            height: 10px; 
            font-size: 12px;
        }
        #simple-info{
            padding:10px 0 0 100px ;display: block;
        }
        #simple-info-all-grade{
            border: 1px solid #f4f4f4; 
            width: 150px; 
            height: 30px; 
            text-align: center; 
            line-height: 30px; 
            border-radius: 20px; 
            background-color: #f4f4f4; 
            cursor: pointer;
        }

        #point-area{
            display: block; width: 50%;
        }

        #point-area-body{
            margin-left: 30px; 
            height: 60px;
        }

        #point-header{
            height: 50px;
        }

        #point{
            height: 10px; 
            font-size: 25px; 
            color: #5f0080;
        }

        #point > img{
            width: 18px; height: 18px;
        }

        #point-del{
            padding:30px 0 0 30px ;
            display: block; 
            font-size: 12px;
        }
        #mypage_section{
            width: 1050px; 
            margin: 0 auto; 
            padding-top: 50px; 
            display: block;
            min-height: 600px;
            max-height: 100%;
            overflow: auto;
        }

        #mypage-side-section{
            float: left;
            width: 200px;
        }
        #mypage-side-menu{
            margin-top: 20px;
        }
        #mypage-side-menus{
            list-style: none;
        }

        .menu{
            background-color: white;
            border : 1px solid #f7f7f7;
            height: 50px;
            font-size: 15px;
            line-height: 50px;
            cursor: pointer;
            
        }
        .menu-on{
            background-color: #f7f7f7;
            border : 1px solid #f7f7f7;
            color :#5f0080;
            font-weight: bold;
            cursor: pointer;
        }
        
        .menu-on > a{

            color :#5f0080;

        }

        #mypage-ques{
            margin-top : 20px; 
            padding-left: 20px; 
            height: 60px; 
            background-color: #f4f4f4; 
            border-radius: 0 100px 100px 0; 
            line-height: 30px;
          
        }
        #mypage-ques-header{
            font-size: 15px;
        }

        #mypage-ques-text{
            font-size: 12px;
        }

        .mypage-personer-info{
        	overflow: hidden;
            width: 810px; 
            float: right;
 			margin-left: 20px;  
 			height: 100%;      
 			display: block;
        }
        
        #realpoint{
        font-size: 25px; 
        color: #5f0080;
        display: inline;
        }
        #realpoint > img{
        display: inline;
        }
        .grades > span{
        font-size: 12px; color:#ddd;
        }
        .click{
        width: 10px; height: 10px; vertical-align: 1.5px; transition: all ease 0.5s;
        }
        .now-grade-div{
        width:700px; margin: 0 auto; text-align: center;
        }
        
        #now-grade{
        color: #5f0080; font-weight: 700; font-size: 18px;  text-align: center;
        }
</style>
</head>
<body>
        <div id="user-info-back">
           
            <div id="user-infos">
                <div class="user-info-body">
                    <div id="grade-square">
                        <div id="grade"></div>
                        <div id="info-body">
                            <div id="info-name"><p id="info_realname"></p><span>님</span></div>
                            <input type="hidden" name="info-id">
                            <div id="info-point-grade">적립&nbsp;&nbsp;&nbsp;<span id="info-point-grade-span"></span></div>
                        </div>
                    </div>
                    <div id="simple-info">
                        <div id = "simple-info-all-grade"><a href="#ex1" rel="modal:open">전체등급보기</a></div>
                        <div id="ex1" class="modal" style="max-width: 800px; ">
						  <h3>회원등급 정보입니다.</h3>
						  <hr style="margin: 20px 0px 20px 0px; ">
						  <div style="width:700px; margin: 0 auto; text-align: center;">
						  <div class="grades">샤워코롱&nbsp;<span>적립 1%</span></div>&nbsp;&nbsp;<img class="click" src ="${pageContext.request.contextPath}/resources/images/point-right.png">
						  <div class="grades">오드코롱&nbsp;<span>적립 2%</span></div>&nbsp;&nbsp;<img class="click" src ="${pageContext.request.contextPath}/resources/images/point-right.png">
						  <div class="grades">뚜알레&nbsp;<span>적립 3%</span></div>&nbsp;&nbsp;<img class="click" src ="${pageContext.request.contextPath}/resources/images/point-right.png">
						  <div class="grades">오드퍼퓸&nbsp;<span>적립 4%</span></div>&nbsp;&nbsp;<img class="click" src ="${pageContext.request.contextPath}/resources/images/point-right.png">
						  <div class="grades">퍼퓸&nbsp;<span>적립 5%</span></div>
						  </div>
						  <div class="now-grade-div">회원님의 현재 등급은 <span id="now-grade"></span>입니다.</div>
						  <div class="now-grade-div">회원님께서 다음 등급으로 승급 하시기까지 <span id="leastPoint"></span>P 남았습니다.</div>
						  <a href="#" rel="modal:close"></a>
						</div>
						 
                		</div>
                    </div>
                    
                    
                
                
                <div id="point-area">
                    <div id="point-area-body">
                        <div id="point-header">
                           	 적립금 
                        </div>
                        <div id="point">
                            <div id="realpoint"></div>
                            <img src ="${pageContext.request.contextPath}/resources/images/point-right.png">
                        </div>
                       

                    </div>
                    <div id="point-del">
                        	소멸예정 0원
                    </div>
                </div>
            </div>
           
        </div>
        
        <script>
        $(document).ready(function() {
        	var info_id = $('#info-id').val();
        	$.ajax({
   			 url : "${pageContext.request.contextPath}/myPageTop.do",
               type : 'POST',
               dataType : 'json',
               data : {
                  m_id : info_id
                  },
   		 success : function(data) {
   			if(data == '실패'){
   			alert('로그인 후 이용해 주세요');			
   			}else{
   				$('#grade').html(data.loginMember[0].m_grade);
   				$('#info_realname').html(data.loginMember[0].m_name);
   				$('input[name=info-id]').val(data.loginMember[0].m_id);
   				$('#realpoint').html(data.loginMember[0].m_point+'원');
   				$('#now-grade').text(data.loginMember[0].m_grade);
   				$('#leastPoint').text(data.leastPoint);
   				$('#info-point-grade-span').text(data.point);
   				
   				
   			}
   			
   		 },
   		}); 
	})
        </script>
</body>
</html>