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
	width: 200px;
	height: 40px;
	border: 2px solid #ddd;
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
list-style: none;
display: none;
}

.order-li{ 
border-bottom: 1px solid  #ddd; border-left: 1px solid  #ddd; border-right: 1px solid  #ddd; cursor: pointer; height: 40px; line-height: 40px; padding-left: 10px;
}

.ul-font{
	font-size:12px;
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
                 	<li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/myPageOrderList.do'">주문내역&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/mypageShippingDestination.do'">배송지 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 75px;"></a></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/myPageInfo.do'">개인 정보 수정&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 55px;"></a></li> 
                </ul>
                <div id="mypage-ques">
                    <p id="mypage-ques-header">도움이 필요하신가요?</p>
                    <p id="mypage-ques-text">1대1문의하기</p>
                </div>
            </div>
		</div>
            
            <div class="mypage-personer-info">
                <div class = "mypage-personer-info-section">
                    <h2 style="display: inline; ">주문내역</h2>
                    <div style="display: inline; margin-left: 20px;">지난 3년간의 주문 내역 조회가 가능합니다.</div>
					
					<div style="float: right;">
						<div class="none_click ul-font">전체기간<img class="click" src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 10px; height: 10px; vertical-align: 1.5px; transition: all ease 0.5s;"></div>
						<ul class="order-ul">
							<li class="order-li ul-font all">전체기간</li>
							<li class="order-li ul-font year1"></li>
							<li class="order-li ul-font year2"></li>
							<li class="order-li ul-font year3"></li>
						</ul>
					</div>
					
                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 30px;">
                    <div>2020.09.03</div>
                    <div style="border: 1px solid #ddd">
                    	<div style="width: 90%; margin:0 auto;">
                    		<div style="margin-bottom: 20px; border-bottom: 1px solid #ddd; height: 50px; line-height: 50px">[캔들] 양키캔들 외 4건<img style="float: right; margin-top: 20px" src="https://res.kurly.com/pc/ico/1806/ico_arrow_10x15.png"></div>
                    		<div style=" display: flex; margin-bottom: 10px;">
                    		<div style="display: flex; flex:1;">
                    		<div style="flex:1;">	
                    			<img src = "https://res.kurly.com/pc/ico/1806/ico_arrow_10x15.png" style="width: 80px; height: 100px;">
                    		</div>
                    		<div style="flex:1; font-size: 14px;">
	                    		<div>[캔들]양키캔들</div>
	                    		<div style="margin-top: 5px;">주문번호&nbsp;&nbsp;<span>1236548</span></div>
	                    		<div style="margin-top: 5px;">결제금액&nbsp;&nbsp;<span>20565원</span></div>
	                    		<div style="margin-top: 5px;">주문상태&nbsp;&nbsp;<span>미확인</span></div>
                    		</div>
                    		</div>
                    		
                    		<div style="flex:2; text-align: right; margin-top:23px ">
                    			<div>1대1문의</div>
                    		</div>
                    		</div>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 <script>
 
 $(document).ready(function() {
	 
	 var today = new Date();
	 var year1 = today.getFullYear();
	 var year2 = year1 - 1;
	 var year3 = year2 - 1;
	 $('.year1').text(year1+' 년');
	 $('.year2').text(year2+' 년');
	 $('.year3').text(year3+' 년');
	 
	 
	 var click = false;
	 	$('.none_click').click(function() {
			if(click == false){
				click = true;
				$('.click').css('transform','rotate( -90deg )');
				$('.order-ul').slideDown(200);			
			}else{
				click=false;
				$('.click').css('transform','rotate( 90deg )');
				$('.order-ul').slideUp(200);
				
			}
		})
		
		$('.order-li').click(function() {
			var year = $(this).text();
			/*년도별 주문내역 가져오는 ajax*/
		})
})

 </script>
</body>
</html>