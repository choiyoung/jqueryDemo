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
			$('.foo').addClass('testDiv');
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
		},		
		siblingsDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<ul><li>One</li><li>Two</li><li class='bgColorYellow'>Three</li><li>Four</li></ul>" +
					"<ul><li>Five</li><li>Six</li><li>Seven</li></ul>" +
					"<ul><li>Eight</li><li class='bgColorYellow'>Nine</li><li>Ten</li><li>Eleven</li></ul>" +
					"<p>찾은 형제 엘리먼트의 개수:<b></b></p>")
			var len = $('.bgColorYellow').siblings()
					.css('color','red')
					.length;
			$('b').text(len);
		},
		parentsDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<div><p><span><b>부모 엘리먼트 모두 검색 : </b></span></p></div>");
			var result = new Array();
			var $b = $('b');
			$b.parents()
			  .each(function(index) {
				result[index] = this.tagName; // jQuery 내부가 가지고 있는 어트리뷰트
			});
			$b.append(result.reverse().join(','));// join(,) 에 띄워쓰기 하지 마시오...
		},
		parentDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<div><p><span><b>부모 엘리먼트 중 가장 근접한 엘리먼트 : </b></span></p></div>");
			var result = new Array();
			var $b = $('b');
			$b.parent()
			  .each(function(index) {
				result[index] = this.tagName; // jQuery 내부가 가지고 있는 어트리뷰트
			});
			$b.append(result.reverse().join(','));
		},
		findDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<div> p 엘리먼트 중에서<em>em 태그 내의 단어 </em></div>" +
					"<p> 글자 색을<em>빨간색으로</em>변경한다. </p>");
			$('p').find('em') // em 태그를 말합니다.
			.css('color','red');
			/*
			 결과를 보면 p 태그 내부의 <em> 만 색갈이 변경됨
			 */
		},
		mapDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<p><b>찾은 값:</b></p><ul><li>apple</li><li>banana</li><li>orange</li></ul>");
			$('p').append($('li').map(function() {
				return $(this).text().toUpperCase();
			}).get().join(','));
			/*
			 li  의 항목을 모두 불러와서 대문자로 바꿔서 출력한다.
			 */
		},
		endDemo : function() {
			$('<div id="bar">').appendTo($('.box').empty());
			$('#bar')
			.html("<div><p>첫째 문장</p><p> 둘째 문장 </p></div>");
			$('div').find('p')
			.addClass('bgColorYellow')
			.end()
			.addClass('bgColorRed');
			
		}
		/*
		div 의 자손 엘리먼트 p 의 배경색을 노랑색을 바꾼 후
		최초로 검색대상이 되었던 엘리먼트로 되돌아가
		배경색을 빨간색으로 바꾼다.
		 */
}