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
				<td> 이벤트 </td>
				<td> 내용 </td>
			</tr>
			<tr>
				<td> click() <button id ="clickDemo">샘플</button> </td>
				<td> 마우스 클릭 </td>
			</tr>
			<tr>
				<td> mouseover() <button id ="mouseoverDemo">샘플</button> </td>
				<td> 마우스가 스쳐 지나갈때 </td>
			</tr>
			<tr>
				<td> mouseout() </td>
				<td> 마우스가 특정 영역 밖으로 나갈 때 </td>
			</tr>
			<tr>
				<td> dbclick() </td>
				<td> 더블 클릭 </td>
			</tr>
			<tr>
				<td> dragdrop() </td>
				<td> 드래그 앤 드랍 </td>
			</tr>
			<tr>
				<td> mousedown() </td>
				<td> 마우스 버튼 눌렀을때 </td>
			</tr>
			<tr>
				<td> mouseup() </td>
				<td> 마우스 버튼 눌렀다가 놓았을 때 </td>
			</tr>
			<tr>
				<td> submit() </td>
				<td> 폼에서 데이터를 보낼 때 </td>
			</tr>
			<tr>
				<td> select() </td>
				<td> 폼에서 입력양식의 한 필들르 선택햇을 때 </td>
			</tr>
			<tr>
				<td> blur(), focus() </td>
				<td> 폼에서 포커스가 다른곳을 이동했을 때 </td>
			</tr>
			<tr>
				<td> keydwon(), keypress(), keyup() </td>
				<td> 키보드에서 키를 입력, 누를 때, 뗐을 때 </td>
			</tr>
			<tr>
				<td> event.target <button id ="targetDemo">샘플</button> </td>
				<td> 그림 클릭시 </td>
			</tr>
			<tr>
				<td> one() <button id ="oneDemo">샘플</button> </td>
				<td> 일회성 이벤트 </td>
			</tr>
			<tr>
				<td> toggle() <button id ="toggleDemo">샘플</button> </td>
				<td> 토글 </td>
			</tr>
			<tr>
				<td> slide() <button id ="slideDemo">샘플</button> </td>
				<td> 토글 </td>
			</tr>			
		</table>
	</div>
</div>
<script src="${context }/js/event.js"></script>
<script type="text/javascript">
	$(function() {
		$('#clickDemo').click(function() {eve.clickDemo('${context}/image/album-af.jpg','${context}/image/album-ag.jpg');});
		$('#mouseoverDemo').click(function() {eve.mouseoverDemo('${context}/image/but1.gif','${context}/image/but2.gif');});
		$('#targetDemo').click(function() {eve.targetDemo('${context}/image/c.jpg');});
		$('#oneDemo').click(function() {eve.oneDemo('${context}/image/c.jpg');});
		$('#toggleDemo').click(function() {eve.toggleDemo();});
		$('#slideDemo').click(function() {eve.slideDemo();});
	});
</script>

