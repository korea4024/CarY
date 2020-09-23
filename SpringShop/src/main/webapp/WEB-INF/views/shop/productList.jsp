<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/top.jsp" />
<!-- 테이블 정렬 플러그인 참조  (제이쿼리를 먼저 참조 후 사용 가능)------------------ -->
<script type="text/javascript" src="../js/stupidtable.min.js" ></script>
<!-- --------------------------------------------------------------- -->
<script>
        $(()=> {
            $('#productTable').stupidtable();
        })
        
</script>
<div class="text-left p-5">
	<h1 class="text-center">Product List [Admin]</h1>
	<table id="productTable" class="table table-striped mt-4">
		<thead>
			<tr class="bg-warning">
				<th data-sort="int">상품 번호</th>
				<th>카테고리</th>
				<th data-sort="string">상품명</th>
				<th data-sort="int">정가/판매가</th>
				<th data-sort="string">제조사</th>
				<th>편집 | 삭제</th>
			</tr>
		</thead>
		<tbody>
			<!-- ---------------------------------- -->
			<c:if test="${prodList eq null or empty prodList}">
				<tr>
					<td class="bg-danger" colspan="6"><b>데이터가 없습니다.</b></td>
				</tr>
			</c:if>
			<c:if test="${prodList ne null and not empty prodList}">
			<c:forEach var="pL" items="${prodList}" varStatus="st">
			<tr id="pd${st.count}">
				<td>${pL.pnum}</td>
				<td><%-- ${pL.upCg_code} - ${pL.downCg_code} --%>
					${pL.allCategory}
				</td>
				<td>
					<a href="../prodDetail.do?pnum=${pL.pnum}">
					<img style="width:125px" src="../images/${pL.pimage1}"></a>	
					<h4 class="text-center">${pL.pname}</h4>
				</td>
				<td>
					${pL.price}<br>
					<span class="text-danger">${pL.saleprice}</span><br>
					<span class="badge badge-info">${pL.percent}%할인</span>
				</td>
				<td>${pL.pcompany}</td>
				<td><a><b>편집</a> | <a href="#pd${st.count}" onclick="del('${pL.pnum}')">삭제</a></b></td>
										<!-- 책갈피 개념 -->
			</tr>
			</c:forEach>
			</c:if>
			<!-- ---------------------------------- -->
		</tbody>
	</table>
	<table class="table">
		<tr>
			<td style="width:70%">pageNavi</td>
			<td style="width:30%">총 상품 갯수 : <b>${totalCount}개 </b></td>
		</tr>
	</table>
</div>
<!-- 삭제 또는 수정 폼 form 시작 ------------------ -->
<form name="pf" id="pf">
	<input type="hidden" name="pnum" id="pnum">
</form>
<!-- --------------------------------------- -->
<script>
	function del(pnum) {
		var yn = confirm(pnum+"번 상품을 정말 삭제 할까요?");
		if(!yn) return;
		pf.pnum.value = pnum;
		pf.action = "prodDel.do"
		pf.method = "POST";
		pf.submit();
	}
</script>
<jsp:include page="/foot.jsp" />