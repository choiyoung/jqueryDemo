<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<h3>jQuery</h3>
		소프트웨어를 제작할 때 자주 사용되는 기능을 쉽게 사용할 수 있도록 <br />
		모아 놓은 자바스크립트 라이브러리(도서관) <br />
		복잡한 상호작용을 하는 자바스크립트를 쉽게 추가할 수 있도록 <br />
		해주면서 다양한 웹 브라우저에서 동작하도록 만들어 준다. <br />
		<h3> 사용방법 </h3>
		<ul>
			<li><mark>CDN 호스트를 통해 jQuery 를 불러오는 방법</mark></li>
			<li>인터넷이 접속된 곳이라면 어디에서든지 사용할 수 있다는 장점이있으나,</li>
			<li>인터넷을 사용할 수 없는 곳에서는 사용 불가</li>
			<li>"//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" 를 호출</li>
		</ul>
		<div class="pad"></div>
		<ul>
			<li><mark>파일을 설치하여 사용하는 방법</mark></li>
			<li><a href="http://jquery.com">http://jquery.com</a>에서 다운로드</li>
			<li>1.x 버전과 2.x 버전이 있음</li>
			<li>두 버전의 차이점은 2.x 버전을 사용할 경우 <br />
				IE8 이하 버전에서는 원활이 작동하지 않는다. <br />
			</li>
			<li>compressed(압축) 버전과 uncompressed(비압축) 버전</li>
			<li>두 버전의 차이점은 압추과 용량.</li>
			<li>compress 버전이 압축되어 있기 때문에 용량이나 속도면에서는 더 좋다.</li>
		</ul>		
		<h3> jQuery 는 대소문자를 구분한다.</h3>
		<h3> 함수, 문서의 준비 및 명령어 시작 조건</h3>
		<h4> $(document).ready(function(){...}); </h4>
		<h3> jQuery 함수 </h3>
		<h4> jQuery() 또는 $() 을  말하며, DOM 에서 에리먼트를 선택하기 <br />
			위해 사용한다. 이 함수는 jQuery 래퍼(wrapper)라고도 불리며, <br />
			메소드의 매개변수로 CSS 셀렉터 표현식을 문자열 형태로 기술한다. <br />
			DOM 을 탐색하여, 맞는 엘리먼트를 반환하고 결과값으로 객체를 언어준다. <br />
			이렇게 얻어진 객체를 jQuery  확장 객체 집합 또는 jQuery  객체라고 부른다. 
		</h4>
		<div class="pad"></div>
		<h3> 자바스크립트에서 객체 </h3>
		<h4> 객체는 기능 (메소드)과 속성(어트리뷰트) 에 덛붙여 <mark>이벤트</mark>로 구성된다. </h4>
		기능과 속성은 자바 객체의 기본 정의와 일저부분 동일하고 <br />
		이벤트는 <mark>외부에서 가해지는 사건</mark> 을 뜻한다.
		<div class="pad"></div>
		<h3> 콜백 함수 </h3>
		<h4> 개발자가 지정해 놓으면 <mark>이벤트에 따라</mark> 자동으로 호출되는 함수</h4>
		<h3> $ 의 의미 </h3>
		<h4> $는 jQuery 의 별칭으로 사용하는 기호이다. </h4>
		$ 기호를 사용하여 () 안에 있는 매개변수로 셀렉터를 기술한 후 <br />
		jQuery 객체집합 ( 배열 = 컬렉션 ) 을 얻어낼 수 있다.
	</div>
	<div class="box">
		<h1>Chapter 01. jQuery 기본</h1>
		<ol>
			<li><button id="helloNo1">페이지가 렌더링된 후 CSS 변경하기</button></li>		
		</ol>
		<div id="hello">
			<h3>Hello jQuery !!</h3>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {// ready 는 메서드 함수밑의 함수는 메서드라고 함
		$('#helloNo1').click(function() {
			hello.render();// 아직 만들지 않은 자스 객체와 메소드
		});	
	});//로딩이 끝나면 콜백함수를 실행하라는 함수
	var hello = { // 객체 초기화 
		render : function() {
			$('div#hello').addClass('fontColorRed');// 폰트 색 생성 color.css 에서 생성함
		}
	}
</script>




