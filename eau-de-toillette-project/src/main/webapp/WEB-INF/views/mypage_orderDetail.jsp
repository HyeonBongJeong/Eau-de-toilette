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
.order-detail-header-h2{
float: left;
}
.order-detail-header-div{
float: right; font-size: 12px; color: #999; margin-top: 15px;
}
.order-detail-header-hr{
background-color: black; height: 1px; margin-top: 20px;
}
.order-detail-body1-table{
width: 100%; border-collapse: collapse; margin-bottom: 100px;
}
.order-detail-body1-td1{
width: 80px; height: 100px; border-bottom: 1px solid #f4f4f4;
}
.order-detail-body1-td1 > img{
width: 80px; height: 100px;
}
.order-detail-body1-td2{
border-bottom: 1px solid #f4f4f4;
}
.order-detail-body1-td2 > order-detail-body1-td2-div1{
font-size: 18px; font-weight: 700; margin-bottom: 10px;
}
.order-detail-body1-td2 > order-detail-body1-td2-div2{
display: block; font-size: 14px; font-weight: 700;
}
.order-detail-body1-td2 > order-detail-body1-td2-div3{
display: inline; border-right: 2px solid #ddd; padding-right: 10px
}
.order-detail-body1-td2 > order-detail-body1-td2-div4{
display: inline; margin-left: 10px;
}

.order-detail-body1-td3{
font-size: 18; font-weight: 700; border-bottom: 1px solid #f4f4f4;
}
.order-detail-body1-td4{
border-bottom: 1px solid #f4f4f4;
}
.order-detail-body1-td4 > div{
border: 1px solid #5f0080; padding:10px 10px 10px 10px; text-align: center; cursor: pointer; width: 50px; height: 10px; margin: 0 auto; font-size: 12px; font-weight: 700; line-height: 10px; border-radius: 5px;
}

.order-detail-header-h2-2{
display: block; margin-bottom: 10px;
}

.order-detail-body2-th1{
text-align: left; padding: 10px 0 10px 0; color:#666;
}
.order-detail-body2-td1{
text-align: right; font-weight: 700;
}
.order-detail-body2-th2{
text-align: left; padding: 10px 0 20px 0; border-bottom:1px solid #f4f4f4; color:#666;
}
.order-detail-body2-td2{
text-align: right; border-bottom:1px solid #f4f4f4; font-weight: 700;
}
.order-detail-body3-th{
text-align: left; padding: 10px 0 10px 0; color:#666; width: 200px;
}
.order-detail-body3-th-bottom{
text-align: left; padding: 10px 0 20px 0; border-bottom:1px solid #f4f4f4; color:#666;
}
.order-detail-body3-td{
text-align: right; font-weight: 700;
}
.order-detail-body3-td-bottom{
text-align: right; border-bottom:1px solid #f4f4f4; font-weight: 700; 
}
#order-Cancle{
width: 100%; text-align: center; margin-bottom: 50px;
}
#order-Cancle-text{
display: block; color:#999; font-size: 13px; margin-bottom: 15px;
}
#order-Cancle-btn{
width: 40%; background-color: white; color:#5f0080; border: 1px solid #5f0080; padding: 10px 15px 10px 15px
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
	                    <h3 class="order-detail-header-h2">주문번호 <span id="ordernum">${ordernum}</span></h3>
	                    <div class="order-detail-header-div">지난 3년간의 주문 내역 조회가 가능합니다.<a href = "#" onclick="location.href=''"> 1:1 문의하기</a></div>
						</div>
						
	                    <br>
	                    <hr class="order-detail-header-hr">
						<table class="order-detail-body1-table">
						<c:if test="${not empty orderDetailList }">
	                   		<c:forEach items="${orderDetailList }" var="vo" varStatus="s">
							<tr>
								<td class="order-detail-body1-td1">
									<img src = "${pageContext.request.contextPath}/resources/images/${vo.p_img}" alt="${vo.p_img}">
								</td>
								<td class="order-detail-body1-td2">
									<div class="order-detail-body1-td2-div1" style="">
									<a>
									<c:if test="${vo.p_type eq 'c'}">[캔들]</c:if>
		                    		<c:if test="${vo.p_type eq 'd'}">[디퓨저]</c:if>
		                    		<c:if test="${vo.p_type eq 'b'}">[바디]</c:if>
		                    		<c:if test="${vo.p_type eq 'p'}">[향수]</c:if>
		                    		<c:if test="${vo.p_type eq 'e'}">[e.t.c]</c:if> ${vo.p_title}
									</a>
									</div> 
									<div class="order-detail-body1-td2-div2">
									<div class="order-detail-body1-td2-div3">${vo.ph_allprice }</div> 
									<div class="order-detail-body1-td2-div4">${vo.ph_count } 개</div>
									</div>
								</td>
								<td class="order-detail-body1-td3">${vo.ph_status }</td>
								<td class="order-detail-body1-td4">
									<div>
									<a href = "#" onclick="location.href='product_detail.do?p_id=${vo.ph_ordernum }'">후기 쓰기</a>
									</div>
								</td>
							</tr>
							</c:forEach>
	                   </c:if>
						</table>
                   	

					<h2 class="order-detail-header-h2-2">결제 정보</h2>
                    <hr class="order-detail-header-hr">
					<table class="order-detail-body1-table">
						<tr>
							<th class="order-detail-body2-th1" >상품금액</th>
							<td class="order-detail-body2-td1">${allPrice }원</td>
						</tr>
						<tr>
							<th class="order-detail-body2-th2">적립예정금액</th>
							<td class="order-detail-body2-td2">${addPoint }원</td>
						</tr>
					</table>
					
					
					<h2 class="order-detail-header-h2-2">주문 정보</h2>
                    <hr class="order-detail-header-hr">
					<table class="order-detail-body1-table">
						<tr>
							<th class="order-detail-body3-th">주문 번호</th>
							<td class="order-detail-body3-td">${ordernum}</td>
						</tr>
						<c:if test="${not empty mList }">
                   		<c:forEach items="${mList }" var="mvo" varStatus="s">
						<tr>
							<th class="order-detail-body3-th">주문자 명 </th>
							<td class="order-detail-body3-td">${mvo.m_name }</td>
						</tr>
						
						<tr>
							<th class="order-detail-body3-th">배송지</th>
							<td class="order-detail-body3-td">${mvo.m_addr }</td>
						</tr>
						<tr>
							<th class="order-detail-body3-th-bottom">핸드폰</th>
							<td class="order-detail-body3-td-bottom">${mvo.m_phone }</td>
						</tr>
						</c:forEach>
						</c:if>
						
					</table>
                    <div id="order-Cancle">
                    	<span id="order-Cancle-text">*주문 취소는 입금 확인일 시에만 가능합니다.</span>
                    	<c:if test="${not empty orderDetailList }">
	                   	<c:forEach items="${orderDetailList }" var="vo" varStatus="s" begin="0" end="0">
	                   	<c:if test="${vo.ph_status eq '입금완료' }">
                    	<button id="order-Cancle-btn">주문 취소</button>
                    	</c:if>
                    	</c:forEach>
                    	</c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 <script>
 $('#order-Cancle-btn').click(function() {
	var ordernum = $('#ordernum').text();
	$.ajax({
		 url : "${pageContext.request.contextPath}/myPageOrderCancle.do",
	     type : 'POST',
	     dataType : 'json',
	     data : {
	    	 ph_ordernum: ordernum,
	        	
	        },
		 success : function(data) {
			alert(data.message);
			location.reload();
		 },
	});   
})
 

 </script>
</body>
</html>