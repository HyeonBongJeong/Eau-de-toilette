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
}

.thumbnail-img {
	width: 300px;
	height: 394px;
}
.gjw-ptitle{

font-size: 20px;
font-weight: 400;
}
.gjw-price{

font-weight: 800;
letter-spacing: 0;
    font-size: 18px;
}
.gjw-intro{
    color: #999;
}
</style>
</head>
<body>

 <jsp:include page="header.jsp"></jsp:include>

	<section>


		<div
			style="display: flex;justify-content: center;/* flex-direction: column; */width: 1050px;margin-left: 60px;">
			
			<table style="width: 1050px;">
				<c:if test="${not empty list }">
					<c:forEach var="vo" items="${list }" varStatus="s">
						<c:if test="${s.count eq '4'||s.count eq '7' }">
							<tr>
						</c:if>
						<td><a href ="product_detail.do?p_id=${vo.p_id }"><img
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
				<tr align="center" height="20">
					<td colspan="6"
						style="padding-top: 20px; color: #0AC5A8; font-family: 'Jal_Onuel';"><c:if
							test="${currentPage <= 1}"> [이전]&nbsp;
 </c:if> <c:if test="${currentPage > 1}">
							<c:url var="productlistST" value="productlist.do">
								<c:param name="page" value="${currentPage-1}" />
								<c:param name="p_tag" value="${p_tag}" />
								<c:if test="${not empty keyword}">
									<c:param name="keyword" value="${keyword }"></c:param>
								</c:if>
							</c:url>
							<a href="${productlistST}"
								style="color: #0AC5A8; font-family: 'Jal_Onuel';">[이전]</a>
						</c:if> <!-- 끝 페이지 번호 처리 --> <c:forEach var="p" begin="${startPage}"
							end="${endPage }">
							<c:if test="${p <= maxPage}">
								<c:if test="${p eq currentPage}">
									<font color="cornflowerblue" size="4"><b>[${p}]</b></font>
								</c:if>
								<c:if test="${p ne currentPage}">
									<c:url var="productlisthk" value="productlist.do">
										<c:param name="page" value="${p}" />
										<c:param name="p_tag" value="${p_tag}" />
										<c:if test="${not empty keyword}">
											<c:param name="keyword" value="${keyword }"></c:param>
										</c:if>
									</c:url>
									<a href="${productlisthk}">${p}</a>
								</c:if>
							</c:if>
						</c:forEach> <c:if test="${currentPage >= maxPage}">
 [다음]
 </c:if> <c:if test="${currentPage < maxPage}">
							<c:url var="productlistEND" value="productlist.do">
								<c:param name="page" value="${currentPage+1}" />
								<c:param name="p_tag" value="${p_tag}" />
								<c:if test="${not empty keyword}">
									<c:param name="keyword" value="${keyword }"></c:param>
								</c:if>
							</c:url>
							<a href="${productlistEND}"
								style="color: #0AC5A8; font-family: 'Jal_Onuel';">[다음]</a>
						</c:if></td>
				</tr>
			</table>
		</div>
	</section>
 <jsp:include page="footer.jsp"></jsp:include>



</body>
</html>