/**
 * 이벤트 기본 개념
 * 이벤트는 사용자가 키보드를 누른다든지 마우스를 클릭하는 행동을 했을 경우
 * 발생한다. 사용자가 특정한 행동을 했을 때, 발생하는 신호이다.
 * 이벤트가 발생 했을 때 이에 대해 처리할 수 있게 하려고
 * 함수를 만드는데 이러한 함수를 이벤트 핸들러 라고 한다.
 * 
 * 
 * < 이벤트 핸들러 event handler >
 * 이벤트를 기다렸다가 이벤트가 발생하게 되면 이를 감지해서 전달되어오는 이벤트
 * 타겟으로 적당한 처리를 하도록 하는 함수를 말한다.
 * 
 * < 이벤트 타겟 event target >
 * 버튼이나 스크롤바와 같이 이벤트가 발생한 컨트롤(엘리먼트)를 말한다. 
 */
// 객체 언어는 예약어를 사용하면 안됨
var eve = {
		clickDemo : function(imgPath1, imgPath2) {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<ul><li> <a href='"+imgPath1+"'> 사진 1 </a> </li>" +
					"<li> <a href='"+imgPath2+"'> 사진 2 </a> </li></ul><img>");
			$('a').click(function() {
				$('img').attr('src',$(this).attr('href'));
				return false;
			});
			
		},
		mouseoverDemo : function(imgPath1, imgPath2) {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<img src='"+imgPath1+"'>");
			/*
			 on() 이벤트가 발생하고 있는 도중에 지속족을 유지되는 형태
			 */			
			$('img').on({
				mouseover : function() {
					// attr(p) => getter, attr(p1,p2) => setter p1에 p2를 적용하라.
					$('img').attr('src',imgPath2);
				},
				mouseout : function() {
					$('img').attr('src',imgPath1);
				},
				click : function() {
					alert('클릭');
				}
			});
		},
		targetDemo : function(imgPath) {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<img src='"+imgPath+"'>");
			/*
			 on('click', 콜백 함수 ) => 영어로 치면 ~ing 진행상황이 있는 경우
			 click() => 텍스트 처리라든지 짧은 시간 발생하고 스톱되는 경우
			 */
			$('img').on('click',function(event){
				var $target =$(event.target); // jQuery 내부에서 픽스된 용어
				$target.width($target.width()/2);
				/*$target.height($target.height()/2);*/
			});
		},		
		oneDemo : function(imgPath) {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<img src='"+imgPath+"'>");
			/*
			 one() 는 event.target 과 거의 동일하나 단 1회만 실행된다는 점이 다르다.
			 */
			$('img').one('click',function(event){
				var $target =$(event.target);
				$target.width($target.width()/2);			
			});
		},
		toggleDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<button>show/hide Fast</button><span>안녕하세요</span><br/>" +
					"<button>show/hide Slow</button><span>반갑습니다.</span><br/>");
			//  :eq(n) n 은 인덱스값이며 0부터 시작한다. eq 는 equal 의 약자
			$('button:eq(0)').click(function() {
				$('span:last').toggle('fast');
			});
			$('button:eq(1)').click(function() {
				$('span:last').toggle('slow',function() {
					$(this).css('background','yellow');
				});
			});
			/*
			 toggle : show + hide , 작용 + 반작용 처럼
			 1회의 이벤트를 준 것으로 두가지 작용이 일시에 일어나는 이벤트
			 */
		},
		slideDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<button id='slideUp'>slideUp</button>" +
					"<button id='slideDown'>slideDown</button>" +
					"<button id='slideToggle'>slideToggle</button>" +
					"<p></p><div class='slideTest'></div><div class='slideTest' ></div>" +
					"<div class='slideTest' ></div><div class='slideTest'></div><div.slideTest></div>");
			$('#slideUp').click(function() {
				$('.slideTest').slideUp();
			});
			$('#slideDown').click(function() {
				$('.slideTest').slideDown('slow');
			});
			$('#slideToggle').click(function() {
				$('.slideTest').slideToggle('slow');
			});
		}
}