<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>NeeziT</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <link rel="stylesheet" type="text/css" href="resources/css/nav.css">
      <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
   </head>
   <body>
<!-- Nav 영역 -->
      <div class="wrapper_Nav">
         <nav class="wrapper_NavIcon" id="app">
		    <todo-item
		      v-for="item in navList"
		      v-bind:todo="item"
		      v-bind:key="item.id"
		    ></todo-item>
         </nav>
      </div>
   </body>
   
   <script>
		Vue.component('todo-item', {
		  props: ['todo'],
		  template: `<li>
		              	<a href="productList.do?navNo=10">
				        <img class="nav_img web_icon" src="resources/img/webDev-removebg-preview.png"><br>
				        <p>{{}}</p>
				        </a>
				    </li>`
		});
			
		var app7 = new Vue({
		  el: '#app-7',
		  data: {
			  navList: [
		      { id: 0, text: '웹개발' },
		      { id: 1, text: '데이터베이스' },
		      { id: 2, text: '모바일앱' },
		      { id: 3, text: '임베디드' },
		      { id: 4, text: '블록체인' },
		      { id: 5, text: '서버' },
		      { id: 6, text: '게임' },
		      { id: 7, text: '데이터분석' },
		      { id: 8, text: '보안' },
		    ]
		  }
		});
   </script>
</html>