/*
 * dom.js DOM과 관련된 기능 정의
 */
  var domController = {
		  hide : function(){
			  document.getElementById('domBox').style.display = 'none';
		  },
		  show : function(){
			  document.getElementById('domBox').style.display = '';
		  },
		  createTag1 : function(){
			  var elem = document.createElement('div'); /*div 엘리먼트 동적 생성*/
			  var attr = document.createAttribute('style'); /*style 속성 동적 생성*/
			  attr.nodeValue = 'background-color : RED; width : 500px; height : 100px; margin : 0 0 0 200px;';
			  elem.setAttributeNode(attr); /*만들어둔 엘리먼트에 속성을 적용*/
			  document.body.appendChild(elem);
		  },
		  createTag2 : function(){
			  var elem = document.createElement('div');
			  elem.setAttribute('style', 'background-color : YELLOW; width : 500px; height : 100px; margin : 0 0 0 200px;');
			  document.body.appendChild(elem);
		  },
		  selectByTagName : function(){
			 /* 태그 이름이 span 인 모든 객체를 선택하여 배열로 저장*/
			  var elems = document.getElementsByTagName('span');
			  /*
			  자바스크립트에서 getElementsByTagName 으로 추출된 결과물을
			  for-loop 으로 돌리 때, 인덱스 값과 배열자료구조 요소를 선언 및 초기화 해야한다.
			  for-loop 의 limit는 인덱스값과 요값이 일치할 때까지 이다. 
			  */
			  for (var i = 0,elem; elem = elems[i]; i++) {
				elem.style.backgroundColor = 'red';
			  }	
			},
			selectByName : function(){
				var elems = document.getElementsByName('bbb');
				for (var i = 0, elem; elem = elems[i]; i++) {
					elem.style.backgroundColor = 'red';
				}
			}
  }