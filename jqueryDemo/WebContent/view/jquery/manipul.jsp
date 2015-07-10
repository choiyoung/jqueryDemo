<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<table class="tab">
			<tr>
				<td> 메소드 </td>
				<td> 설명 </td>
			</tr>
			<tr>
				<td> append(), appendTO() </td>
				<td> 엘리먼트 자식 추가 </td>
			</tr>
			<tr>
				<td> prepend(), prependTo() </td>
				<td> 엘리먼트 첫 자식을 추가 </td>
			</tr>
			<tr>
				<td> after() </td>
				<td> 해당 엘리먼트 뒤에 원하는 내용을 추가 </td>
			</tr>
			<tr>
				<td> before() </td>
				<td> 해당 엘리먼트 앞에 원하는 내용을 추가 </td>
			</tr>
			<tr>
				<td> wrap() </td>
				<td> 해당 엘리먼트 원하는 엘리먼트로 감싼다. </td>
			</tr>
			<tr>
				<td> clone() </td>
				<td> 해당 엘리먼트를 복제한다. </td>
			</tr>
			<tr>
				<td> empty() </td>
				<td> 해당 엘리먼트의 내용을 비운다. </td>
			</tr>
			<tr>
				<td> remove() </td>
				<td> 해당 엘리먼트 자체를 삭제한다. </td>
			</tr>
			<tr>
				<td> replaceWith() </td>
				<td> 해당 엘리먼트를 원하는 엘리먼트로 바꾼다. </td>
			</tr>
		</table>
	</div>
</div>

