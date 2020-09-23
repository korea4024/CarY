<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="text-left p-5">
	<h3 class="text-info">${param.pspec}</h3>
	<div class="row mt-4">
		<c:if test="${hitList eq null or empty hitList}">
			<div class="col-md-3">
				<h3>상품 준비중..</h3>
			</div>
		</c:if>
		<c:if test="${hitList ne null and not empty hitList}">
		<c:forEach var="pd" items="${hitList}" varStatus="st" begin="0" end="3">
		<!-- varStatus 속성을 이용하면 반복문의 상태정보를 활용 할 수 있다. 
			index : 인덱스 번호
			count : 반복문 횟수 정보
		-->
			<div class="col-md-3">
				<%-- ${st.index} / ${st.count} --%>
				<a href="prodDetail?pnum=${pd.pnum}"><img src="images/${pd.pimage1}" class="rounded img-fluid" style="height:250px"></a>
				<br><br>
				<h4>${pd.pname}</h4>
				<del>
					<fmt:formatNumber value="${pd.price}" pattern="###,###" />
				</del>원<br>
				<span class="text-primary">
					<fmt:formatNumber value="${pd.saleprice}" pattern="###,###" />
				</span>원<br>
				<span class="text-danger">${pd.percent}%할인</span>원<br>
				<span class="badge badge-success">${pd.point}</span>POINT<br>
			</div><!-- col-md-3 end -->
			<c:if test="${st.count mod 4 eq 0}">
				</div> <!-- row를 끝내고 새로운 row를 시작하자. -->
				<div class="row mt-4">
			</c:if>
		</c:forEach>
		</c:if>
	</div> <!-- row end -->
</div>









