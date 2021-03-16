<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<!-- SmartEditor2 라이브러리 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/se/js/HuskyEZCreator.js" charset="utf-8"></script> 
 



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
                    <li class= "menu">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='myPageManageOrder.do'">주문 관리&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                    <li class= "menu menu-on">&nbsp;&nbsp;&nbsp;<a href = "#" onclick="location.href='mypage_manager_event.do'">이벤트&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src ="${pageContext.request.contextPath}/resources/images/point-right.png" style="width: 12px; height: 12px; margin-left: 90px;"></a></li>
                </ul>
            </div>
		</div>
            <div class="mypage-personer-info">
                <div class = "mypage-personer-info-section">
                    <h2 class="order-manage-h2">이벤트 수정</h2>
					 
                    <br>
                    <hr style="background-color: black; height: 1px; margin-top: 30px;">
                    <div>
                    <form action="eventUpdate.do" method="post" enctype="multipart/form-data">
                    <table id="order-manage-table">
                    <c:forEach items="${elist}" var="vo" varStatus="s">
                    	<tr>
                    		<td style="padding-bottom: 15px;">종료일</td>
                    		<td style="padding-bottom: 15px;"><input name="e-end" type="date" value="${vo.event_end }">
                    		<input name="e-id" type="hidden" value="${vo.event_id }">
                    		</td>
                    		
                    	</tr>
                    	<tr>
                    		<td style="padding-bottom: 15px;">제목</td>
                    		<td style="padding-bottom: 15px;"><input value="${vo.event_title }" name="e-title" type="text" style="width: 93%; height: 30px; padding-left: 10px; border: 1px solid #ddd;"></td>
                    	</tr>
                    	<tr>
                    		<td style="padding-bottom: 15px;">사진</td>
                    		<td style="padding-bottom: 15px;"><input name="e-img" type="file"></td>
                    	</tr>
                    	<tr>
                    		<td style="padding-bottom: 15px;">내용</td>
                    		<td style="padding-bottom: 15px;">
	                    		<div class="jsx-2303464893 editor"> 
		                    		<div class="fr-box fr-basic fr-top" role="application"> 
			                    		<div class="fr-wrapper show-placeholder" dir="auto" style="overflow: auto;"> 
				                    		<textarea name="notice_content" id="smartEditor" style="min-width: 700px; height: 412px;">
				                    		${vo.event_content }
				                    		</textarea> 
			                    		</div> 
		                    		</div> 
	                    		</div>
                    		</td>
                    	</tr>
                    </c:forEach>
                    	
                    	<tr>
	                    	<td colspan="2" style="text-align: right; padding-bottom: 20px;">
	                    	 <input type="submit" id="savebutton" value="수정하기" style="background-color: #5f0080; color: white; border: 1px solid #5f0080; width: 70px; height: 40px;">
	                   		 <input onclick="goback();" name="back-page" type="button" value="이전으로" style="background-color: #5f0080; color: white; border: 1px solid #5f0080; width: 70px; height: 40px;">
	                    	</td>
                    	</tr>
                    	
                    	
                    </table>
                   
                    </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
 <jsp:include page="footer.jsp"></jsp:include>
 <script type="text/javascript">

function goback() {
	window.history.back();
	
}
 
 
 var oEditors = []; 
 nhn.husky.EZCreator.createInIFrame({ 
	 oAppRef : oEditors, 
	 elPlaceHolder : "smartEditor", //저는 textarea의 id와 똑같이 적어줬습니다. 
	 sSkinURI : "resources/se/SmartEditor2Skin.html", //경로를 꼭 맞춰주세요! 
	 fCreator : "createSEditor2", htParams : { // 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
	 bUseToolbar : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
	 bUseVerticalResizer : false, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
	 bUseModeChanger : false } 
 }); 
 
 
 
  $(function() { $("#savebutton").click(function() {
	 oEditors.getById["smartEditor"].exec("UPDATE_CONTENTS_FIELD", []); //textarea의 id를 적어줍니다. 
	 var title = $("input[name=e-title]").val(); 
	 var img = $("input[name=e-img]").val(); 
	 var content = document.getElementById("smartEditor").value; 
	 var end =  $('input[name=e-end]').val();
     var endSplit = end.split('-');
     end = '';
     for ( var i in endSplit ) {
    	 end += endSplit[i];
     }
	 var now = new Date();
	 var year = now.getFullYear();
	 var month = now.getMonth()+1;
	 month = month >=10 ? month : '0' + month;
	 var date = now.getDate();
	 date = date >=10 ? date : '0' + date;
	 var today = year+month+date;
	 
	 
	 if(!(today < end)){
		 alert("오늘날자 보다 이전의 날자는 선택 불가합니다."); 
		 return false; 
	 }
	 if (title == null || title == "") { 
		 alert("제목을 입력해주세요."); 
		 $("input[name=e-title]").focus(); 
		 return false; 
		 }
	 
	 if(content == "" || content == null || content == '&nbsp;' || content == '<br>' || content == '<br/>' || content == '<p>&nbsp;</p>'){ 
			 alert("본문을 작성해주세요."); 
			 oEditors.getById["smartEditor"].exec("FOCUS"); //포커싱 return; 
			 return false; 
			 } //이 부분은 스마트에디터 유효성 검사 부분이니 참고하시길 바랍니다. 
			 var result = confirm("발행 하시겠습니까?"); 
			 if(result){ 
				 alert("발행 완료!"); 
				 $("#noticeWriteForm").submit(); 
				 }else{ 
					 return false; 
					 }
			 }); 
 }) 
 
 
 

  

 
 
 </script>
<!--  <script type="text/javascript" src = "resources/js/notice-write.js"></script> -->
<!-- Air datepicker css -->

 
</body>
</html>



