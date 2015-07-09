<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box center">
	자바스크립트(javascript)는 <mark>객체 기반</mark>의 스크립트 프로그래밍 언어이다. <br />
	자바스크립트는 본래 네스케이프 사의 브랜던 아이크가 처음에는 <br />
	모카라는 이름으로, 나중에는 LiveScript 라는 이름으로 개발하엿다. <br />
	후에 java가 1994 년에 개발되고, 객체지향 개념이 등장하자 <br />
	javascript 라는 이름으로 객체기반 프로그래밍 언어로 업그레이드 되었다.
	</div>
	<div class="pad"></div>
	<div class="box">
		<h3>자바스크립트의 특징</h3>
		<ul>
			<li>서버가 아닌 클라이언트에서 작동하는 인터프리터 언어</li>
			<li>객체 기반의 언어</li>
			<li>HTML 문서에 삽입 혹은 링크로 연결</li>
			<li>변수의 타입을 지정할 필요가 없음( var 로 통일)</li>
		</ul>
	
	</div>
	<div class="pad"></div>
	<div class="border pad">
	 <h3>자바스크립트의 구성</h3>
	 <ul>
	 	<li>자바스크립트의 기본 문법
	 		<ul>
	 			<li>변수</li>
	 			<li>제어문</li>
	 			<li>함수</li>
	 		</ul>
	 	</li>	 	
	 	<li>클라이언트 측 자바스크립트
	 		<ul>
	 			<li>객체제어(윈도우, 도큐먼트)</li>
	 			<li>이벤트 핸들링</li>
	 		</ul>
	 	</li>
	 	<li>서버와 데이터 통신을 위한 자바스크립트</li>
	 </ul>

	</div>
	<div class="border pad">
		HTML 은 XML 이라는 문서 작성 방법에 따라 작성된다.
		XML 기술법에 주목할 점은 구성 요소 이며 다음과 같다.
		<ul>
			<li>요소(Element : 요소) 내용을 구성하는 것으로, 태그로 표현된다.</li>
			<li>속성(Property : 프로퍼티)요소가 가진 고유의 특징(객체의 특징)</li>
			<li>속성(Attribute : 애크리뷰트) 요소에 대한 추가적인 속성(HTML 요소의 속성)</li>
		</ul>
	</div>
	<div class="border pad">
		HTML 이 문서의 형식을 정의 한다면 CSS 는 문서의 레이아웃을 결정한다. <br/>
		CSS 선택자(셀렉터)는 다음과 같다.
		
	</div>
	<div class="pad"></div>
	<table id="helloTab" class="center">
			<tr class="border bgColorYellow">			
				<th class="border"> 패턴 </th>
				<th> 대상 </th>
			</tr>
			<tr>
				<td> * </td>
				<td> 모든 대상 </td>
			</tr>
			<tr>
				<td> #id </td>
				<td> id 가 id 인 엘리먼트 </td>
			</tr>
			<tr>
				<td> .class </td>
				<td> class 가 class 인 엘리먼트 </td>
			</tr>
			<tr>
				<td> E </td>
				<td> 태그이름이 E 인 엘리먼트 </td>
			</tr>
			<tr>
				<td> E F </td>
				<td> 태그이름이 E 이면서 하위 태그가 F 인 엘리먼트 </td>
			</tr>
			<tr>
				<td> E > F </td>
				<td> E 태그의 직속 자식이 F 엘리먼트 </td>
			</tr>
			<tr>
				<td> E:first-child </td>
				<td> 부모 엘리먼트 기준으로 첫번째 자식 엘리먼트 </td>
			</tr>
			<tr>
				<td>E:active </td>
				<td> 엘리먼트가 활성화 되었을 때 </td>
			</tr>
			<tr>
				<td>E:hover </td>
				<td> 엘리먼트 위로 마우스가 올라 갔을 때 </td>
			</tr>
			<tr>
				<td> E:focus </td>
				<td> 엘리먼트에 커서가 위치 할때 </td>
			</tr>
			<tr>
				<td> E + F</td>
				<td> E 엘리먼트 바로 옆의 엘리먼트 </td>
			</tr>
			<tr>
				<td> E[A] </td>
				<td> 속성이 A로 설정된 E 엘리먼트 </td>
			</tr>
			<tr>
				<td> E[A=V]</td>
				<td> 속성 A 의 값이 V 인 모든 엘리먼트 </td>
			</tr>
			<tr>
				<td> E[A^=V] </td>
				<td> 속서 A의 값이 V로 시작하는 모든 엘리먼트 </td>
			</tr>
		</table>
</div> <!-- oubbox END -->
<script type="text/javascript">
	$(function(){
		console.log('hello Javascript');
		$('#helloTab tr td').addClass('border');
	});
</script>