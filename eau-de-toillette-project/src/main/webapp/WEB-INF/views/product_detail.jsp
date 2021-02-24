<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
GJW {
	display: flex;
	justify-content: center;
}

section {
	width: 1050px;
}

.comment-update-btn {
	font-size: 12px;
	color: gray;
	display: flex;
	margin-bottom: 10px;
	margin-left: 10px;
	border: 0px;
	background: none;
	outline: none;
	cursor: pointer;
}

.comment-del-btn {
	font-size: 12px;
	color: gray;
	display: flex;
	margin-bottom: 10px;
	margin-left: 10px;
	border: 0px;
	background: none;
	outline: none;
	cursor: pointer;
}

.reviewcommentdiv {
	
}

.gjw-cwriter-wrap {
	margin-left: 20px;
	margin-top: 10px;
	font-weight: bold;
}

.gjw-ccontent-wrap {
	margin-left: 20px;
	margin-top: 10px;
}

.productimg {
	width: 430px;
	height: 552px;
}

.gjw-comment-textarea {
	resize: none;
	height: auto;
	width: 100%;
	outline: none;
}

.section_view {
	padding-bottom: 10px;
	display: flex;
	border-bottom: inset;
	justify-content: center;
}
input{
outline: none;
}
.reviewtr:hover{
background-color: #9e9e9e2b;
}
#productnumber {
	width: 15px;
}
#sample4_jibunAddress{
width: 300px;
}
#sample4_detailAddress{
width: 300px;
}
textarea {
	border: 0;
}

#productprice {
	font-size: 30px;
	font-weight: bold;
	margin-left: 5px;
}

.modal_wrap {
	display: none;
	width: 500px;
	height: 500px;
	position: fixed;
	top: 50%;
	left: 50%;
	margin: -250px 0 0 -250px;
	background: white;
	z-index: 2;
	border-radius: 15px;
}

.black_bg {
	display: none;
	position: fixed;
	content: "";
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	top: 0;
	left: 0;
	z-index: 1;
}

#ajaxdiv {
	display: none;
}

.modal_close {
	width: 26px;
	height: 26px;
	position: absolute;
	top: -30px;
	right: 0;
}

.pagenumber {
	border: 1px solid #ddd;
	font-weight: 700;
	line-height: 34px;
	padding-right: 10px;
	padding-left: 10px;
	cursor: pointer;
	-ms-user-select: none;
	-moz-user-select: -moz-none;
	-khtml-user-select: none;
	-webkit-user-select: none;
	user-select: none;
}

#addresstext1 {
	border: 0;
}

#lastaddressdiv {
	display: none;
}

.modal_close>a {
	display: block;
	width: 100%;
	height: 100%;
	background: url(https://img.icons8.com/metro/26/000000/close-window.png);
	text-indent: -9999px;
}

#addresstext {
	padding-left: 70px;
	margin-top: 20px;
}

img {
	max-width: 1000px;
}

#minusbtn {
	background: #fff url(https://res.kurly.com/pc/ico/2010/ico_minus.svg)
		no-repeat 50% 50%;
	background-image:
		url(https://res.kurly.com/pc/ico/2010/ico_minus_on.svg);
	background-size: 30px 30px;
	border: 0;
	font-weight: bold;
	text-align: center;
	padding-left: 25px;
	padding-top: 0px;
	padding-bottom: 0px;
	top: 2px;
	position: relative;
}

.gjw-commentlist-wrap {
	border-bottom: 1px solid #00000017;
}

#plusbtn {
	background: #fff url(https://res.kurly.com/pc/ico/2010/ico_plus.svg)
		no-repeat 50% 50%;
	background-image: url(https://res.kurly.com/pc/ico/2010/ico_plus_on.svg);
	background-size: 30px 30px;
	border: 0;
	font-weight: bold;
	text-align: center;
	padding-left: 25px;
	padding-top: 0px;
	padding-bottom: 0px;
	top: 2px;
	position: relative;
}

#productnumber {
	background: none;
	border: 0;
	font-size: 18px;
	font-weight: bold;
	text-align: center;
}

#addresstext {
	display: none;
}

#ajaxdiv {
	margin-bottom: 30px;
}

#ajaxform {
	margin-top: 20px;
}

.reviewtitle {
	font-weight: 700;
	color: #514859;
	line-height: 18px;
	margin-left: 50px;
	font-size: 20px;
	margin-top: 20px;
}

.reviewdetailtr {
	border-bottom: 1px solid #9e9e9e;
}

#nomal-add {
	margin-top: 7px;
	margin-right: 5px;
}

#new-add-btn {
	margin-top: 7px;
	margin-right: 5px;
}

.gjw-comment-wrap {
	display: flex;
	justify-content: center;
	margin-bottom: 20px;
}

.gjw-comment-submit {
	background: none;
	color: purple;
	outline: none;
	border: 0;
}

.gjw-commentsubmit-wrap {
	display: flex;
	justify-content: flex-end;
	margin-right: 30px;
	margin-bottom: 10px;
}

.gjw-comment-write {
	overflow: hidden;
	resize: none;
	outline: none;
	width: 100%;
	overflow: hidden;
	width: 100%;
	height: 32px;
}

.gjw-comment-wrap {
	display: flex;
	justify-content: center;
	margin-bottom: 20px;
}

.gjw-comment-div {
	border: 2px solid purple;
	outline: none;
	margin-top: 30px;
	margin-bottom: 20px;
	width: 80%;
	border-radius: 9px;
}

#gjw-comment-write {
	overflow: hidden;
	resize: none;
	outline: none;
	width: 100%;
	overflow: hidden;
	width: 100%;
}

.gjw-comment-cl {
	margin-top: 10px;
	margin-bottom: 10px;
	margin-left: 40px;
}

.gjw-comment-date {
	font-size: 12px;
	color: gray;
	display: flex;
	margin-bottom: 10px;
	margin-left: 40px;
}

.mw {
	position: fixed;
	_position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	z-index: 4;
}

.mw .bg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #000;
	opacity: .5;
	filter: alpha(opacity = 50)
}

.mw .fg {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 360px;
	height: 160px;
	margin: -100px 0 0 -200px;
	padding: 20px;
	border: 3px solid #ccc;
	background: #fff;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<jsp:include page="header.jsp" />
	<GJW>
	<section>
		<div class="section_view">
			<div style="margin-right: 50px;">
				<img
					src="${pageContext.request.contextPath}/resources${list.p_img }"
					class="productimg">
			</div>
			<div style="width: 400px; margin-left: 50px; margin-top: 30px;">
				<p style="font-size: 30px; font-weight: 800;">${list.p_title }</p>
				<p style="color: #999; margin-bottom: 10px; margin-top: 10px;">${list.p_intro }</p>
				<p
					style="padding-bottom: 20px; border-bottom: inset; margin-top: 30px;">
					<span
						style="font-weight: 700; font-size: 28px; line-height: 30px; margin-top: 30px;">
						<input type="hidden" value="${list.afterPirce }" name="price">${list.afterPirce }원</span>
				</p>
				<p
					style="padding-bottom: 30px; border-bottom: inset; margin-top: 30px;">
					용량:<span>${list.p_size}ml</span>
				</p>
				<p
					style="padding-bottom: 30px; border-bottom: inset; margin-top: 30px;">
					구매수량: <span style="border: 0.5px solid #00000030;"><input
						type="button" id="minusbtn"><input type="text" value="0"
						id="productnumber" style="text-align: center; width: 30px;"><input
						type="button" id="plusbtn"></span>
				</p>
				<div style="padding-bottom: 20px; border-bottom: inset;padding-top: 10px;">
					<span>총 상품금액: </span><span id="productprice">0원</span>
				</div>
				<div style="margin-top: 4px;">
					<div>
						<input type="button" value="주문하기" id="buybtn"
							style="width: 100%; height: 50px; background: purple; color: white; font-size: 16px; border: 1px solid white">
					</div>
					<div>
						<input type="button" value="장바구니" id="basketbtn"
							style="width: 100%; height: 50px; background: purple; color: white; font-size: 16px; border: 1px solid white">
					</div>
				</div>
			</div>
		</div>

		<div style="border-bottom: inset; padding-top: 30px;">${list.p_content }</div>
		<div style="border-bottom: 1px solid black;">
			<div
				style="margin-top: 20px; font-size: 25px; font-weight: bold; margin-bottom: 10px;">
				PRODUCT REVIEW</div>
			<div style="margin-bottom: 30px;">
				<p>■ 상품에 대한 리뷰를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로
					이동될 수 있습니다.</p>
				<p>■ 배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 1:1 문의에 남겨주세요.</p>
			</div>
		</div>
		<div>
			<table id="reviewtable"
				style="width: 100%; border-collapse: collapse;">
				<tr
					style="text-align: center; border-bottom: 1px solid #80808096; height: 50px; font-weight: bold;">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>

			</table>
			<div>
				<div id="paging"
					style="display: flex; justify-content: center; margin-top: 30px;">
					<input type="hidden" id="number1" value="1">
					<%-- <tr align="center" height="20">
						<td colspan="6"
							style="padding-top: 20px; color: #0AC5A8; font-family: 'Jal_Onuel';"><c:if
								test="${currentPage <= 1}"> [이전]&nbsp;
 </c:if>
 							 	 <c:if test="${currentPage > 1}">
								<a href="${blistST}"
									style="color: #0AC5A8; font-family: 'Jal_Onuel';">[이전]</a>
							</c:if>
							
		
							<c:forEach var="p" begin="${startPage}" end="${endPage }">
								<c:if test="${p <= maxPage}"> 
								<c:if test="${p eq currentPage}">
									<font color="cornflowerblue" size="4"><b>[${p}]</b></font>
								</c:if>
								<c:if test="${p ne currentPage}">
									
									<a href="${blistchk}">${p}</a>
								</c:if>
								</c:if> 
							</c:forEach> <c:if test="${currentPage >= maxPage}">
 [다음]
 </c:if> <c:if test="${currentPage < maxPage}">
								<a href="${blistEND}"
									style="color: #0AC5A8; font-family: 'Jal_Onuel';">[다음]</a>
							</c:if></td>
					</tr>	 --%>
				</div>
			</div>
		</div>
		<div>
			<div
				style="display: flex; justify-content: flex-end;
	/* margin-right: 20px; */ margin-top: 50px; border-bottom: inset; padding-bottom: 30px;">

				<input type="button" value="글 목록"
					style="width: 150px;
	/* justify-content: flex-end; */ height: 30px; text-align: center; color: white; background-color: purple; border: 0; font-weight: bold; margin-right: 10px;"
					id="productlistbtn"> <input type="button" value="후기작성"
					style="width: 150px;
	/* justify-content: flex-end; */ height: 30px; text-align: center; color: white; background-color: purple; border: 0; font-weight: bold;"
					id="reviewwritebtn">
			</div>
		</div>
		<div id="ajaxdiv">
			<form id="ajaxform" action="review_write.do" method="post"
				enctype="multipart/form-data">
				<table>
					<tr>
						<td>제목</td>
						<td><input type="text" name="r_title" id="r_title"></td>
					</tr>
					<tr>
						<td>이미지 첨부</td>
						<td>
							<div class="select_img" style="display: none;">
								<img src="" />
							</div> <input type="file" name="file1" id="file1">
						</td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea rows="10" cols="120" name="r_content"
								id="r_content"></textarea></td>
					</tr>
					<tr>
						<td><input type="hidden" value="${list.p_id }" name="p_id"></td>
					</tr>
				</table>

				<div
					style="display: flex; justify-content: flex-end;
	/* margin-right: 20px; */ margin-top: 50px;">
					<input type="button" value="후기등록"
						style="width: 150px;
	/* justify-content: flex-end; */ height: 30px; text-align: center; color: white; background-color: purple; border: 0; font-weight: bold;"
						onclick="javascript:fn_submit()">
			</form>
		</div>

		</div>
	</section>
	<div class="black_bg"></div>
	<div class="modal_wrap">
		<div class="modal_close">
			<a href="#">close</a>
		</div>
		<div
			style="display: flex; justify-content: center; flex-direction: column;">
			<div style="margin-top: 20px;">
				<div
					style="display: flex; justify-content: center; font-weight: bold; font-size: 25px;">배송지를
					입력해주세요</div>
				<div>
					<div
						style="display: flex; justify-content: flex-end; margin-right: 10px; margin-top: 20px">
						<input type="radio" id="nomal-add" name="address"
							required="required" value="기본배송지">기본배송지
					</div>
					<div
						style="display: flex; justify-content: flex-end; margin-right: 10px">
						<input type="text" id="originaladd" readonly="readonly"
							style="width: 99%; text-align: end; padding-right: 30px; border: 0; outline: none;">
					</div>
				</div>
				<div
					style="display: flex; justify-content: flex-end; margin-right: 53px; margin-top: 20px;">
					<input type="radio" name="address" value="배송지 선택" id="new-add-btn">배송지
					선택
				</div>
				<div
					style="display: flex; justify-content: flex-end; margin-right: 53px; margin-top: 20px;">
					<input type="radio" name="address" value="배송지 직접입력"
						id="new-add-btn">배송지 직접입력
				</div>


				<div id="addresstext">
					<input type="text" id="sample4_postcode" placeholder="우편번호">
					<input type="button" onclick="sample4_execDaumPostcode()"
						value="우편번호 찾기"><br>  <input
						type="text" id="sample4_jibunAddress" placeholder="지번주소"><br>
					<span id="guide" style="color: #999; display: none"></span> <input
						type="text" id="sample4_detailAddress" placeholder="상세주소"
						required="required"> <input type="button" value="확인"
						id="addresssubmitbtn">
				</div>
				<div>
					<div
						style="display: flex; justify-content: flex-end; margin-right: 30px; position: absolute; top: 400px; right: 0px;">
						<span style="margin-top: 9px; margin-right: 10px;">결제금액:</span><span
							id="lastprice" style="font-size: 25px; font-weight: bold;"></span>
					</div>

					<div style="justify-content: flex-end; margin-top: 50px;"
						id="lastaddressdiv">
						<div>
							<span style="font-size: 13px; margin-right: 5px;">주소:</span><input
								type="text" id="addresstext1">
						</div>
					</div>
					<div style="top: 460px; position: absolute">
						<input type="button" value="결제하기"
							style="width: 500px; background-color: purple; color: white; border: 0; height: 40px; font-size: 20px; font-weight: bold; border-radius: 0px 0px 10px 10px;"
							id="buybtn2">
					</div>
				</div>
			</div>
		</div>
	</div>
	</GJW>
	<div id="mw_temp" class="mw">
		<div class="bg">
			<!--이란에는 내용을 넣지 마십시오.-->
		</div>
		<div class="fg">
			<p>
				모달창 예제입니다.body 태그앞에 넣으십시오.
				<button
					onclick="document.getElementById('mw_temp').style.display='none'"
					type="button">창닫기</button>
			</p>
		</div>
	</div>
	<script>
		$(document).on(
				"click",
				".comment-del-btn",
				function() {

					var m_id = $(this).parent().parent().prev().prev(
							".gjw-comment-cl").text();
					var r_id = $(this).prev().val();
					var div = $(this).parent().parent().parent(
							".gjw-commentlist-wrap");
					//나중에 바꿔야됨 세션 ID로
					if (m_id != "GJWoon") {
						alert("댓글 작성자만 삭제가 가능합니다.");
						return false;
					} else {
						$.ajax({
							url : "commentdelete.do",
							data : {
								"r_id" : r_id
							},
							success : function() {
								div.remove();
								alert("댓글이 삭제 되었습니다.")
							}
						})
					}
				})

		$(document)
				.on(
						"click",
						".gjw-comment-submit",
						function() {

							var content = $(this).parent().prev().children(
									".gjw-comment-write").val();
							var r_ref = $(this).prev().val();
							var p_id = "${list.p_id}";
							$
									.ajax({
										url : "reviewcomment_write.do",
										data : {
											"r_content" : content,
											"r_ref" : r_ref,
											"p_id" : p_id
										},
										success : function(list) {
											alert("댓글 작성에 성공하셨습니다.");
											$(".reviewcommentdiv")
													.append(
															'<div class="gjw-commentlist-wrap"><div class="gjw-comment-cl" style="margin-bottom: 30px;font-weight:bold">'
																	+ list.m_id
																	+ '</div><div class="gjw-comment-cl"><textarea class="gjw-comment-textarea" resize="none" readonly="readonly" style="word-break: break-all; height: 19px;">'
																	+ list.content
																	+ '</textarea></div><div style="display:flex;"><div class="gjw-comment-date">'
																	+ list.date
																	+ '</div><div><input type="hidden" value='+list.r_id+'><input type="button" value="댓글삭제" class="comment-del-btn"></div><div><input type="button" value="수정하기" class="comment-update-btn"></div></div></div>');
											$(".gjw-comment-write").val("");

											$(document)
													.ready(
															function() {
																$("table")
																		.on(
																				"keyup",
																				"textarea",
																				function(
																						e) {
																					$(
																							this)
																							.css(
																									"height",
																									"auto");
																					$(
																							this)
																							.height(
																									this.scrollHeight);
																				});
																$("table")
																		.find(
																				"textarea")
																		.keyup();
															})
										}
									})
						})

		$(document)
				.on(
						"click",
						".reviewdetailbtn",
						function() {
							var tr = $(this).parent();
							tr.prevAll(".reviewdetailtr")
									.css("display", "none");
							tr.nextAll(".reviewdetailtr")
									.css("display", "none");

							$
									.ajax({
										url : "review_detail.do",
										data : {
											"r_id" : $(this).prev().text()
										},
										dataType : "JSON",
										success : function(list) {
											tr
													.eq(-1)
													.after(
															'<tr class="reviewdetailtr"><td colspan="4"><div class="reviewtitle">[${list.p_title}]</div><div style=" display: flex;justify-content: center;"><img src="${pageContext.request.contextPath}/resources'+list.list.r_img+'"></div><div style="font-weight: 400;border-bottom: 1px solid #00000038;padding-bottom: 30px;padding-left:50px;">'
																	+ list.list.r_content
																	+ '</div><div></div><div class="reviewcommentdiv"></div><div class="gjw-comment-wrap"><div class="gjw-comment-div"><div class="gjw-cwriter-wrap">금지운(${userID})</div><div class="gjw-ccontent-wrap"><textarea class="gjw-comment-write" rows="1" placeholder="댓글을 남겨보세요" name="b_content"></textarea></div><div class="gjw-commentsubmit-wrap"><input type="hidden" value="'+list.list.r_id+'"><input type="button" value="등록" class="gjw-comment-submit"></div></div><div></td><tr>');
											/* 		<div id="gjw-comment-wrap">
													<div id="gjw-comment-div">
													<form action="commentInsert.do" method="post">
													<div id="gjw-cwriter-wrap">
													<input type="text" value="${userID }" name="m_id"
															readonly="readonly">
													<input type="hidden" value="${blist.b_id }" name="b_id">
													</div>
													<div id="gjw-ccontent-wrap">
													<textarea id="gjw-comment-write" rows="1"
															placeholder="댓글을 남겨보세요" name="b_content"></textarea>
													</div>
													<div id="gjw-commentsubmit-wrap">
													<input type="submit" value="등록" id="gjw-comment-submit">
													</div>
													</form>
													</div>
													</div> */
											var values = []
											values = list.commentlist;
											$
													.each(
															values,
															function(index,
																	value) {
																$(
																		".reviewcommentdiv")
																		.append(
																				'<div class="gjw-commentlist-wrap"><div class="gjw-comment-cl" style="margin-bottom: 30px;font-weight:bold">'
																						+ value.m_id
																						+ '</div><div class="gjw-comment-cl"><textarea class="gjw-comment-textarea" resize="none" readonly="readonly" style="word-break: break-all; height: 19px;">'
																						+ value.r_content
																						+ '</textarea></div><div style="display:flex;"><div class="gjw-comment-date">'
																						+ value.r_adddate
																						+ '</div><div><input type="hidden" value='+value.r_id+'><input type="button" value="댓글삭제" class="comment-del-btn"></div><div><input type="button" value="수정하기" class="comment-update-btn"></div></div></div>');

															});

											$(document)
													.ready(
															function() {
																$("table")
																		.on(
																				"keyup",
																				"textarea",
																				function(
																						e) {
																					$(
																							this)
																							.css(
																									"height",
																									"auto");
																					$(
																							this)
																							.height(
																									this.scrollHeight);
																				});
																$("table")
																		.find(
																				"textarea")
																		.keyup();
															})

										}
									})

						});
		review();
		function review() {
			$(function() {
				$
						.ajax({
							url : "review_list.do",
							data : {
								"p_id" : "${list.p_id}"
							},
							dataType : "JSON",
							success : function(list) {
								var values = []
								values = list.list;
								$
										.each(
												values,
												function(index, value) {
													$(
															'#reviewtable > tbody:last')
															.append(
																	'<tr style="text-align: center; border-bottom: 1px solid #80808096; height: 40px;"class="reviewtr"><td>'
																			+ value.r_id
																			+ '</td><td  class="reviewdetailbtn">'
																			+ value.r_title
																			+ '</td><td>'
																			+ value.m_id
																			+ '</td><td>'
																			+ value.r_adddate
																			+ '</tr></tr>');
												});
								$("#paging").append(
										'<div class="pagenumber">이전<div>');
								for (var i = list.startPage; i <= list.endPage; i++) {
									if (i <= list.maxPage) {
										if (i == list.currentPage) {
											if (i == 1) {
												$("#paging")
														.append(
																'<div style="color:#5f0080;background-color:#f7f7f7" class="pagenumber" id="numberone">'
																		+ i
																		+ '<div>');
											} else {
												$("#paging").append(
														'<div style="color:#5f0080;background-color:#f7f7f7" class="pagenumber">'
																+ i + '<div>');
											}
										} else {
											if (i == 1) {
												$("#paging").append(
														'<div class="pagenumber"id="numberone">'
																+ i + '<div>');
											}
											$("#paging").append(
													'<div class="pagenumber">'
															+ i + '<div>');
										}
									}
								}
								$("#paging").append(
										'<div class="pagenumber">다음<div>');
								$(document)
										.on(
												"click",
												".pagenumber",
												function() {
													$(".pagenumber").css(
															"color", "black");
													if ($(this).text() != "다음"
															&& $(this).text() != "이전") {
														$("#number1").val(
																$(this).text());
													}
													if ($(this).text() == "다음") {
														if ($("#number1").val() >= list.maxPage) {
															return false;
														}
														$("#number1")
																.val(
																		parseInt($(
																				"#number1")
																				.val()) + 1)
														page = $("#number1")
																.val();
													} else if ($(this).text() == "이전") {
														if ($("#number1").val() <= 1) {
															return false;
														}
														$("#number1")
																.val(
																		parseInt($(
																				"#number1")
																				.val()) - 1)
														page = $("#number1")
																.val();
													} else {
														page = $(this).text();
													}

													$
															.ajax({
																url : "review_list.do",
																data : {
																	"p_id" : "${list.p_id}",
																	"page" : page
																},
																success : function(
																		list) {
																	var values = []
																	values = list.list;
																	$(
																			".reviewtr")
																			.remove();
																	$
																			.each(
																					values,
																					function(
																							index,
																							value) {
																						$(
																								'#reviewtable > tbody:last')
																								.append(
																										'<tr style="text-align: center; border-bottom: 1px solid #80808096; height: 40px;"class="reviewtr"><td>'
																												+ value.r_id
																												+ '</td><td  class="reviewdetailbtn">'
																												+ value.r_title
																												+ '</td><td>'
																												+ value.m_id
																												+ '</td><td>'
																												+ value.r_adddate
																												+ '</td></tr>');
																					});
																	$(
																			".pagenumber")
																			.remove();
																	$("#paging")
																			.append(
																					'<div class="pagenumber">이전<div>');

																	for (var i = list.startPage; i <= list.endPage; i++) {
																		if (i <= list.maxPage) {
																			if (i == list.currentPage) {
																				if (i == 1) {
																					$(
																							"#paging")
																							.append(
																									'<div  style="color:#5f0080;background-color:#f7f7f7" class="pagenumber" id="numberone">'
																											+ i
																											+ '<div>');
																				} else {
																					$(
																							"#paging")
																							.append(
																									'<div style="color:#5f0080;background-color:#f7f7f7" class="pagenumber">'
																											+ i
																											+ '<div>');
																				}
																			} else {
																				if (i == 1) {
																					$(
																							"#paging")
																							.append(
																									'<div class="pagenumber" id="numberone">'
																											+ i
																											+ '<div>');
																				} else {
																					$(
																							"#paging")
																							.append(
																									'<div class="pagenumber">'
																											+ i
																											+ '<div>');
																				}

																			}
																		}
																	}
																	$("#paging")
																			.append(
																					'<div class="pagenumber">다음<div>');
																}
															})

												})
							}
						})

			})
		}
		$(function() {

			$("#minusbtn").click(
					function() {
						var price = "${list.p_price}";
						$("#productnumber").val(
								parseInt($("#productnumber").val()) - 1);
						if (parseInt($("#productnumber").val()) < 0) {
							$("#productnumber").val("0");
						}
						var str = parseInt(price)
								* parseInt($("#productnumber").val());
						str = String(str);
						$("#productprice").text(
								str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,')
										+ "원");
					})
			$("#plusbtn").click(
					function() {
						var price = "${list.p_price}";
						$("#productnumber").val(
								parseInt($("#productnumber").val()) + 1);
						var str = parseInt(price)
								* parseInt($("#productnumber").val());
						str = String(str);
						$("#productprice").text(
								str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,')
										+ "원");
					})
			$("#buybtn")
					.click(
							function() {
								if (parseInt($("#productnumber").val()) == 0) {
									alert("구매수량을 입력해주세요.");
									document.querySelector('.modal_wrap').style.display = 'none';
									document.querySelector('.black_bg').style.display = 'none';
									return false;
								}
								$("#lastprice").text($("#productprice").text());
								/* var ID ="${userID}";
								if(ID==null){
									alert("로그인이 필요한 서비스입니다.");
									location.href="";
								} */
							})

			$("input:radio[name=address]")
					.click(
							function() {

								if ($("input[name=address]:checked").val() == "기본배송지") {
									$.ajax({
										url : "findaddress.do",
										data : {
											"ID" : "GJWoon"
										},
										success : (function(result) {
											alert(result);
											$("#originaladd").val(result);
											$("#originaladd").css("display",
													"block");
										})
									})

									$("#addresstext").css("display", "none");
								} else if ($("input[name=address]:checked")
										.val() == "배송지 직접입력") {
									$("#originaladd").css("display", "none");
									$("#originaladd").val("");
									$("#addresstext").css("display", "block");
								} else if ($("input[name=address]:checked")
										.val() == "배송지 선택") {
									$("#mw_temp").css("display", "block");
									$("#addresstext").css("display", "none");
									$("#lastaddressdiv").css("display","none");
									$("#sample4_jibunAddress").val("");
									$("#sample4_postcode").val("");
									$("#sample4_detailAddress").val("");
									$("#addresstext1").val("");
								}

							})
		})
		window.onload = function() {
			function onClick() {
				if (document.getElementById('productnumber').value == 0) {
					return false;
				}
				;

				document.querySelector('.modal_wrap').style.display = 'block';
				document.querySelector('.black_bg').style.display = 'block';
			}
			function offClick() {
				document.querySelector('.modal_wrap').style.display = 'none';
				document.querySelector('.black_bg').style.display = 'none';
			}
			document.getElementById('buybtn')
					.addEventListener('click', onClick);
			document.querySelector('.modal_close').addEventListener('click',
					offClick);
		};
	</script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script>
		$(function() {
			$("#productlistbtn").click(function() {
				location.href = "productlist.do?p_type=${list.p_type}"
			})
		})

		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 참고 항목 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}

							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

							// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.

							var guideTextBox = document.getElementById("guide");
							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								guideTextBox.innerHTML = '(예상 지번 주소 : '
										+ expJibunAddr + ')';
								guideTextBox.style.display = 'block';
							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
						}
					}).open();
		}
	</script>
	<script>
		$("#reviewwritebtn").click(function() {
			$("#ajaxdiv").css("display", "block");
			$('html, body').scrollTop(document.body.scrollHeight)
		})

		$('#buybtn2').click(function() {
			
			var userID = "${userID}";
			//밑에꺼 지우기
			userID = "GJWoon";
			var p_id = ${list.p_id};
			var productcount = $("#productnumber").val();
			var bill1 = $("#lastprice").text().replace(/,/g, "");
			var bill = bill1.replace('원', '');
			if (bill == '0') {
				alert("옵션을 선택해주세요!");
				return;
			}
			
			var address =$("#addresstext1").val();
			if(address==""){
				alert("주소를 입력해주세요!");
				return false;
			}
			// getter
			var IMP = window.IMP;
			IMP.init('imp65132807');
			var money = bill;
			IMP.request_pay({
				pg : 'inicis',
				merchant_uid : 'merchant_' + new Date().getTime(),
				name : '${list.p_title}',
				amount : money,
				buyer_email : 'iamport@siot.do',
				buyer_name : '구매자이름',
				buyer_tel : '010-1234-5678',
				buyer_addr : '인천광역시 부평구',
				buyer_postcode : '123-456'
			}, function(rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					$.ajax({
						url:"productBuy.do",
						data:{"ph_count":productcount,"m_id":userID,"p_id":p_id}
					})
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '\n에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
		});

		$("#file1").change(
				function() {
					$(".select_img").css("display", "block");
					if (this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img img")
									.attr("src", data.target.result).width(200)
									.height(200);
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
		function fn_submit() {
			var form = new FormData();
			var form = new FormData($('#ajaxform')[0]);
			jQuery.ajax({
				url : "review_write.do",
				type : "POST",
				processData : false,
				contentType : false,
				data : form,
				success : function(response) {
					$("#number1").val("1");
					$("#numberone").trigger("click");
					alert("리뷰작성에 성공하셨습니다");
					$("#ajaxdiv").css("display", "none");
					$("#file1").val("");
					$("#r_title").val("");
					$("#r_content").val("");
					$(".select_img").css("display", "none");
				},
				error : function(jqXHR) {
					alert(jqXHR.responseText);
				}
			});
		}

		$(function() {
			$("#basketbtn").click(function() {
				var userID = "${userID}";
				var p_id = $
				{
					list.p_id
				}
				//지워야됨 밑에꺼
				userID = "GJWoon";
				if (userID == null || userID == "") {
					alert("로그인이 필요한 서비스입니다.");
					return false;
				} else {
					alert("실행");
					$.ajax({
						url : "insertBasket.do",
						data : {
							"p_id" : p_id,
							"id" : userID
						},
						success : function() {
							alert("장바구니에 추가되었습니다.");
						},
						error : function() {
							alert("장바구니 추가하지 마세요 그냥");
						}
					})

				}

			})
		})

		$(function() {
			$("#addresssubmitbtn").click(function() {
				var add = $("#sample4_jibunAddress").val();
				var detail = $("#sample4_detailAddress").val();
				if (add == "") {
					alert("주소를 입력해주세요");
					return false;
				}
				if (detail == "") {
					alert("상세주소를 입력해주세요.");
					return false;
				} else {
					var lastadd = add + " " + detail;
					alert(lastadd.length)
					$("#addresstext1").css('width', lastadd.length *10);
					$("#addresstext1").val(lastadd);
					$("#lastaddressdiv").css("display", "flex");
				}

			})
		})
	</script>
	<jsp:include page="footer.jsp" />

</body>
</html>
