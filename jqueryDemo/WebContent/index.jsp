<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
<div class="outbox">
	<div class="box">
		<h1>javascript</h1>	
		<ul>
			<li><a href="${context }/js/hello.do"> javascript 소개 </a></li>
			<li><a href="${context }/js/var.do">변수</a></li>
			<li><a href="${context }/js/operator.do">연산자</a></li>
			<li><a href="${context }/js/func.do">함수</a></li>
			<li><a href="${context }/js/casting.do">캐스팅</a></li>
			<li><a href="${context }/js/object.do">객체기반언어</a></li>
			<li><a href="${context }/js/bom.do">브라우저 객체 모델 [BOM]</a></li>
			<li><a href="${context }/js/dom.do">다큐먼트 객체 모델 [DOM]</a></li>
			<li><a href="${context }/js/closure.do">클로저 문법</a></li>
			<li><a href="${context }/js/pattern.do">패턴</a></li>
		</ul>
	</div>
	<div class="box">
		<h1>jQuery</h1>
		
		<h3>jQuery</h3>	
		<ul>
			<li><a href="${context }/jquery/hello.do"> Chapter01. jQuery 기본 </a></li>
			<li><a href="${context }/jquery/selector.do"> Chapter 02. 셀렉터 다루기 </a></li>
			<li><a href="${context }/jquery/attr.do"> Chapter 03. 어트리뷰트 다루기</a></li>
			<li><a href="${context }/jquery/traversing.do"> Chapter 04. DOM 탐색하기</a></li>
			<li><a href="${context }/jquery/manipul.do"> Chapter 05. DOM 조작하기</a></li>
			<li><a href="${context }/jquery/event.do"> Chapter 06. 이벤트 처리하기</a></li>
			<li><a href="${context }/jquery/ch07.do"> Chapter 07. 효과</a></li>
			<li><a href="${context }/jquery/ch08.do"> Chapter 08. 유틸리티</a></li>
			<li><a href="${context }/jquery/ch09.do"> Chapter 09. Ajax </a></li>
			<li><a href="${context }/jquery/table.do"> Chapter 10. 플러그인 사용법과 사용자 정의	플러그인 제작 </a></li>
			<li><a href="${context }/jquery/ch11.do"> Chapter 11. jQuery UI </a></li>
		</ul>
	</div>
	</div>
</body>
</html>