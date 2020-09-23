<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String myctx = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVCWeb</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="jumbotron text-center" style="margin-bottom: 0">
			<h1>마이홈 페이지</h1>
			<p>
				웰컴 투 마이홈 페이지
				<%-- ${sessionScope.loginUser.name} --%>
			</p>
		</div>
		<!-- navbar ------------------------------------------------------------- -->
		<!-- Grey with black text -->
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="<%=myctx%>/index.do">홈</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=myctx%>/signup.do">회원가입</a></li>

				<c:if test="${loginUser eq null}">
					<!-- eq 연산자 : (equals) == 와 같다. -->
					<li class="nav-item"><a class="nav-link"
						href="#myLoginModal" data-toggle="modal">로그인</a></li>
				</c:if>

				<c:if test="${loginUser ne null}">
					<!-- ne 연산자 : (not equals) != 와 같다. -->
					<li class="nav-item bg-danger"><a class="nav-link" href="#">${sessionScope.loginUser.userid}
							님 로그인중..</a></li>

					<li class="nav-item"><a class="nav-link"
						href="<%=myctx%>/logout">Logout</a></li>
				</c:if>
				<li class="nav-item"><a class="nav-link"
					href="<%=myctx%>/board/write">Board Write</a></li>

				<li class="nav-item"><a class="nav-link"
					href="<%=myctx%>/board/list.do">Board List</a></li>

				<li class="nav-item"><a class="nav-link"
					href="<%=myctx%>/admin/member.do">Users[Admin]</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=myctx%>/user/cartList">Cart</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=myctx%>/test.do">myBatis 테스트</a></li>

				<li class="nav-item"><a class="nav-link"
					href="<%=myctx%>/admin/prodForm.do">상품등록</a></li>
				<li class="nav-item"><a class="nav-link"
					href="<%=myctx%>/admin/prodList.do">상품목록</a></li>
			</ul>
		</nav>
		<!-- -------------------------------------------------------------------- -->
		<div class="container" style="margin-top: 2px; margin-bottom: 30px">
			<div class="row" style="height: auto">
				<div class="col-md-12 text-center" style="overflow: auto">