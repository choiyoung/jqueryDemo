<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class= "outbox center pad">
	<div class="box">
		<h3>자바스크립트 함수</h3>
		<div class="pad"></div>
		정의 : 특별한 기능을 수행하는 자바스크립트 코드들의 집합( { } ) <br />
		형식 :
		function 함수이름(){<br />
			명령어 구문;<br />
			[return];	// 리턴은 있을 수도 있고 없을 수도 있다. <br />
		}
	</div>
	<div class="box">
		<h3>생성자 함수</h3>
		<button onclick="alert('홍길동의 점수 합 :'+hong.getSum())">생성자 함수</button>
	</div>
	<div class="box">
		<h3>상속</h3>
		<button onclick="alert('자전거 색깔 : '+bicycleColor)">상속</button>		
	</div>
</div>
<script type="text/javascript">
	/* 생성자 함수 예제 */
	var Student = function(name, kor, eng, math){ // 생성자?
		this.name = name; // 필드 값
		this.kor = kor;   //	//
		this.eng = eng;   //    //
		this.math = math; //    //
		this.getSum = function(){// 자바의 메서드 (생성자안의 메서드)
			return this.kor +this.eng + this.math;
		}
		this.getAvg = function(){
			return this.getSum()/3;
		}
		this.toString = function(){
			return this.name+'\t'+ this.getSum()+'\t'+this.getAvg();
		}
	}
	var hong = new Student('홍길동',60,60,60);
	/* 프로토타입 예제 */
	var Vehicle = function(wheels, engine){
		this.wheels = wheels; /* 바퀴 */
		this.engine = engine; /* 엔진이 있는지 여부 */
	} 
	var bicycle = new Vehicle(2,false); /* 바퀴가 2개이고 엔진이 없다.*/
	Vehicle.prototype.color = function(color){
		return color;
	}
	var bicycleColor = bicycle.color("RED");
	console.log(bicycle);/*자전거의 상속여부를 콘솔을 통해 확인*/
</script>
