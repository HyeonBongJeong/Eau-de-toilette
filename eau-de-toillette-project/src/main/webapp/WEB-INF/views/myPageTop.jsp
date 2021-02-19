<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            cursor: pointer;
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
        cursor: pointer;
        }
</style>
</head>
<body>
        <div id="user-info-back">
           
            <div id="user-infos">
                <div class="user-info-body">
                    <div id="grade-square">
                        <div id="grade">뚜알레</div>
                        <div id="info-body">
                            <div id="info-name"><p id="info_realname">정현봉</p><span>님</span></div>
                            <input type="hidden" name="info-id" value="whb1026">
                            <div id="info-point-grade">적립<span>   0.5%</span></div>
                        </div>
                    </div>
                    <div id="simple-info">
                        <div id = "simple-info-all-grade">전체등급보기</div>
                        
                    </div>

                </div>
                <div id="point-area">
                    <div id="point-area-body">
                        <div id="point-header">
                           	 적립금 
                        </div>
                        <div id="point">
                            <div id="realpoint" style="display: inline"></div>
                            <img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="display: inline">
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
   				$('#input[name=info-id]').html(data.loginMember[0].m_id);
   				$('#realpoint').html(data.loginMember[0].m_point+'원');
   				
   				
   			}
   			
   		 },
   		}); 
	})
        </script>
</body>
</html>