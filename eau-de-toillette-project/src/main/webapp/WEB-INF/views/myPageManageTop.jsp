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
        cursor: pointer;
        }
</style>
</head>
<body>
        <div id="user-info-back">
           
            <div id="user-infos">
                	회원통계그래프 들어갈거임
            </div>
           
        </div>
        
        
</body>
</html>