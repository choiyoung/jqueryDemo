<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box center">
		<h3> 자바스크립트는 객체<mark>기반</mark>언어이다. </h3>
		* 자바는 객체 지향 언어이다. <br />
		두 언어간의 차이점은 객체를 표현하는데 있어서 클래스(객체의 정의)와 <br />
		인스턴스(객체의 실체)를 정확히 구분하나 <br />
		객체 기반언어에서는 이의 구별 없이 단순히 객체라고 통합하여 말함
		<div class="pad"></div>
		<h3> 객체 구분 </h3>
		<ul>
			<li> 기본객체 : String, Math, Date, Array</li>
			<li> 내장객체 : 브라우저객체(BOM), 다큐번트객체(DOM)</li>
			<li> 사용자 정의 객체 </li>
		</ul>
		<h3> 브라우저객체(BOM : Browser Object Model)의 종류</h3>
		웹 브라우저는 최초 HTML 문서를 로드 할 때 HTML 문서와 관계없이 
		5개의 브라우저 객체를 생성한다.
		<ol>
			<li>Window</li>
			<li>Document</li>
			<li>Location</li>
			<li>Navigator</li>
			<li>History</li>
		</ol>
		<img src="${context }/image/bom.png" alt="" />
		<img src="${context }/image/bom2.png" alt="" />
		<img src="${context }/image/bom3.png" alt="" />
		<h3> 브라우저 객체 (Window 객체)</h3>
		브라우저 창이 열릴 때마다 하나씩 만들어지는 객체로서 <br />
		브라우저 창 안에 존재하는 모든 요소(객체)들의 상위 객체
		Window.alert() 와 같이 사용해야 하나, Window 를 생략하고 사용 가능하다.
	</div>	
</div>