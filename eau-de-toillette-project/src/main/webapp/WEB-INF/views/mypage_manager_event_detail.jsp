<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<style type="text/css">    
.order-manage-h2{    
float:left; margin-bottom: 15px;
}
.order-manage-div{
float:right; margin-bottom: 15px; cursor: pointer;
}
#order-manage-table{
width: 100%; margin-top: 20px; border-collapse: collapse; 
}
.order-manage-td1{
padding: 0 0 15px 0; border-bottom: 2px solid black;
}
.order-manage-td1-top{
padding: 0 0 15px 10px; border-bottom: 2px solid black;
}
.order-manage-td-center1{
vertical-align: middle;
}
.order-manage-delete{
width: 20px; height: 20px; cursor: pointer; line-height: 20px; float: right; padding-top: 65px;
}
.order-manage-td-title2{
font-weight: bold;
}
.order-manage-td2{
padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7; height: 124px;
}
.mypage_manage_user_id{
padding: 15px 0 15px 10px; border-bottom: 1px solid #f7f7f7;
}
.order-manage-paging{
width: 100%; text-align: center; margin:20px 0 100px 0;
}

.mypage_manage_user_submit{
float:right; width: 25px; height: 25px; margin:20px 0 0 10px; cursor: pointer;
}
.mypage_manage_user_input{
font-size:12px; float:right; margin-top:15px;  padding-left: 10px; width: 160px; height: 30px; border:1px solid #ddd;  border-radius: 50px;
}
</style>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>

     <div id="main">

<c:if test="${manageChk eq 'N' }">
 <jsp:include page="myPageTop.jsp"></jsp:include>
 </c:if>
 <c:if test="${manageChk eq 'Y' }">
 <jsp:include page="myPageManageTop.jsp"></jsp:include>
 </c:if>
        <div id="mypage_section">
          <div id="mypage-side-section">
            <h2>관리자 페이지</h2>
            <div id="mypage-side-menu">
                <ul id="mypage-side-menus">
                <c:if test="${manageChk eq 'Y' }">
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageUser.do'">회원 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageOrder.do'">주문 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='mypage_manager_event.do'">이벤트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                </c:if>
                <c:if test="${manageChk eq 'N' }">
                <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/myPageOrderList.do'">주문내역&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/mypageShippingDestination.do'">배송지 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 75px;"></a></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/myPageInfo.do'">개인 정보 수정&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 55px;"></a></li> 
                	<li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='mypage_manager_event.do'">이벤트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                </c:if>
                </ul>
            </div>
		</div>
            <div class="mypage-personer-info">
                <div class = "mypage-personer-info-section">
                    <h2 class="order-manage-h2">이벤트 상세</h2>
                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 30px;">
                    <div>
                    
                    <table id="order-manage-table">
					<c:forEach items="${eventDetailList}" var="vo" varStatus="s">
						<tr>
							<td style="padding: 0px 0 15px 0; width: 20%; border-bottom: 1px solid #ddd; border-collapse:collapse;">제목</td>
							<td style="width: 80%; padding: 0px 0 15px 0; border-bottom: 1px solid #ddd; border-collapse:collapse;">${vo.event_title }</td>
						
						</tr>
						<tr>
							<td style="padding: 15px 0 15px 0; width: 20%; border-bottom: 1px solid #ddd; border-collapse:collapse;">기간</td>
							<td style="width: 80%; padding: 15px 0 15px 0; border-bottom: 1px solid #ddd; border-collapse:collapse;">${vo.event_end } 까지</td>
						
						</tr>
						<tr>
							<td style="padding: 15px 0 15px 0; width: 20%;">내용</td>
							<td style="padding: 15px 0 15px 0;"><img src ="${pageContext.request.contextPath}/resources/eventFiles/${vo.event_img}" style="width: 100%;"></td>
							
						</tr>
						<tr>
							<td style="padding: 15px 0 15px 0; width: 20%; border-bottom: 1px solid #ddd; border-collapse:collapse;"></td>
							<td style="padding: 15px 0 15px 0; border-bottom: 1px solid #ddd; border-collapse:collapse;">${vo.event_content }</td>
							
						</tr>
						<tr>
							<td colspan="2" style="padding: 15px 0 15px 0; text-align: right;">
					<c:if test="${manageChk eq 'Y' }">
								<button class="e-update" onclick="" style="background-color: #5f0080; color: white; border: 1px solid #5f0080; width: 70px; height: 40px;">수정</button>
								<button class="e-delete" style="background-color: #5f0080; color: white; border: 1px solid #5f0080; width: 70px; height: 40px;">삭제</button>
					</c:if>
								<button class="e-list" style="background-color: #5f0080; color: white; border: 1px solid #5f0080; width: 70px; height: 40px;">글 목록</button>
							</td>
						</tr>
					</c:forEach>	
						
                    	
                    </table>

                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">

$('.e-delete').click(function() {

	if (confirm("정말 삭제하시겠습니까??") == true){
	
	  $.ajax({
		 url : "${pageContext.request.contextPath}/eventDelete.do",
    type : 'POST',
    dataType : 'json',
    data : {
   	 event_id: ${eid},
       	
       },
	 success : function(data) {
			alert('삭제되었습니다.');
			window.location.href='mypage_manager_event.do';
	 },
});   
	}else{
		return false;
	} 
	
}) 

$('.e-update').click(function() {
	if (confirm("정말 수정하시겠습니까??") == true){
	window.location.href='mypage_event_update.do?eid=${eid}';
		
	}else{
		return false;
	}
	
})

$('.e-list').click(function() {
	window.location.href='mypage_manager_event.do';
	
	
})
</script>
</body>
</html>