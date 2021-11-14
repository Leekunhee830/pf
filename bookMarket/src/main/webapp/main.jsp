<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:include page="/layout/header.jsp"/>
<link href="${pageContext.request.contextPath}/css/main.css"  rel="stylesheet" type="text/css"/>

	<div>
		<div class="main">
			<div class="slick_slider" id="slick_slider">
			  <div><img src="${pageContext.request.contextPath}/img/main01.jpg" alt="메인사진"/></div>
			  <div><img src="${pageContext.request.contextPath}/img/main02.jpg" alt="메인사진2"/></div>
			</div>
			<c:choose>
				<c:when test="${requestScope.list ==null}">
					<h1>상품 정보가 없습니다.</h1>
				</c:when>
				<c:otherwise>
					<c:forEach var="dto" items="${requestScope.list}">
						
						<div class="cell">
							<div class="cell_img">
								<a href="SelectProductView.pd?productNum=${dto.pd_num}"><img src="${pageContext.request.contextPath}/upLoadImg/${dto.pd_imgName}" alt="${dto.pd_name}"/></a>
							</div>
							<div class="cell_product_name">
								<a href="#">${dto.pd_name}</a>
							</div>
							<div class="cell_product_price">
								가격:<a href="#">${dto.pd_price}</a>원
							</div>
						</div>
					
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
			
			<div class="cell">
				<div class="cell_img">
					<a href="#"><img src="${pageContext.request.contextPath}/img/all_product_img/k1.jpg" alt="한국사문제집 사진"/></a>
				</div>
				<div class="cell_product_name">
					<a href="#">큰별쌤 최태성의 별별 한국사</a>
				</div>
				<div class="cell_product_price">
					<a href="#">13000원</a>
				</div>
			</div>

			
		</div>
	
	</div>
	
<jsp:include page="/layout/footer.jsp"/>