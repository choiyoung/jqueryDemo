<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class= "box center">
		변수 선언 : var i; <br />
		자바스크립트의 변수는 데이터 타입을 정확하게 명시하지 않는다 <br />
		다만 값 할당 시 자동으로 데이터 타입이 결정된다.
	</div>
	<div class="pad"></div>
	<div class="box">
		변수의 데이터 형
		<ul>
			<li>number (숫자형) : var x = 17;</li>
			<li>string (문자열)) : var str = 'test' 혹은 var str = "text"</li>
			<li>Boolean (논리형) : var bool = true;</li>
			<li>null (널값)</li>
			<li>undefinition :  변수가 선어되었으나 특정값으로 초기화 되지 않음</li>
			<li><mark>(에러발생시) undifined 라고 콘솔에 출력됨</mark></li>
			<li>위 에러가 발생하면 지역변수 초기화 하지 않은 에러입니다.</li>
			<li>Array (배열) : var arr = ['사과','배','감','귤']</li>
		</ul>
	</div>
	<div class="pad"></div>
	<div class="box">
		전역변수 : 함수({}) 밖에서 선언하거나 var 없이 선언. 모든 함수에서 참조가능 <br />
		지역변수 : 함수({}) 안에서 선언. 해당 함수에 대해서만 참조 가능
	</div>
	<div class="box">
			<h3>출력 함수</h3>
			document.write('출력문'); -> 자바의 System.out.println("출력문"); 과 동일
	</div>
</div>