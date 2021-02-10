<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	display:flex;
	justify-content: center;
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
border: 3px solid rgb(78 102 255 / 39%);
outline:none;
padding-left:5px;
}

#gjw-type-select{

border: 3px solid rgb(78 102 255 / 39%);
outline:none;
color:dodgerblue;

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
    border:3px solid rgb(78 102 255 / 39%);
    font-size:16px;
    background-color: white;
    border-radius: 5px;
    padding: 5px;
    color: #0AC5A8;
    }
    #gjw-serach-list{
        color: #black;
  border:3px solid rgb(78 102 255 / 39%);
  border-radius: 5px;
    padding: 5px;
        color: #0AC5A8;
    
    }
    td{
padding-top: 20px;
    padding-bottom: 5px;    }
    .gjw-table-tr{
        border-bottom: 1px solid #0000002e;
    
    }
</style>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js">
	
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/se/js/HuskyEZCreator.js"></script>

</head>
<body>


<section>
<div style="
    width: 90%;
">


<div style=" font-family: 'Hanna', fantasy;font-size:30px;margin-bottom: 30px;">
상품등록</div>
	<form name ="frm" enctype="multipart/form-data">
		<table align="center" style="width: 100%;">
			<tr class="gjw-table-tr">
				 <td style="color:#black;    font-family: 'NEXON Lv2 Gothic';
				 ">상품명</td>
				 <td style="width:85%;">
				<input type="text" name="p_title" id="gjw-title-input" placeholder="글 제목을 입력해주세요" required="required"></td>
				<tr class="gjw-table-tr">
				<td style="color:#black; font-family: 'NEXON Lv2 Gothic';">용량</td>
				<td><input type="text" name="p_size"></td>
			</tr>
				<tr class="gjw-table-tr">
				<td style="color:#black; font-family: 'NEXON Lv2 Gothic';">소개</td>
				<td><input type="text" name="p_intro"></td>
			</tr>
			<tr class="gjw-table-tr">
			<td style="color:#black;    font-family: 'NEXON Lv2 Gothic';
			">상품 카테고리</td>
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
			">상품 금액</td>
			<td style="width:90%;">
			<input type="hidden" name="p_id">
			<input type="number" name="p_price">
			
			
			</tr>
			 <tr class="gjw-table-tr">
                        <td style="color:#black;    font-family: 'NEXON Lv2 Gothic';
                        "> <label for="gdsImg">썸네일이미지</label></td>
<td style="
    display: flex;
    flex-direction: column;
">
<input type="file" id="gdsImg" name="file" style="
   padding-top: 20px;
"/>
 <div class="select_img"><img src=""/>
 </div></td>
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
				<td colspan="2" align="end"style="padding-top: 40px;padding-bottom: 40px"> <input type="button" id="submitbtn" value="상품등록">
		 <a href="board_list.do" id="gjw-serach-list">목록으로</a></td>
			</tr>	
		</table>
	</form>
	</div>
	</section>
	</GJW>
</form>
 	<script>
 	var oEditors = [];
 	nhn.husky.EZCreator.createInIFrame({
 	    oAppRef: oEditors,
 	    elPlaceHolder:"p_content",  //textarea ID
 	    sSkinURI: "${pageContext.request.contextPath}/resources/se/SmartEditor2Skin.html",  //skin경로
 	    fCreator: "createSEditor2",
 		
 	});
 	$('#submitbtn').click(function() {
 		if($("#gjw-title-input").val()==""){
 			alert("글 제목을 입력해주세요")
 		$("#gjw-title-input").focus();
 			return false;
 		}
 		  if ($("#yes").is(":checked")) {
 			  if($("#gjw-password-input").val()==""){
 				  alert("비밀번호를 입력해주세요");
 				  $("#gjw-password-input").focus();
 				  return false;
 			  }
 		    }
 	oEditors.getById["p_content"].exec("UPDATE_CONTENTS_FIELD", []);
 	document.frm.action ="insertproduct.do";
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
				</script>
</body>
</html>