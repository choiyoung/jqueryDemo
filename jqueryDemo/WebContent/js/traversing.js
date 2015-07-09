/**
 * DOM 탐색기
 */

var traversing = {
		addDemo : function() {
			$('<div id = "bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<div class='foo'>" +
				"<p> p부분은 bgColorYello 클래스 적용을 받음 </p>" +
				"<button id='fooBtn'>클릭</button></div>");
			$('#fooBtn').click(function() {
				$('.foo').addClass('bgColorRed')
				.add('p')
				.addClass('bgColorYellow');
			});
			/*
			div 엘리먼트를 선택 후 p 엘리먼트를 추가한 후
			그 상태로 div 에 노란색 배경색을 적용하면
			p 는 변하지 않고 foo 만 변함
			 */
		},
		square6 : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<div id='first'class='foo'></div>" +
				  "<div id='second'class='foo middle'></div>" +
				  "<div id='third'class='foo middle'></div>" +
				  "<div id='forth'class='foo middle'></div>" +
				  "<div id='fifth'class='foo middle'></div>" +
				  "<div id='sixth'class='foo'></div>");
		},
		filterDemo : function() {
			this.square6();
			$('.foo').css('background','yellow')
			.addClass('testDiv')
			.filter('.middle')
			.css('background','red')
		},
		notDemo : function() {
			this.square6();
			$('.foo').css('background','yellow')
			.addClass('testDiv')
			.not('.middle')
			.css('background','red')			
		},
		sliceDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<div class='foo'></div>" +
					"<button id='btn'>슬라이스테스트</button>");
			$('.foo').addClass('.testDiv');
			$('#btn').click(function() {
				var $foo = $('.foo'); // 셀렉터를 변수로 할때는 $를 앞에 붙여주어야 한다. (문법)
				$foo.slice(2,3).css('background','yellow');
				$foo.slice(4).css('background','red');
			});
			/*
			 slice(begin, end)
			 begin 은 잘라낼 첫 엘리먼트 위치로 0부터 시작.
			 end 는 마지막 엘리먼트로 불포함
			 파라미터가 하나이면 디폴트로 끝까지 선택함
			 */
		}
}