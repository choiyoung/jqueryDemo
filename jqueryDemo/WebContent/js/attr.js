/**
 * attribute 관련 메소드
 */
var attr = {
		attrDemo : function(imgPath) {
			$('<img>',{
				src : imgPath,
				width: '100%',
				height: '100%'
			}).appendTo($('.box').empty());
		},
	

/*
 empty() 와 remove() 차이점
 - 본인 자체도 사라진다 => remove
 - 본인은 남고 내부 요소들만 비운다 => empty 
 */
/*
A append B 와 B appendTo A
A 에다가 B를 붙여라.
 */
		htmlDemo : function() {
			$('<div id = "htmlDemo">').appendTo($('.box').empty());
			$('#htmlDemo')
			.html('<div id="hello"><h3>Hello jQuery !!</h3></div>');
		},
		textDemo : function() {
			$('<div id = "textDemo">').appendTo($('.box').empty());
			$('#textDemo')
			.text('<div id="hello"><h3>Hello jQuery !!</h3></div>');
		},
		/*
		text() 와 html() 메소드의 차이점
		- 문자열을 그대로 출력하느냐, html 방식을 출력하느냐 차이
		 */
		
		valDemo : function() {
			$('<div id = "valDemo">').appendTo($('.box').empty());
			$('#valDemo').html("<div class='outbox center pad'>" +"<div class='box'>" +
								"<button id='reset'>reset</button>" +					
								"<input type='text'value='Hello jQuery !!'size='80'/>" +
								"<div id='console'></div></div></div>");
			$('input').keyup(function () {
				var value = $(this).val();
				$('#console').text(value);				
			}).keyup();
			/*
			 keyup 이벤트는 키보드의 키를 눌렀다 땠을 때 요소에 이벤트를 발생시킴.
			 즉 위 구문은 keyup 이벤트를 밸시켜 (이 상황에선 자바에서의 windowLisnor의 Exit(); 기능처럼 한거?)핸들러 안쪽의
			 동작 함수가 한번 실행되도록 한다.
			 */
			/*
			 지금 이벤트는 (앞의)setkeyup,(뒤의)getkeyup 이 있어야 동작을 하게된다.
			 ***** 파라미터가 있으면 set이고 없으면 get이다. ****
			 */
			
			$('#reset').click(function() {
				$('input').val('Hello SPRING !!');
				// 개발자가 keyup 이벤트를 발생시켜서
				// Hello SPRING 을 set 한다.
				$('input').keyup();
			});
		}
}







