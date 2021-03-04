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
.order-manage-h2{
float:left; margin-bottom: 15px;
}
#order-manage-table{
width: 100%; margin-top: 20px; border-collapse: collapse; 
}
.order-manage-td1{
padding: 0 0 15px 0; border-bottom: 2px solid black;
}
.order-manage-td-center1{
text-align: center;
}
.order-manage-td2{
padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;
}
.order-manage-paging{
width: 100%; text-align: center; margin:20px 0 100px 0;
}
.order-manage-btn{
text-align: center; padding: 5px 10px 5px 10px; background-color: white; color:#5f0080; border: 1px solid #5f0080
}


</style>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>

     <div id="main">

 <jsp:include page="myPageManageTop2.jsp"></jsp:include>
        <div id="mypage_section">
          <div id="mypage-side-section">
            <h2>관리자 페이지</h2>
            <div id="mypage-side-menu">
                <ul id="mypage-side-menus">
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageUser.do'">회원 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageOrder.do'">주문 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                	<li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='mypage_manager_event.do'">이벤트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                </ul>
            </div>
		</div>
            <div class="mypage-personer-info">
                <div class = "mypage-personer-info-section">
                    <h2 class="order-manage-h2">주문 관리</h2>

                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 30px;">
                    <div>
                    <table id="order-manage-table">
                    	<tr>
                    		<td class="order-manage-td1">주문번호</td>
                    		<td class="order-manage-td1">상품수량</td>
                    		<td class="order-manage-td1">상품번호</td>
                    		<td class="order-manage-td1 order-manage-td-center1" >주문자</td>
                    		<td class="order-manage-td1 order-manage-td-center1">상태</td>
                    		<td class="order-manage-td1 order-manage-td-center1">비고</td>
                    	</tr>
                    	<c:if test="${not empty list }">
                    	<c:forEach items="${list }" varStatus="s" var="vo">
                    	<tr>
                    		<td class="order-manage-td2 ordernum">${vo.ph_ordernum }</td>
                    		<td class="order-manage-td2">${vo.ph_count } 개</td>
                    		<td class="order-manage-td2">${vo.p_id }</td>
                    		<td class="order-manage-td2 order-manage-td-center1">${vo.m_id }</td>
                    		<td class="order-manage-td2 order-manage-td-center1">${vo.ph_status }</td>
                    		<td class="order-manage-td2 order-manage-td-center1">
                    		<c:if test="${vo.ph_status eq '입금완료'}">
                    		<button class="order-manage-btn">확인</button>
                    		</c:if>
                    		</td>
                    	</tr>
                    	</c:forEach>
                    	</c:if>
                    	
                    	
                    	
                    </table>
                    <div class="order-manage-paging">
		                   <c:if test="${currentPage <= 1}">
				 				[이전]&nbsp;
				 			</c:if> 
				 			
				 			<c:if test="${currentPage > 1}">
									<c:url var="mlistST" value="myPageManageOrder.do">
										<c:param name="page" value="${currentPage-1}" />
									</c:url>
									<a class="order-manage-paging-before" href="${mlistST}">[이전]</a>
							</c:if> <!-- 끝 페이지 번호 처리 --> 
							<c:set var="endPage" value="${maxPage}" /> 
							<c:forEach var="p" begin="${startPage+1}" end="${endPage}">
									<c:if test="${p eq currentPage}">
										<font color="red" size="4"><b>[${p}]</b></font>
									</c:if>
									<c:if test="${p ne currentPage}">
										<c:url var="mlistchk" value="myPageManageOrder.do">
											<c:param name="page" value="${p}" />
										</c:url>
										<a href="${mlistchk}">${p}</a>
									</c:if>
								</c:forEach> 
						<c:if test="${currentPage >= maxPage}">
				 					[다음]
				 		</c:if>
						<c:if test="${currentPage < maxPage}">
									<c:url var="mlistEND" value="myPageManageOrder.do">
										<c:param name="page" value="${currentPage+1}" />
									</c:url>
									<a class="order-manage-paging-before" href="${mlistEND}">[다음]</a>
						</c:if>                    
                    </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
$('.order-manage-btn').click(function() {
	var ordernum = $(this).parent().parent().find($('.ordernum')).text();

	  $.ajax({
		 url : "${pageContext.request.contextPath}/myPageManageOrderChangeStatus.do",
	     type : 'POST',
	     dataType : 'json',
	     data : {
	    	 ph_ordernum: ordernum,
	        	
	        },
		 success : function(data) {
			console.log('성공');
			location.reload();
		 },
	});   
})

</script>
</body>
</html>