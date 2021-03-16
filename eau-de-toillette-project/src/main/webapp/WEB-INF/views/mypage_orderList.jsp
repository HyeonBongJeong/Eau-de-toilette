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
.ph-all-order-list-end{
	margin-bottom: 100px;
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
                	<li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='mypage_manager_event.do'">이벤트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
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
                    <div style="display: inline; font-size: 12px; color: #999; margin-left: 20px;">지난 3년간의 주문 내역 조회가 가능합니다.</div>
					
					<div style="float: right;">
						<div class="none_click ul-font"><span class="serch-year">전체기간</span><img class="click" src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 10px; height: 10px; vertical-align: 1.5px; transition: all ease 0.5s;"></div>
						<ul class="order-ul">
							<li class="order-li ul-font all order-li-choose">전체기간</li>
							<li class="order-li ul-font year1"></li>
							<li class="order-li ul-font year2"></li>
							<li class="order-li ul-font year3"></li>
						</ul>
					</div>
					
                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 30px;">
                    <div class="ph-order-list">
                    <c:if test="${not empty phList }">
                    <c:forEach items="${phList }" varStatus="s" var="vo">
	                    <div class="ph-all-order-list">
	                    <div class="ph-date">${vo.ph_date }</div>
	                    <div class="ph-section">
	                    	<div class="ph-body">
	                    		<div class="ph-header">
			                    	<a href="#" onclick="location.href='/eaude/myPageOrderDetail.do?ph_ordernum=${vo.ph_ordernum}'">
		                    		<c:if test="${vo.p_type eq 'c'}">[캔들]</c:if>
		                    		<c:if test="${vo.p_type eq 'd'}">[디퓨저]</c:if>
		                    		<c:if test="${vo.p_type eq 'b'}">[바디]</c:if>
		                    		<c:if test="${vo.p_type eq 'p'}">[향수]</c:if>
		                    		<c:if test="${vo.p_type eq 'e'}">[e.t.c]</c:if> ${vo.p_title} 외 ${vo.ph_count} 건
		                    		<img src="https://res.kurly.com/pc/ico/1806/ico_arrow_10x15.png">
				                    </a>
	                    		</div>
	                    		<div class="ph-main">
	                    		<div class="ph-main-left">
	                    		<div class="ph-main-img">	
	                    			<img src = "${pageContext.request.contextPath}/resources/images/defaultChk.png" alt="안녕하세요">
	                    		</div>
	                    		<div class="ph-main-info">
		                    		<div class="ph-main-info-text">
		                    		<c:if test="${vo.p_type eq 'c'}">[캔들]</c:if>
								    <c:if test="${vo.p_type eq 'd'}">[디퓨저]</c:if>
									<c:if test="${vo.p_type eq 'b'}">[바디]</c:if>
									<c:if test="${vo.p_type eq 'p'}">[향수]</c:if>
									<c:if test="${vo.p_type eq 'e'}">[e.t.c]</c:if>${vo.p_title}</div>
		                    		<div class="ph-main-infos" style="margin-top: 5px;">주문번호&nbsp;&nbsp;<span>${vo.ph_ordernum}</span></div>
		                    		<div class="ph-main-infos">결제금액&nbsp;&nbsp;<span>${vo.ph_allprice}</span></div>
		                    		<div class="ph-main-infos">주문상태&nbsp;&nbsp;<span>${vo.ph_status}</span></div>
	                    		</div>
	                    		</div>
	                    		
	                    		<div class="ph-main-right">
	                    			<div class="ph-main-qna"><a class="ph-main-qna-a" href="#" onclick="location.href=''">1:1 문의</a></div>
	                    		</div>
	                    		</div>
	                    	</div>
	                    </div>
	                    </div>                    
                    </c:forEach>
                    </c:if>
					</div>
                </div>
            </div>
        </div>
    </div>
    <div class="ph-all-order-list-end"></div>
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
			$('.serch-year').text('');
			$('.serch-year').text(getYear);
			$('.order-li').css('background-color', 'white');
			$(this).css('background-color', '#f7f7f7');
			click=false;
			$('.click').css('transform','rotate( 90deg )');
			$('.order-ul').slideUp(300);
			/*년도별 주문내역 가져오는 ajax*/
			 $.ajax({
				 url : "${pageContext.request.contextPath}/myPageOrderListYear.do",
			     type : 'POST',
			     dataType : 'json',
			     data : {
			    	 year: year,
			        	
			        },
				 success : function(data) {
					 console.log('성공');
					 console.log(data.orderList.length);
					 if(data.orderList.length>0){
						 var type;
						 $('.ph-order-list').empty();
						 for(var i = 0; i < data.orderList.length; i++){
							 console.log(data.orderList[i].p_type)
							 if(data.orderList[i].p_type == 'c'){
									type = '[캔들]'	
									}else if(data.orderList[i].p_type == 'd'){
										type = '[디퓨저]'
									}else if(data.orderList[i].p_type == 'b'){
										type = '[바디]'
									}else if(data.orderList[i].p_type == 'p'){
										type = '[향수]'
									}else if(data.orderList[i].p_type == 'e'){
										type = '[e.t.c]'
									}
						 $('.ph-order-list').append(
								 '<div class="ph-all-order-list">'
				                +'    <div class="ph-date">'+data.orderList[i].ph_date+'</div>'
				                +'    <div class="ph-section">'
				                +'    	<div class="ph-body">'
				                +'    		<div class="ph-header">'
						        +'            	<a href="#" onclick="location.href=\'/eaude/myPageOrderDetail.do?ph_ordernum ='+ data.orderList[i].ph_ordernum+'\'">'
					            + type + data.orderList[i].p_title+' 외 '+data.orderList[i].ph_count+' 건'
					            +'        		<img src="https://res.kurly.com/pc/ico/1806/ico_arrow_10x15.png">'
							    +'                </a>'
				                +'    		</div>'
				                +'    		<div class="ph-main">'
				                +'    		<div class="ph-main-left">'
				                +'    		<div class="ph-main-img">'
				                +'    			<img src = "${pageContext.request.contextPath}/resources/images/defaultChk.png" alt="'+data.orderList[i].p_img+'">'
				                +'    		</div>'
				                +'    		<div class="ph-main-info">'
					            +'        		<div class="ph-main-info-text">'
								+ type +data.orderList[i].p_title+'</div>'
					            +'        		<div class="ph-main-infos" style="margin-top: 5px;">주문번호&nbsp;&nbsp;<span>'+data.orderList[i].ph_ordernum+'</span></div>'
					            +'        		<div class="ph-main-infos">결제금액&nbsp;&nbsp;<span>'+data.orderList[i].ph_allprice+'</span></div>'
					            +'        		<div class="ph-main-infos">주문상태&nbsp;&nbsp;<span>'+data.orderList[i].ph_status+'</span></div>'
				                +'    		</div>'
				                +'    		</div>'
				                +'    		<div class="ph-main-right">'
				                +'   			<div class="ph-main-qna"><a class="ph-main-qna-a" href="#" onclick="location.href=">1:1 문의</a></div>'
				                +'    		</div>'
				                +'    		</div>'
				                +'    	</div>'
				                +'    </div>'
				                +'    </div>');
						 }
					 }else{
						 $('.ph-order-list').empty();
						 $('.ph-order-list').append('<div style="width:100%; text-align:center; margin-top:50px; color:#999; font-weight:700; font-size:20px;">구매내역이 없습니다.<div>');
					 }
					
				 },
			});   
		})
})

 </script>
</body>
</html>