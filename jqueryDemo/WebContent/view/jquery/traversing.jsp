<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<h1> Chapter04. DOM 탐색기</h1>
		<table class="tab">
			<tr>
				<td> 메소드</td>
				<td> 기능</td>
			</tr>
			<tr>
				<td> add() <button id ="addDemo">샘플</button> </td>
				<td> 엘리먼트를 추가하다. </td>
			</tr>
			<tr>
				<td> filter() <button id ="filterDemo">샘플</button> </td>
				<td> 조건에 맞는 엘리먼트 얻기 </td>
			</tr>
			<tr>
				<td> not() <button id ="notDemo">샘플</button> </td>
				<td> 조건식을 만족하지 않는 엘리먼트 </td>
			</tr>
			<tr>
				<td> slice() <button id ="sliceDemo">샘플</button> </td>
				<td> 원하는 엘리먼트만 반환</td>
			</tr>
			<tr>
				<td> children() </td>
				<td> 자식 엘리먼트 전부 </td>
			</tr>
			<tr>
				<td> contents() </td>
				<td> 엘리먼트 내용 변경 </td>
			</tr>
			<tr>
				<td> next() </td>
				<td> 뒤에 있는 형제 엘리먼트 : 하나 </td>
			</tr>
			<tr>
				<td> nextAll() </td>
				<td> 엘리먼트 뒤에 있는 모든 엘리먼트 : 전부 </td>
			</tr>
			<tr>
				<td> prev() </td>
				<td> 엘리먼트 앞에 있는 형제 엘리먼트 </td>
			</tr>
			<tr>
				<td> prevAll() </td>
				<td> 엘리먼트 앞에 있는 모든 형제 엘리먼트 </td>
			</tr>
			<tr>
				<td> siblings() </td>
				<td> 엘리먼트와 같은 노드 위치의 모든 엘리먼트 </td>
			</tr>
			<tr>
				<td> parents() </td>
				<td> 모든 부모 엘리먼트 </td>
			</tr>
			<tr>
				<td> preent() </td>
				<td> 인접해 있는 가장 가까운 부모 엘리먼트 </td>
			</tr>
			<tr>
				<td> find() </td>
				<td> 셀렉트된 엘리먼트 중에서 자손 엘리먼트 </td>
			</tr>
			<tr>
				<td> map() </td>
				<td> 셀렉트 된 엘리먼트 내용을 변경 </td>
			</tr>
			<tr>
				<td> end() </td>
				<td> 메소드 체이닝 중에 최초 엘리먼트로 돌아가기 </td>
			</tr>			
		</table>

	</div>
</div>
<script src="${context }/js/traversing.js"></script>
<script type="text/javascript">
	$(function() {
		$('#addDemo').click(function() {traversing.addDemo();});
		$('#filterDemo').click(function() {traversing.filterDemo();});
		$('#notDemo').click(function() {traversing.notDemo();});
		$('#sliceDemo').click(function() {traversing.sliceDemo();});
		
	});	
</script>
