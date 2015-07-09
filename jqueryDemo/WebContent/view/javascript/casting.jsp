<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<button onclick="grade.total()">총점구하기</button>
	</div>
	<div class="box">
		<button onclick="grade.hakbun()">문자형 변화(숫자 => 문자)</button>
	</div>
	<div class="box">
		<button onclick="grade.bool()">불린형 변환(불린 => 숫자)</button>
	</div>
</div>
<script type="text/javascript">
	var grade={
			total: function() {
				var scores={
						'국어' : Number(prompt('국어점수')),/* 자스 숫자형 변환 */
						'영어' : Number(prompt('영어점수')),
						'수학' : Number(prompt('수학점수')),
						'과학' : Number(prompt('과학점수'))						
				};
				var total = 0;
				for ( var i in scores) {
					total += scores[i];
				}
				document.write('총점 : ' + total);
			},
			hakbun : function() {
				var val = 100;
				val = String(val);
				alert('val 의 타입 : '+typeof val + '    ');
				/* 
				typeof 키워드는 입력값의 타입을 알려주는 반환값으로
				number, string, boolean, object, function, undefined 가 있다.
				*/
			},
			bool : function() {
				var val = true;
				val = Number(val);
				alert('val : '+val+'  ');
				/*
				boolean 은 true 는 1, false 는 0 반환
				*/
			}
	}
</script>


