<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<h3> DOM (Document Object Model) : 문서객체모델</h3>
		HTML 과 XML 문서에 대한 프로그래밍 인터페이스 <br />
		문서에 대한 구조적 정보를 제공하고 문서 구조나 외양 및 내용을 <br />
		바꿀 수 있도록 프로그램에서 접근하는 방법을 제공함 <br />
		DOM 은 속성과 메소드를 가지는 객체와 <br />
		노느와 트리구조로 표련됨. 웹 페이지를 스크립트나 개발 언어로 <br />
		접근시 필수적.
		
		<h3> document 객체 </h3>
		DOM 객체의 최고 상위 객체 <br />
		window 안에 있는 HTML 문서 자체를 document 라고 함.
		<h3> element 객체 </h3>
		문서에 삽입되어 태그로 만들어진 모든 요소
		<h3> attribute 속성 </h3>
		엘리먼트가 가진 속성
		<h3> node 노드 </h3>
		객체를 상징한다. 엘리먼트도 노드이고, 애트리뷰트도 노드이며 엘리먼트 <br />
		내부의 글 내용도 모두 노드임. <br />
		엘리먼트를 요소 노드라고 칭하고, 애트리뷰트는 속성노드 <br />
		내부의 글은 텍스트 노드라고 함.
		<h3> 노드가 일반적으로 가지고 있는 메소드 </h3>
		<ol>
			<li> create : 만들다. </li>
			<li> add : 추가하다. </li>
			<li> append : 붙이다. </li>
			<li> remove : 지우다. (공간은 그대로 두고 null 로 값만 바꾼다. ) </li>
			<li> delete : 삭제하다. (공간까지 제거 즉 메모리 회수 ) </li>
			<li> set : 설정하다. </li>
			<li> get : 가져오다. </li>
			<li> child : 하나의 직속 하위 객체(노드) </li>
			<li> children : 둘 이상의 직송 하위 객체 </li>
			<li> parent : 직속 상위 객체 </li>
		</ol>
	</div>
	<div class="box">
		<h3> document.getElementById() 예제 </h3>
		<button onclick="domController.show()"> 열 기 </button>
	<div class="pad"></div>
	<div id="domBox" style="background: red; display: none">
		<button onclick="domController.hide()"> 닫 기 </button>
	</div>
	</div>
	<div class="box">
		 <h3>document.getElementsByTagName() 예제</h3>
		 <button onclick="domController.selectByTagName()">span 엘리먼트 선택하기</button>
		 <div>
		 	<span>1번</span>
		 	<span>2번</span>
		 	<span>3번</span>
		 	<span>4번</span>
		 	<span>5번</span>
		 	<span>6번</span>		 	
		 </div>
	 </div>
	 <div class="box">
	 <h3>document.getElementsByName() 예제</h3>
	 <button onclick="domController.selectByName()">span 엘리먼트 선택하기</button>
		 <div>
		 	<span name='bbb'>1번</span>
		 	<span >2번</span>
		 	<span name='aaa'>3번</span>
		 	<span >4번</span>
		 	<span name='bbb'>5번</span>
		 	<span >6번</span>
		 </div>
	 </div>
	 <div class="box">
	 	<h3>동적으로 HTML 객체(노드) 만들기</h3>
	 	<button onclick="domController.createTag1()">객체만들기1</button>
	 	<button onclick="domController.createTag2()">객체만들기2</button>
	 </div>
	 
</div>
<script src="${context }/js/dom.js"></script>

