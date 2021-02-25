<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<style type="text/css">        
.none_click{
	width: 150px;
	height: 40px;
	border: 1px solid #ddd;
	text-decoration: none;
	line-height: 40px;
	padding-left: 10px;
	cursor: pointer;
	
}
.none_click > .click{
float: right;
margin: 17px 10px 0 0;
transform: rotate( 90deg );

}

        
.order-ul{
background-color:white;
width:164px;
position: absolute;
list-style: none;
display: none;
z-index: 1;
}

.order-li{ 
border-bottom: 1px solid  #ddd; border-left: 1px solid  #ddd; border-right: 1px solid  #ddd; cursor: pointer; height: 40px; line-height: 40px; padding-left: 10px;
}
.order-li-choose{
background-color: #f7f7f7;
}

.ul-font{
	font-size:12px;
}
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
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageUser.do'">회원 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageOrder.do'">주문 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                </ul>
            </div>
		</div>
            <div class="mypage-personer-info">
                <div class = "mypage-personer-info-section">
                    <h2 style="float:left; margin-bottom: 15px;">주문 관리</h2>
                    <div style="float: right;">
						<div class="none_click ul-font"><span id="li-text">전체기간</span><img class="click" src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 10px; height: 10px; vertical-align: 1.5px; transition: all ease 0.5s;"></div>
						<ul class="order-ul">
							<li class="order-li ul-font all order-li-choose">전체기간</li>
							<li class="order-li ul-font">배송전</li>
							<li class="order-li ul-font">입금확인</li>
						</ul>
					</div>
                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 30px;">
                    <div>
                    <table style="width: 100%; margin-top: 20px; border-collapse: collapse; ">
                    	<tr>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black;">주문번호</td>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black;">주문자</td>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black;">이메일</td>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black; text-align: center;">전화번호</td>
                    		<td style="padding: 0 0 15px 0; border-bottom: 2px solid black; text-align: center;">상태</td>
                    	</tr>
                    	<tr>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">18652315</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">whb1026</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">whb1026@naver.com</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7; text-align: center;">01083595008</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7; text-align: center;">배송전</td>
                    	</tr>
                    	<tr>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">18652315</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">whb1026</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;">whb1026@naver.com</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7; text-align: center;">01083595008</td>
                    		<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7; text-align: center;">배송확인</td>
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
 <script type="text/javascript">
 
 var click = false;
	$('.none_click').click(function() {
		if(click == false){
			click = true;
			$('.click').css('transform','rotate( -90deg )');
			$('.order-ul').slideDown(300);			
		}else{
			click=false;
			$('.click').css('transform','rotate( 90deg )');
			$('.order-ul').slideUp(300);
			
		}
	})
	
	$('.order-li').click(function() {
		var getYear = $(this).text();
		var yearSplit = getYear.split(' ');
		var year = yearSplit[0];
		$('.order-li').css('background-color', 'white');
		$(this).css('background-color', '#f7f7f7');
		$('#li-text').text(getYear);
		click=false;
		$('.click').css('transform','rotate( 90deg )');
		$('.order-ul').slideUp(300);
		/*주문상태로 페이지 리로드하는 ajax*/
	})
 </script>
</body>
</html>