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
		    <list-item
		      v-for="item in navList"
		      v-bind:list="item"
		      v-bind:key="item.id"
		    ></list-item>
         </nav>
      </div>
   </body>
   
   <script>
		Vue.component('list-item', {
		  props: ['list'],
		  template: `<li>
		              	<a href="productList.do?navNo=10">
				        <img class="nav_img web_icon" src={{list.pic}}><br>
				        <p>{{list.category}}</p>
				        </a>
				    </li>`
		});
			
		var app7 = new Vue({
		  el: '#app',
		  data: {
			  navList: [
		      { id: 0, category: '웹개발', pic:'game.png'},
		      { id: 1, category: '데이터베이스', pic:"game.png" },
		      { id: 2, category: '모바일앱', pic:"game.png" },
		      { id: 3, category: '임베디드', pic:"game.png" },
		      { id: 4, category: '블록체인', pic:"game.png" },
		      { id: 5, category: '서버', pic:"game.png" },
		      { id: 6, category: '게임', pic:"game.png" },
		      { id: 7, category: '데이터분석', pic:"game.png" },
		      { id: 8, category: '보안', pic:"game.png" },
		    ]
		  }
		});
   </script>
</html>