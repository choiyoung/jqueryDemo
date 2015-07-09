<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<h3> 어트리뷰트란 ? </h3>
		<h4> 어트리뷰트(attribute) 는 요소에 부가적인 정보를 첨가하고자 할 때 사용한다. </h4>
		
		<div class="pad"></div>
		<h3> 기본 어트리뷰트를 다루기 위한 메소드 </h3>
		<table class="tab">
			<tr>
				<th> 메소드</th><th> 설명 </th>
			</tr>
			<tr>
				<td>attr() <button id="attrDemo">샘플</button></td><td>엘리먼트의 어트리뷰트 값을 가죠오고 설정한다.</td>
			</tr>
			<tr>
				<td>removeAll()</td><td>엘리먼트의 어트리뷰트 값을 제거한다.</td>
			</tr>
		</table>
		<div class="pad"></div>
		<h3> 클래스 어트리뷰트를 다루기 위한 메소드 </h3>
		<table class="tab">
			<tr>
				<th>메소드</th><th>설명</th>
			</tr>
			<tr>
				<td>addclass()</td><td>스타일 입히기</td>
			</tr>
			<tr>
				<td>removeClass()</td><td>스타일 제거한다.</td>
			</tr>
			<tr>
				<td>toggleClass()</td><td>엘리먼트에 해당 클래스가 있으면 제거, 없으면 추가</td>
			</tr>
			<tr>
				<td>hasClass()</td><td>엘리먼트에 클래스 존재 여부 확인</td>
			</tr>
		</table>
		<h3> DOM 대체를 위한 메소드 </h3>
		<table class="tab">
			<tr>
				<th>메소드</th><th>설명</th>
			</tr>
			<tr>
				<td>html() <button id="htmlDemo">샘플</button></td><td>엘리먼트 태그 내부의 HTML 콘텐츠를 얻어온다.</td>
			</tr>
			<tr>
				<td>html(CONTENT)</td><td>엘리먼트 태그 내부의 HTML 콘텐츠를 변경한다.</td>
			</tr>
			<tr>
				<td>text() <button id="textDemo">샘플</button></td><td>엘리먼트에 텍스트를 뿌린다. </td>
			</tr>
			<tr>
				<td>val()</td><td>form 엘리먼트에서 value 값을 가져온다.</td>
			</tr>
			<tr>
				<td>val(CONTENT) <button id="valDemo">샘플</button></td><td>form 엘리먼트에서 value 값을 설정한다.</td>
			</tr>
		</table>
		<h1> Chapter 03. 어트리뷰트 다루기 </h1>
		<ol>
			<li><button id="attributeNo1">엘리먼트에 어트리뷰트값 설정</button></li>
			<li></li>
			<li></li>
		</ol>
	</div>
</div>
<script src="${context }/js/attr.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#attrDemo').click(function() {attr.attrDemo('${context}/image/Jellyfish.jpg');});
		$('#htmlDemo').click(function() {attr.htmlDemo();});
		$('#textDemo').click(function() {attr.textDemo();});
		$('#valDemo').click(function() {attr.valDemo();});
		
	});
</script>