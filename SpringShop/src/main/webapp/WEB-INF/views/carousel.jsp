<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 컨텍스트명을 myctx 변수에 할당해 주자. ----------------------------->
<c:set var="myctx" value="${pageContext.request.contextPath}" />
<!-- --------------------------------------------------------- -->

<style>
	.carousel-inner {
		width: 100%;
		max-height: 600px;
		margin: 0 auto;
	}
</style>

<div class="col-md-12" style="padding:0; margin:0">
	<div id="demo" class="carousel slide" data-ride="carousel"
		data-interval="1">

		<!-- data-interval 속성을 주면 자동으로 슬라이딩이 된다. -->
		<!-- Indicators 바모양 태그 -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<!-- active 가 들어가야 동작. 아래 처음 시작하는 이미지에도 active -->
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img style="width: 100%" src="${myctx}/images/note1.PNG" alt="노트북1">
			</div>
			<div class="carousel-item">
				<img style="width: 100%" src="${myctx}/images/note2.PNG" alt="노트북2">
			</div>
			<div class="carousel-item">
				<img style="width: 100%" src="${myctx}/images/note3.PNG" alt="노트북3">
			</div>
			<div class="carousel-item">
				<img style="width: 100%" src="${myctx}/images/note4.PNG" alt="노트북4">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>

	</div>
</div>