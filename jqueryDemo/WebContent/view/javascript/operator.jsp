<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<div class="box">
		<h3> 자바스크립트 연산 중 자바와 다른 for in 배열 출력 예제 </h3>
		<button onclick="func.forInDemo()"> for in 출력 예제 </button>
	</div>
	<div class="box">
		<h3>자바스크립트 배열 추가 예제</h3>
		<button onclick="func.arrayDemo()">어벤저스 성적 출력</button>
	</div>
</div>
<script type="text/javascript">
	var func = {
			forInDemo : function(){
				var arr = ['포도','망고','바나나','사과'];
				for ( var i in arr ) {
					document.write(arr[i]+'\t');
				}
			},
			/* 배열 추가 예제 */
			arrayDemo : function(){
				var avengers = [];/* 자스(자바스크립트)에서는 배열이 곧 동적 자료구조 */
				avengers.push({name: '아이언맨', kor : 80, eng : 80, math : 80});
				avengers.push({name: '헐크', kor : 70, eng : 70, math : 70});
				avengers.push({name: '캡틴', kor : 60, eng : 60, math : 60});
				
				for ( var i in avengers) {
					avengers[i].getSum = function(){
						return this.kor + this.eng + this. math;
					}
					avengers[i].getAvg = function(){
						return this.getSum()/3;
					}
				}
				var output = ' ==어벤저스 성정표 === <br/>';
				output += '이름\t국어\t영어\t수학\t총점\t<br/>';
				output += '------------------------------<br/>';
				for ( var i in avengers) {
					with(avengers[i]){
						output += name + ':\t'+ kor + '\t' + eng + '\t' + math + '\t'
						+ getSum() +'\t' + getAvg() + '<br/>'
					}
					/* 
					with 키워드는 배열에 담긴 하난의 객체를 의미한다.
					즉 예를 들어
					var iron = {name: '아이언맨', kor : 80, eng : 80, math : 80}
					이렇게 선언되어 있는 하나의 객체를
					avengers.push(iron) 이라고 줄 경우
					출력문에서 with 를 사용하지 않으면
					iron.name 이런식으로 일일이 명시해야 하기 때문에
					with를 사용한다.
					*/
				}
				document.write(output);
			}
	}
</script>