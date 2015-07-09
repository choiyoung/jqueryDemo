<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="context" value="<%=request.getContextPath() %>"></c:set>
<style>@IMPORT url("${context}/css/common.css");</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<div class="outbox center pad">
	<h1> 브라우저 객체 </h1>
	<h3>1. Window 객체</h3>
	<div class="box">		
		<h3>[1] 대화창</h3>
		<div class="pad box">
			<ul>
				<li>
					경고창 <button onclick="javascript:windowController.alert()">경고창</button>
				</li>
				<li>
					확인창 <button onclick="javascript:windowController.confirm()">확인창</button>
				</li>
				<li>
					입력창(프롬프트) <button onclick="javascript:windowController.prompt()">입력창</button>
				</li>
			</ul>
		</div>
		
		<div class="pad"></div>
		<h3>[2] 팝업창</h3>
		<div class="box pad">
			<ul>
				<li>
					open("문서명","창이름","속성") // 새창열기
					<button onclick="windowController.open()">팝업창</button>
				</li>
				<li>
					close() // 창 닫기, 거의 사용 하지 않음
				</li>
			</ul>
		</div>
	</div>
	<h3>2. History 객체</h3>
		<div class="box pad">
			<button onclick="windowController.f5()">새로고침</button>
			<button onclick="windowController.goBack()">뒤로가기</button>
		</div>
	<h3>3. Location 객체</h3>
	<div class="box pad">
		<button onclick="windowController.href()">홈으로</button>
	</div>
	<h3>4. 팝업창으로 관리자 체크</h3>
	<div class="box">
		<button onclick="windowController.checkAdmin()">관리자 체크</button>
	</div>
</div>
<script type="text/javascript">
	var windowController = {
			alert : function(){
				alert('경고창은 메시지만 전달');
			},
			confirm : function(){
				confirm('컨펌창은 확인/취소 버튼이 존재');				
			},
			prompt : function(){
				alert(prompt('입력창은 값 입력 가능'))
			},			
			open : function(){
				open('${context }/member/loginForm.do','로그인창','width=500,height=300,top=200,left=200');
			},
			href : function(){
				location.href = '${context}/index.do';
			},
			f5 : function(){
				history.go(0); /* 새로고침 */
			},
			goBack : function(){
				history.go(-1); /* 뒤로가기 */
			},
			checkAdmin : function() {
				var isAdmin = confirm('관리자 입니까?');
				if (!isAdmin) {
						document.write('일반사용자입니다.');
				}else{
					var password = prompt('관리자 비번을 입력하세요.');
					if (password == 1234) {
						document.write('관리자 인증되었습니다.');
					} else {
						document.write('관리자 비번이 틀렸습니다.');
					}
				}
			}
	}
</script>