<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<style type="text/css">        

</style>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>

     <div id="main">

 <jsp:include page="myPageManageTop.jsp"></jsp:include>
        <div id="mypage_section">
          <div id="mypage-side-section">
            <h2>관리자 페이지</h2>
            <div id="mypage-side-menu">
                <ul id="mypage-side-menus">
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageUser.do'">회원 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageOrder.do'">주문 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                </ul>
            </div>
		</div>
            <div class="mypage-personer-info">
                <div class = "mypage-personer-info-section">
                    <h2 style="float:left; margin-bottom: 15px;">회원 관리</h2>
					 <img src="${pageContext.request.contextPath}/resources/images/loupe.svg" style="float:right; width: 25px; height: 25px; margin:20px 0 0 10px; ">                   
                    <input type="text" name="search-user" style="font-size:12px; float:right; margin-top:15px;  padding-left: 10px; width: 160px; height: 30px; border:1px solid #ddd;  border-radius: 50px;" placeholder="아이디로 검색해주세요" >
                    
                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 30px;">
                    <div>
                    <table style="width: 100%; margin-top: 20px; border-collapse: collapse; ">
                    	<tr>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black;">아이디</td>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black;">회원명</td>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black;">이메일</td>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black; text-align: center;">전화번호</td>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black; text-align: center;">탈퇴</td>
                    	</tr>
                    	<tr>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">whb1026</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">정현봉</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">whb1026@naver.com</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7; text-align: center;">01083595008</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7; text-align: center;">
                    			<img class="delete" src ="${pageContext.request.contextPath}/resources/images/trash.png" style="width: 20px; height: 20px; cursor: pointer;">
                    		</td>
                    	</tr>
                    	
                    	
                    </table>
                    <div style="width: 100%; text-align: center; margin:20px 0 100px 0">
                    <<  <  1  >  >>                    
                    </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>