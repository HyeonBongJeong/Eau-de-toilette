<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">        
        
   
#sd-header{
display: inline;
}
#sd-header-text{
display: inline; font-size: 12px; color: #999; margin-left: 20px;
}
#sd-header-addSd{
float:right; cursor: pointer;
}
#sd-list-tb{
width: 100%; text-align: center; border-collapse: collapse;
}
.sd-list-th{
padding: 20px 0 20px 0; border-bottom: 1px solid black;
}
.sd-list-th-addr{
padding: 20px 0 20px 0; border-bottom: 1px solid black; text-align: left;
}
.sd-list-td1{
padding: 20px 0 20px 0; border-bottom: 1px solid #f4f4f4;
}
.sd-list-td1-div{
display: block;
}
.sd-list-td2{
padding: 20px 0 20px 0; border-bottom: 1px solid #f4f4f4; text-align: left;
}
.sd-list-td2-div1{
display: block; border-radius: 20px; background-color: #f4f4f4; width: 80px; font-size: 12px; text-align: center; height: 20px;
}

.sd-list-td2-div2{
display: block;
}

.sd-list-td3{
padding: 20px 0 20px 0; border-bottom: 1px solid #f4f4f4
}

.update{
cursor: pointer;
}

.delete{
cursor: pointer;
}
        
     
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
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/myPageOrderList.do'">주문내역&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='/eaude/mypageShippingDestination.do'">배송지 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 75px;"></a></li>
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
                    <h2 id="sd-header">배송지 관리</h2>
                    <div id="sd-header-text">배송지에 따라 상품 정보가 달라질 수 있습니다.</div>
                    <h3 id="sd-header-addSd" class="btn btn-outline-primary">+  새 배송지 추가</h3>
                    
                    <br>
                    <br>
                    <hr style="background-color: black; height: 1px;">
                    <table id="sd-list-tb">
                    <thead>
                    	<tr>
                    		<th class="sd-list-th">선택</th>
                    		<th class="sd-list-th-addr">주소</th>
                    		<th class="sd-list-th">받으실분</th>
                    		<th class="sd-list-th">연락처</th>
                    		<th class="sd-list-th">수정</th>
                    	</tr>
                    </thead>
                    <tbody>
                    	<c:if test="${not empty list}">
                    		<c:forEach items="${list }" varStatus="s" var="vo">
                    			<c:if test="${vo.ad_default eq 1}">
                    	<tr>
                    		<td class="sd-list-td3"><input type="radio" name="sd_chk" checked="checked"></td>
                    		<td class="sd-list-td2">
                    			<div class="sd-list-td2-div1">기본 배송지</div>
                    			<input type="hidden" name="sd_id_default" value="${vo.sd_id}">
                    			<div class="sd-list-td2-div2">${vo.sd_addr}</div>
                    		</td>
                    		<td class="sd-list-td3">${vo.sd_name}</td>
                    		<td class="sd-list-td3">${vo.sd_phone}</td>
                    		<td class="sd-list-td3 sd_update">
                    		 <img class="update" src ="${pageContext.request.contextPath}/resources/images/pencle.png" style="width: 35px; height: 35px;">
                    		 </td>
                    	</tr>
                    			</c:if>
                    		</c:forEach>
                    	</c:if>
                    	<c:if test="${not empty list}">
                    		<c:forEach items="${list }" varStatus="s" var="vo">
                    			<c:if test="${vo.ad_default eq 0}">
                    	<tr>
                    		<td class="sd-list-td3"><input type="radio" name="sd_chk"></td>
                    		<td class="sd-list-td2">
                    			<div class="sd-list-td2-div2">${vo.sd_addr}</div>
                    			<input type="hidden" name="sd_id" value="${vo.sd_id}">
                    		</td>
                    		<td class="sd-list-td3">${vo.sd_name}</td>
                    		<td class="sd-list-td3">${vo.sd_phone}</td>
                    		<td class="sd-list-td3 sd_delete">
                    		<img class="delete" src ="${pageContext.request.contextPath}/resources/images/trash.png" style="width: 20px; height: 20px;">
                    		</td>
                    	</tr>
                    			</c:if>
                    		</c:forEach>
                    	</c:if>
                    	
                    	
                    	
                    </tbody>
                    </table>
                    
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 <script>
 	
 
 $('#sd-header-addSd').click(function() {
	var id = $('input[name=info-id]').val();
	$.ajax({
		 url : "${pageContext.request.contextPath}/myPageAddrChkNum.do",
    type : 'POST',
    dataType : 'json',
    data : {
    	m_id : id,
       	
       },
	 success : function(data) {
		 if(data == '1'){
		 	alert('배송지는 5곳만 등록 가능합니다.');				 
		 }else{
			window.open('/eaude/mypage_addr_popup.do?id='+id,'배송지 추가','toolbar=yes,menubar=yes,width=700 height=500').focus();
			 
		 }
	 },
});  
})

 $('.update').click(function() {
	 var id = $('input[name=info-id]').val();
	 var sd_id = $('input[name=sd_id_default]').val();
	 window.open('/eaude/mypage_addr_update_popup.do?id='+id+'&sd_id='+sd_id,'기본 배송지 수정','toolbar=yes,menubar=yes,width=700 height=500').focus();
	 
})

 $('.delete').click(function() {
	 if (confirm("정말 삭제하시겠습니까??") == true){
		 var sd_id = $(this).parent().parent().find($('input[name=sd_id]')).val();
		 var sd_id_tr = $(this).parent().parent();
		 $.ajax({
				 url : "${pageContext.request.contextPath}/myPageAddrDelete.do",
	         type : 'POST',
	         dataType : 'json',
	         data : {
	        	 sd_id : sd_id,
	            	
	            },
			 success : function(data) {
				 if(data == 1){
				 sd_id_tr.remove();				 
				 }
			 },
		});  
	 }else{
		 return false;
	 }


	
})
 	
$('input[name=sd_chk]').change(function() {
	var new_default_addr = $(this).parent().parent().find($('.sd-list-td2-div2')).text();
	var default_addr = $('input[name=sd_id_default]').val();
	var id = $('input[name=info-id]').val();
	var sd_id = $(this).parent().parent().find($('input[name=sd_id]')).val();
	 console.log(sd_id);
	 console.log(new_default_addr);
	 console.log(id);
	 console.log(default_addr);
	 var when = 
	/*ajax로 기본배송지 바꿔주기*/
		 $.ajax({
			 url : "${pageContext.request.contextPath}/myPageAddrChangeDeault.do",
	     type : 'POST',
	     dataType : 'json',
	     async: false,
	     data : {
	    	 sd_id : sd_id,
	    	 m_id : id,
	    	 m_addr : new_default_addr,
	        	
	        },
		 success : function() {
				console.log('성공1');
			   
		 },
	})
	
		 $.ajax({
			 url : "${pageContext.request.contextPath}/myPageAddrChangeDeault2.do",
	     type : 'POST',
	     dataType : 'json',
	     async: false,
	     data : {
	    	 sd_id : default_addr,
	        	
	        },
		 success : function(data) {
			 
		 },
	}); 
	 
		 location.reload();		
	 	 alert('기본배송지가 변경되었습니다.');
	
})   


 </script>
</body>
</html>