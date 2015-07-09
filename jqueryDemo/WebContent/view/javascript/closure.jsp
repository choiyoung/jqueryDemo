<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<a id="size-12">폰트 사이즈 12</a> <br />
		<a id="size-20">폰트 사이즈 20</a> <br />
		<a id="size-30">폰트 사이즈 30</a> <br />
	</div>
</div>
<script type="text/javascript">
	var makeSizer = function(size){
		return function(){
			document.body.style.fontSize = size+'px';
		};// 클로저 문법을 할 때는 return function(){} 끝에 반드시 세미콜론( ; )
	}
	var size12 = makeSizer(12);
	var size20 = makeSizer(20);
	var size30 = makeSizer(30);
	document.getElementById('size-12').onclick = size12;
	document.getElementById('size-20').onclick = size20;
	document.getElementById('size-30').onclick = size30;
</script>