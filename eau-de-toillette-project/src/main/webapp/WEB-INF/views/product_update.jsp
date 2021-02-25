<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
@font-face {
    font-family: 'NEXON Lv2 Gothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv2 Gothic.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
* {
	padding: 0;
	margin: 0;
	border: 0;
	border-collapse:collapse;
	box-sizing:border-box;
	text-decoration:none;
}
html{
	height : 100%;
}

body{
	height : auto;
}
.jck_wrap{
	min-height:100%;
	position : relative;
	padding-bottom : 200px;
}


GJW {
	width: 100%;
	display: flex;
	justify-content: center;
	margin-top: 70px;	
	margin-bottom: 100px;
	margin-left: 10px;
	
}

section {
	width: 1000px;
	display: flex;
	justify-content: center;
	border: 1px solid #0000004a;
padding-top: 40px;
}
#smart_editor2{
width: 100%;

}
#gjw-title-input{
height: 30px;
width: 50%;
box-shadow: 0px 0px 2px 1px purple;outline:none;
padding-left:5px;
}

#gjw-type-select{

box-shadow: 0px 0px 2px 1px purple;outline:none;
color:blueviolet;;

}
#gjw-password-input{
border: 3px solid rgb(78 102 255 / 39%);
outline:none;
}  input[type='radio']:after {
        width: 15px;
        height: 15px;
        border-radius: 15px;
        top: -2px;
        left: -1px;
        position: relative;
        background-color: #d1d3d1;
        content: '';
        display: inline-block;
        visibility: visible;
        border: 2px solid white;
    }

    input[type='radio']:checked:after {
        width: 15px;
        height: 15px;
        border-radius: 15px;
        top: -2px;
        left: -1px;
        position: relative;
        background-color: aliceblue;
        content: '';
        display: inline-block;
        visibility: visible;
        border: 3px solid powderblue;;
    }
    #gjw-secret-tr{
    
    display:none;}
    #submitModifyBoardBtn{
    
    color: #black;
    border:3px solid purple;
    font-size:16px;
    background-color: purple;
    border-radius: 5px;
    padding: 5px;
    color: #0AC5A8;
    }
    #gjw-serach-list{
      border: 3px solid purple;
    border-radius: 5px;
    padding: 5px;
    color: white;
    background: purple;
        font-weight: bold;
    
}
    td{
padding-top: 20px;
    padding-bottom: 5px;    }
    .gjw-table-tr{
        border-bottom: 1px solid #0000002e;
    
    }
    #submitbtn{
        border: 3px solid purple;
    border-radius: 5px;
    padding: 5px;
    color: white;
    background: purple;
        font-size: 16px;
    font-weight: bold;
    }
    .filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: purple;
  cursor: pointer;
  border: 1px solid purple;
  border-radius: .25em;
  -webkit-transition: background-color 0.2s;
  transition: background-color 0.2s;
}

.filebox label:hover {
  background-color: purple;
}

.filebox label:active {
  background-color: purple;
}

.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
#introinput{
box-shadow: 0px 0px 2px 1px purple;
height: 25px;
    padding-left: 3px;
}
</style>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js">
	
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/se/js/HuskyEZCreator.js"></script>

</head>
<body>
	<jsp:include page="header.jsp" />

<GJW>
<section>
<div style="
    width: 90%;
">


<div style=" font-family: 'Hanna', fantasy;font-size:30px;margin-bottom: 30px;">
상품 수정</div>
	<form name ="frm" enctype="multipart/form-data">
		<table align="center" style="width: 100%;">
			<tr class="gjw-table-tr">
				 <td style="color:#black;    font-family: 'NEXON Lv2 Gothic';
				 ">상품명</td>
				 <td style="width:85%;">
				<input type="text" name="p_title" id="gjw-title-input" placeholder="글 제목을 입력해주세요" required="required" value="${list.p_title }">
				<input type="hidden" name ="p_id" value="${list.p_id }">
				</td>
				<tr class="gjw-table-tr">
				<td style="color:#black; font-family: 'NEXON Lv2 Gothic';">용량</td>
				<td><input type="text" name="p_size" value="${list.p_size }"></td>
			</tr>
				<tr class="gjw-table-tr">
				<td style="color:#black; font-family: 'NEXON Lv2 Gothic';">소개</td>
				<td><input type="text" name="p_intro" value="${list.p_intro }" id="introinput"></td>
			</tr>
			<tr class="gjw-table-tr">
			<td style="color:#black;    font-family: 'NEXON Lv2 Gothic';
			">종류</td>
			<td style="width:90%;"><select name="p_type" id="gjw-type-select">
                              <option value="c">Candle</option>
                              <option value="d">Diffusers</option>
                              <option value="b">Body Cream</option>
                              <option value="p">Perfume</option>
                              <option value="e">ETC</option>
                              
                        </select></td>
			</tr>
			<tr class="gjw-table-tr">
			<td style="color:#black;    font-family: 'NEXON Lv2 Gothic';
			">가격</td>
			<td style="width:90%;">
			<input type="hidden" name="p_id">
			<input type="number" name="p_price" value="${list.p_price }">
			</tr>
			 <tr class="gjw-table-tr">
                        <td style="color:#black;    font-family: 'NEXON Lv2 Gothic';
                        "> <label>썸네일이미지</label></td>
<td style="
    display: flex;
">


 <div class="select_img"><img src="${pageContext.request.contextPath}/resources${list.p_img }"/>
 </div>
<div class="filebox"style="
    /* margin: auto; */
    margin-top: 150px;
">
  <label for="gdsImg">업로드</label>
  <input type="file" id="gdsImg" name="file">
</div>
 
 </td>
                     </tr>
			<tr id="gjw-secret-tr" class="gjw-table-tr">
				<td style="color:#black;    font-family: 'NEXON Lv2 Gothic';
				">비밀번호</td>
				<td></td>
			</tr>
			<tr class="gjw-table-tr">
				<td colspan="2" style="padding-top: 30px;"><textarea id="p_content" name="p_content"></textarea></td>
			</tr>
			<tr style="height:50px">
				<td colspan="2" align="end"style="padding-top: 40px;padding-bottom: 40px"> <input type="button" id="submitbtn" value="상품수정">
		 <a href="productlist.do" id="gjw-serach-list">목록으로</a></td>
			</tr>	
		</table>
	</form>
	</div>
	</section>
	</GJW>
	
		<jsp:include page="footer.jsp" />
	</body>
 	<script>
 $(function(){
	 var p_type ="${list.p_type}"
	 
		 $("#gjw-type-select").val(p_type).prop("selected", true);

 })
 	
 	var oEditors = [];
 	nhn.husky.EZCreator.createInIFrame({
 	    oAppRef: oEditors,
 	    elPlaceHolder:"p_content",  //textarea ID
 	    sSkinURI: "${pageContext.request.contextPath}/resources/se/SmartEditor2Skin.html",  //skin경로
 	    fCreator: "createSEditor2",
 	    
 	   
 	    fOnAppLoad:function(){
 		oEditors.getById["p_content"].exec("PASTE_HTML", ["${fn:replace(list.p_content, "\"", "'") }"]);
 	}, 
 		
 	});

 	$('#submitbtn').click(function() {
 		if($("#gjw-title-input").val()==""){
 			alert("글 제목을 입력해주세요")
 		$("#gjw-title-input").focus();
 			return false;
 		}
 	oEditors.getById["p_content"].exec("UPDATE_CONTENTS_FIELD", []);
 	document.frm.action ="updateproduct.do";
 	document.frm.method ="POST";
 	document.frm.submit();
 	 });
 	
 	
 	
 	
 	
 	
 	
					$("#gdsImg").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(200).height(200);								
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
					
					
					$(function(){
						var length = "${list.p_intro}";
						$("#introinput").css('width', length.length * 12);

					})
				</script>
</body>
</html>