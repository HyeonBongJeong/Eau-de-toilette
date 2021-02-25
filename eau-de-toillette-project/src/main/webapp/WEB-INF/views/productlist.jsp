<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
section {
	display: flex;
	justify-content: center;
	width: 100%;
	    margin-top: 30px;
}

.thumbnail-img {
	width: 300px;
	height: 394px;
}

.gjw-ptitle {
	font-size: 20px;
	font-weight: 400;
}

.gjw-price {
	font-weight: 800;
	letter-spacing: 0;
	font-size: 18px;
}

.gjw-intro {
	color: #999;
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

</style>
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<section>


		<div
			style="display: flex; justify-content: center;flex-direction: column; width: 1050px; margin-left: 60px;">

			<table style="width: 1050px;">
				<c:if test="${not empty list }">
					<c:forEach var="vo" items="${list }" varStatus="s">
						<c:if test="${s.count eq '4'||s.count eq '7' }">
							<tr>
						</c:if>
						<td><a href="${pageContext.request.contextPath}/product_detail.do?p_id=${vo.p_id }"><img
								src="${pageContext.request.contextPath}/resources${vo.p_img}"
								class="thumbnail-img"></a>
							<div class="gjw-ptitle">${vo.p_title }</div>
							<div class="gjw-intro">${vo.p_intro }</div>

							<div class="gjw-price">${vo.afterPirce }원</div></td>
						<c:if test="${s.current eq '4'||s.current eq '7' }">
							</tr>
						</c:if>
					</c:forEach>
				</c:if>
	
			</table>
			<div style="display:flex;justify-content: center;margin-bottom: 50px;margin-top: 50px;">
						<c:if
							test="${currentPage <= 1}"> 
					
							
							<div class="pagenumber">이전&nbsp;</div>
 </c:if> <c:if test="${currentPage > 1}">
							<c:url var="productlistST" value="productlist.do">
								<c:param name="page" value="${currentPage-1}" />
																<c:if test="${not empty p_type}">
								<c:param name="p_type" value="${p_type}" />
								</c:if>
								<c:if test="${not empty keyword}">
									<c:param name="keyword" value="${keyword }"></c:param>
								</c:if>
							</c:url>
							<div class="pagenumber">
							<a href="${productlistST}"
								>이전</a>
								</div>
						</c:if> <!-- 끝 페이지 번호 처리 --> <c:forEach var="p" begin="${startPage}"
							end="${endPage }">
							<c:if test="${p <= maxPage}">
								<c:if test="${p eq currentPage}">
								<div style="color:#5f0080;background-color:#f7f7f7" class="pagenumber">
									${p}</div>
								</c:if>
								<c:if test="${p ne currentPage}">
									<c:url var="productlisthk" value="productlist.do">
										<c:param name="page" value="${p}" />
										<c:if test="${not empty p_type}">
								<c:param name="p_type" value="${p_type}" />
																</c:if>
										<c:if test="${not empty keyword}">
											<c:param name="keyword" value="${keyword }"></c:param>
										</c:if>
									</c:url>
									<div class="pagenumber">
								${p}
									</div>
								</c:if>
							</c:if>
						</c:forEach> <c:if test="${currentPage >= maxPage}">
						<div class="pagenumber">
 다음
 </div>
 </c:if> <c:if test="${currentPage < maxPage}">
							<c:url var="productlistEND" value="productlist.do">
								<c:param name="page" value="${currentPage+1}" />
										<c:if test="${not empty p_tag}">
								<c:param name="p_tag" value="${p_tag}" />
																</c:if>
								<c:if test="${not empty keyword}">
									<c:param name="keyword" value="${keyword }"></c:param>
								</c:if>
							</c:url>
							<div class ="pagenumber">
							<a href="${productlistEND}"
								>다음</a>
								</div>
						</c:if>
								</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>

<script>

$(function(){
	$(".pagenumber").click(function(){
		
	var value =$(this).text().trim();
	var p_type="${p_type}";
	var keyword="${keyword}"; 
		if((value!="다음")&&(value!="이전")){
			if(p_type!=null&&p_type!=""){
				location.href="productlist.do?page="+value+"&p_type="+p_type;
			}else if(keyword!=null&&keyword!=""){
				location.href="productlist.do?page="+value+"&keyword="+keyword;
			}else{
			location.href="productlist.do?page="+value;
			}
		}	
	})
})
</script>

</body>
</html>
