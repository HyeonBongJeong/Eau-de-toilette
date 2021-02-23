<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/2409d81413.js" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com"> 
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0%;
            padding: 0%;
            color: #333333;
            font-family: 'Noto Sans KR', sans-serif;
        }
        #mypopup-section{
        width: 500px; margin: 0 auto; text-align: center; margin-top: 40px
        }
        #mypopup-header-text{
        color:#999;
        }
        #mypage-popup-div1{
        display: block; margin: 20px 0 0 40px; 
        }
        #mypage-popup-div2{
        display: block;  margin-top: 5px;
        }
        #mypage-popup-div3{
        display: block;  margin-top: 10px;
        }
        .mypage-popup-addr{
        border: 1px solid #ddd; float:left; height: 44px; width: 300px; background-color: #ddd;
        }
        #mypage-popup-addr-btn{
        border: 1px solid #5f0080; border-radius: 2px; color: #5f0080; background-color: white; float:left; height: 46px; line-height: 48px; margin-left: 10px; width: 106px; margin-top: 1px;
        }
        .mypage-popup-addr2{
        border: 1px solid #ddd; display: inline; margin-left: 1px; height: 30px; line-height: 30px; margin-top: 5px;  width: 417px; height: 44px;
        }
    </style>
</head>
<body>
<div id="mypopup-section">
<h2>택배배송 지역입니다.</h2>
<div id="mypopup-header-text">오늘 주문하면 다음 날 바로 도착해요.(일요일 휴무)</div>
<form id="mypage-popup-frm" action="mypageAddrInsert.do?id=${id} " method="post">

<input type="hidden" name="id" value="${id }">

<div id="mypage-popup-div1">
<input id="sample4_roadAddress" class="mypage-popup-addr" name="pop_addr" type="text" placeholder="주소를 검색해 주세요" readonly="readonly">
<button type="button" id="mypage-popup-addr-btn" onclick="sample4_execDaumPostcode()">주소검색</button>
</div>
<div id="mypage-popup-div2" >
<input class="mypage-popup-addr2" id="sample4_detailAddress" name="pop_detail_addr" type="text" placeholder="상세주소를 입력해 주세요">
<span id="guide" style="color:#999;display:none"></span>
</div>
<div id="mypage-popup-div2" >
<input class="mypage-popup-addr2" name="pop_name" type="text" placeholder="받으시는 분의 성합을 입력해 주세요">
</div>
<div id="mypage-popup-div2" >
<input class="mypage-popup-addr2" name="pop_phone" type="text" placeholder="받으시는 분의 번호를 입력해 주세요">
</div>
<div id="mypage-popup-div3">
<input id="mypage-popup-submit" type="submit" style="display: inline; width: 420px; height: 44px; background-color:#5f0080; color: white; border:1px solid #5f0080; border-radius: 2px; font-weight: 700"  value="저장">
</div>
</form>
</div>
<script type="text/javascript">

$('#mypage-popup-frm').submit(function(event){ 
		/*전송 이벤트를 막고 폼안의 비밀번호와 아이디를 변수에 저장한다*/
		
		event.preventDefault();
		var id = $('input[name=id]').val();
		var pop_addr = $('input[name=pop_addr]').val();
		var pop_detail_addr = $('input[name=pop_detail_addr]').val();
		var pop_name = $('input[name=pop_name]').val();
		var pop_phone = $('input[name=pop_phone]').val();
		
	/*ajax의 전송 결과를 담는 변수*/
	if(!pop_addr){
		alert('주소검색을 먼저 해주세요'); 
	}else if(!pop_detail_addr){
		alert('상세주소를 입력해 주세요'); 
		
	}else if(!pop_name){
		alert('받으시는 분의 성함을 입력해 주세요'); 
		
	}else if(!pop_phone){
		alert('받으시는 분의 휴대폰 번호를 입력해 주세요'); 
		
	}
	else{
		event.currentTarget.submit();
		opener.document.location.href="mypageAddrInsert.do?id=${id}&pop_addr="+pop_addr+"&pop_detail_addr="+pop_detail_addr+"&pop_name="+pop_name+"&pop_phone="+pop_phone+""
		self.close();		

	}
})

 	/* 도로명주소 api */
    function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("sample4_roadAddress").value = roadAddr;
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
    
    }


	
</script>
</body>
</html>