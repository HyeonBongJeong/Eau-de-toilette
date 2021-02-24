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

.ph-date{
padding-top: 20px; font-size: 16px; line-height: 24px; font-weight: 700; color: #666; margin: 10px 0 10px 0;
}
.ph-section{
border: 1px solid #ddd;
}

.ph-body{
width: 90%; margin:0 auto;
}

.ph-header{
margin-bottom: 20px; border-bottom: 1px solid #ddd; height: 50px; line-height: 50px; font-size: 18px; font-weight: 700; cursor: pointer;
}

.ph-header > a > img{
float: right; margin-top: 20px;
}

.ph-main{
display: flex; margin-bottom: 10px;
}
.ph-main-left{
display: flex; flex:1;
}
.ph-main-right{
flex:1;
}
.ph-main-img > img{
width: 80px; height: 100px;
}
.ph-main-info{
flex:1; font-size: 14px; margin-left: 20px;
}
.ph-main-info-text{
font-weight: 700;
}

.ph-main-infos{
margin-top: 5px; 
}
.ph-main-right{
flex:2; text-align: right; margin-top:23px;
}
.ph-main-qna{
width: 100px; height:34px;  line-height:34px; color:#5f0080; font-size:12px; float: right; text-align:center; border: 1px solid #5f0080;
}
.ph-main-qna-a{
width: 100px; height:34px;  line-height:34px; color:#5f0080; font-size:12px; float: right; text-align:center;
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
                    <h2 style="display: block; margin-bottom: 30px;">주문 내역 상세</h2>
                    <div>
                    <h3 style="float: left;">주문번호 1599138767975</h3>
                    <div style="float: right; font-size: 12px; color: #999; margin-top: 15px;">지난 3년간의 주문 내역 조회가 가능합니다.<a href = "#" onclick="location.href=''"> 1:1 문의하기</a></div>
					</div>
					
                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 20px;">
					<table style="width: 100%; border-collapse: collapse; margin-bottom: 100px;">
						<tr>
							<td style="width: 80px; height: 100px; border-bottom: 1px solid #f4f4f4;">
								<img style="width: 80px; height: 100px;" src = "" alt="안녕하세요">
							</td>
							<td style="border-bottom: 1px solid #f4f4f4;">
								<div style="font-size: 18px; font-weight: 700; margin-bottom: 10px;"><a>[캔들]양키캔들 세트</a></div> 
								<div style="display: block; font-size: 14px; font-weight: 700;">
								<div style="display: inline; border-right: 2px solid #ddd; padding-right: 10px">140000 원</div> 
								<div style="display: inline; margin-left: 10px;">2개</div>
								</div>
							</td>
							<td style="font-size: 18; font-weight: 700; border-bottom: 1px solid #f4f4f4;">입금확인</td>
							<td style="border-bottom: 1px solid #f4f4f4;"><div style="border: 1px solid #5f0080; padding:10px 10px 10px 10px; text-align: center; cursor: pointer; width: 50px; height: 10px; margin: 0 auto; font-size: 12px; font-weight: 700; line-height: 10px; border-radius: 5px;"><a href = "#" onclick="location.href=''">후기 쓰기</a></div></td>
						</tr>
						<tr>
							<td style="width: 80px; height: 100px; border-bottom: 1px solid #f4f4f4;">
								<img style="width: 80px; height: 100px;" src = "" alt="안녕하세요">
							</td>
							<td style="border-bottom: 1px solid #f4f4f4;">
								<div style="font-size: 18px; font-weight: 700; margin-bottom: 10px;"><a>[캔들]양키캔들 세트</a></div> 
								<div style="display: block; font-size: 14px; font-weight: 700;">
								<div style="display: inline; border-right: 2px solid #ddd; padding-right: 10px">140000 원</div> 
								<div style="display: inline; margin-left: 10px;">2개</div>
								</div>
							</td>
							<td style="font-size: 18; font-weight: 700; border-bottom: 1px solid #f4f4f4;">입금확인</td>
							<td style="border-bottom: 1px solid #f4f4f4;"><div style="border: 1px solid #5f0080; padding:10px 10px 10px 10px; text-align: center; cursor: pointer; width: 50px; height: 10px; margin: 0 auto; font-size: 12px; font-weight: 700; line-height: 10px; border-radius: 5px;"><a href = "#" onclick="location.href=''">후기 쓰기</a></div></td>
						</tr>
						<tr>
							<td style="width: 80px; height: 100px; border-bottom: 1px solid #f4f4f4;">
								<img style="width: 80px; height: 100px;" src = "" alt="안녕하세요">
							</td>
							<td style="border-bottom: 1px solid #f4f4f4;">
								<div style="font-size: 18px; font-weight: 700; margin-bottom: 10px;"><a>[캔들]양키캔들 세트</a></div> 
								<div style="display: block; font-size: 14px; font-weight: 700;">
								<div style="display: inline; border-right: 2px solid #ddd; padding-right: 10px">140000 원</div> 
								<div style="display: inline; margin-left: 10px;">2개</div>
								</div>
							</td>
							<td style="font-size: 18; font-weight: 700; border-bottom: 1px solid #f4f4f4;">입금확인</td>
							<td style="border-bottom: 1px solid #f4f4f4;"><div style="border: 1px solid #5f0080; padding:10px 10px 10px 10px; text-align: center; cursor: pointer; width: 50px; height: 10px; margin: 0 auto; font-size: 12px; font-weight: 700; line-height: 10px; border-radius: 5px;"><a href = "#" onclick="location.href=''">후기 쓰기</a></div></td>
						</tr>
					</table>
					
					
					<h2 style="display: block; margin-bottom: 10px;">결제 정보</h2>
                    <hr style="background-color: black; height: 1px; margin-top: 20px;">
					<table style="width: 100%; border-collapse: collapse; margin-bottom: 100px;">
						<tr>
							<th style="text-align: left; padding: 10px 0 10px 0; color:#666;">상품금액</th>
							<td style="text-align: right; font-weight: 700;">360000원</td>
						</tr>
						<tr>
							<th style="text-align: left; padding: 10px 0 10px 0; color:#666;">적립금사용</th>
							<td style="text-align: right; font-weight: 700;">0원</td>
						</tr>
						<tr>
							<th style="text-align: left; padding: 10px 0 20px 0; border-bottom:1px solid #f4f4f4; color:#666;">적립예정금액</th>
							<td style="text-align: right; border-bottom:1px solid #f4f4f4; font-weight: 700; ">1213원</td>
						</tr>
					</table>
					
					
					<h2 style="display: block; margin-bottom: 10px;">주문 정보</h2>
                    <hr style="background-color: black; height: 1px; margin-top: 20px;">
					<table style="width: 100%; border-collapse: collapse; margin-bottom: 100px;">
						<tr>
							<th style="text-align: left; padding: 10px 0 10px 0; color:#666; width: 200px;">주문 번호</th>
							<td style="text-align: left; font-weight: 700;">1599138767975</td>
						</tr>
						<tr>
							<th style="text-align: left; padding: 10px 0 10px 0; color:#666;">주문자 명 </th>
							<td style="text-align: left; font-weight: 700;">정현봉</td>
						</tr>
						<tr>
							<th style="text-align: left; padding: 10px 0 10px 0; color:#666;">결제일시</th>
							<td style="text-align: left; font-weight: 700;">2020-09-03 22:13:19</td>
						</tr>
						<tr>
							<th style="text-align: left; padding: 10px 0 10px 0; color:#666;">받는 분</th>
							<td style="text-align: left; font-weight: 700;">송수빈</td>
						</tr>
						<tr>
							<th style="text-align: left; padding: 10px 0 20px 0; border-bottom:1px solid #f4f4f4; color:#666;">핸드폰</th>
							<td style="text-align: left; border-bottom:1px solid #f4f4f4; font-weight: 700; ">01083595008</td>
						</tr>
						
					</table>
                    
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
			console.log(year);
			$('.order-li').css('background-color', 'white');
			$(this).css('background-color', '#f7f7f7');
			click=false;
			$('.click').css('transform','rotate( 90deg )');
			$('.order-ul').slideUp(300);
			/*년도별 주문내역 가져오는 ajax*/
		})
})

 </script>
</body>
</html>