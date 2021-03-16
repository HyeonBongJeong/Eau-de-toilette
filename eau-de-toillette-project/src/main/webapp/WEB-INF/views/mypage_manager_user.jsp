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
text-align: center;
}
.order-manage-delete{
width: 20px; height: 20px; cursor: pointer;
}
.order-manage-td2{
padding: 15px 0 15px 0; border-bottom: 1px solid #f7f7f7;
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

 <jsp:include page="myPageManageTop.jsp"></jsp:include>
        <div id="mypage_section">
          <div id="mypage-side-section">
            <h2>관리자 페이지</h2>
            <div id="mypage-side-menu">
                <ul id="mypage-side-menus">
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageUser.do'">회원 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageOrder.do'">주문 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                	<li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='mypage_manager_event.do'">이벤트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                </ul>
            </div>
		</div>
            <div class="mypage-personer-info">
                <div class = "mypage-personer-info-section">
                    <h2 class="order-manage-h2">회원 관리</h2>
					 <form class="mypage_manage_user_search" action="myPageManageUser.do" method="get">
					 <img class="mypage_manage_user_submit" src="${pageContext.request.contextPath}/resources/images/loupe.svg" style="">                   
                    <input class="mypage_manage_user_input" type="text" name="keyword" style="" placeholder="아이디로 검색해주세요" >
                    </form>
                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 30px;">
                    <div>
                    <table id="order-manage-table">
                    	<tr>
                    		<td class="order-manage-td1-top">아이디</td>
                    		<td class="order-manage-td1">회원명</td>
                    		<td class="order-manage-td1">이메일</td>
                    		<td class="order-manage-td1 order-manage-td-center1">전화번호</td>
                    		<td class="order-manage-td1 order-manage-td-center1">탈퇴</td>
                    	</tr>
                    	<c:if test="${not empty list }">
                    	<c:forEach items="${list }" varStatus="s" var="vo">
                    	<tr>
                    		<td class="mypage_manage_user_id">${vo.m_id }</td>
                    		<td class="order-manage-td2">${vo.m_name }</td>
                    		<td class="order-manage-td2">${vo.m_email }</td>
                    		<td class="order-manage-td2 order-manage-td-center1">${vo.m_phone }</td>
                    		<td class="order-manage-td2 order-manage-td-center1">
                    			<img class="order-manage-delete" src ="${pageContext.request.contextPath}/resources/images/trash.png">
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
									<c:url var="mlistST" value="myPageManageUser.do">
										<c:param name="page" value="${currentPage-1}" />
									</c:url>
									<a href="${mlistST}">[이전]</a>
							</c:if> <!-- 끝 페이지 번호 처리 --> 
							<c:set var="endPage" value="${maxPage}" /> 
							<c:forEach var="p" begin="${startPage+1}" end="${endPage}">
									<c:if test="${p eq currentPage}">
										<font color="red" size="4"><b>[${p}]</b></font>
									</c:if>
									<c:if test="${p ne currentPage}">
										<c:url var="mlistchk" value="myPageManageUser.do">
											<c:param name="page" value="${p}" />
										</c:url>
										<a href="${mlistchk}">${p}</a>
									</c:if>
								</c:forEach> 
						<c:if test="${currentPage >= maxPage}">
				 					[다음]
				 		</c:if>
						<c:if test="${currentPage < maxPage}">
									<c:url var="mlistEND" value="myPageManageUser.do">
										<c:param name="page" value="${currentPage+1}" />
									</c:url>
									<a href="${mlistEND}">[다음]</a>
						</c:if>                    
                    </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 <script type="text/javascript">
 $('.mypage_manage_user_submit').click(function() {
	
	var id = $('input[name=keyword]').val();
	if(!id){
		alert('검색할 아이디가 없음으로 전체조회를 하겠습니다.')
		$('.mypage_manage_user_search').submit();
	}else{
		$('.mypage_manage_user_search').submit();
	}
})

$('.delete').click(function() {
	if (confirm("정말 삭제하시겠습니까??") == true){
	var id_td = $(this).parent().parent().find($('.mypage_manage_user_id'));
	var id = id_td.text();
	var id_tr = $(this).parent().parent();
	
	 $.ajax({
		 url : "${pageContext.request.contextPath}/myPageManageUserDelete.do",
     type : 'POST',
     dataType : 'json',
     data : {
    	 m_id: id,
        	
        },
	 success : function(data) {
		 if(data == 1){
			 id_tr.remove();
			 alert(id+' 님이 삭제되었습니다.');
		 }
	 },
});  
	}else{
		return false;
	}
	
})
 
 </script>
</body>
</html>