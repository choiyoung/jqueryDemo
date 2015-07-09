<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad" id="selectorOutBox">
	<div class="box" id="selectorBox">
		<h3> 셀렉터란 ? </h3>
		<h4> 셀렉터(selector) 는 문서 내에서 원하는 엘리먼트를 쉽게 식별하고 <br />
			이를 추출하기 위해서 jQuery 에서 제공하는 기술 
		</h4>
		<h1> Chapter 02. 셀렉터 다루기 </h1>
		<ol>
			<li><button id="selectorNO1"> 엘리먼트에 접근해서 스타일 지정하기 </button></li>
			<li><button id="selectorNO2"> 한번에 다양한 엘리먼트에 접근하여 갯수와 텍스트 얻기 </button></li>
			<li><button id="selectorNO3"> 조건에 만족하는 짝수와 홀수에 위치한 엘리먼트 구별하기 </button></li>
			<li><button id="selectorNO3_1">  n번째로 일치하는 엘리먼트 스타일 적용 </button></li>
			<li><button id="selectorNO4"> 로그인 폼 정의 </button></li>
			<li><button id="selectorNO5"> 다중 체크박스 </button></li>
			<li></li>
		</ol>
	</div>
		
	
	
</div>
<script src="${context }/js/selector.js">// 받는 script

</script>
<script type="text/javascript">// 내부 코딩
	$(document).ready(function() {
		$('#selectorNO1').click(function(){selector.no1();})
		$('#selectorNO2').click(function(){selector.no2();})
		$('#selectorNO3').click(function(){selector.no3();})
		$('#selectorNO3_1').click(function(){selector.no3_1();})
		$('#selectorNO4').click(function(){selector.no4();})
		$('#selectorNO5').click(function(){selector.no5();})
	})
</script>





