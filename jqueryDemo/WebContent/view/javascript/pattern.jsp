<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<h3> 모듈 패턴( 즉식 실행 함수, 람다식 ) </h3>
		(function(){ <br />
		<div class="pad"></div>
		console.log('즉시 실행'); <br />
		<div class="pad"></div>
		})();
	</div>
	<div class="box">
		<h3> 체이닝 패턴 </h3>
		메소드 호출 시 함수 내부에 명백한 반환값이 존재하지 않는다면, <br />
		객체 자신을(this) 반환시켜 메소드를 마치 하나의 문장처럼 <br />
		사용할 수 있게 작성하는 패턴.
		체이닝 패턴을 가장 잘 활용한 공개 프레임워크로는 <br />
		대표적으로 jQuery 를 들 수 있습니다. <br />
		<button onclick="alert('결과보기 : '+train.set().set().set().set().get())">체이닝 패턴</button>
	</div>
</div>
<script type="text/javascript">
	var train = (function(){
		function instance(){
			this.index = 0;
			return this;
		};// 구분자 유의
		instance.prototype = {
				get : get,
				set : set
		};
		function get(){
			return this.index;
		};
		function set(){
			this.index++;
			return this;
		};
		return new instance();
	})();
</script>