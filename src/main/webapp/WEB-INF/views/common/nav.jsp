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
		    <list-tag
		      v-for="item in navList"
		      v-bind:list="item"
		      v-bind:key="item.id"
		    ></list-tag>
         </nav>
      </div>
   </body>
   
   <script>
		Vue.component('list-tag', {
		  props: ['list'],
		  template: `<li>
		              	<a v-bind:href="list.url">
				        <img class="nav_img web_icon" v-bind:src="list.pic"><br>
				        <p>{{list.category}}</p>
				        </a>
				    </li>`
		});
			
		var app7 = new Vue({
		  el: '#app',
		  data: {
			  navList: [
		      { id: 0, category: '웹개발', pic:'resources/img/webDev-removebg-preview.png', url:"productList.do?navNo=10"},
		      { id: 1, category: '데이터베이스', pic:"resources/img/database_black.png", url:"productList.do?navNo=20" },
		      { id: 2, category: '모바일앱', pic:"resources/img/cell-phone.png", url:"productList.do?navNo=30" },
		      { id: 3, category: '임베디드', pic:"resources/img/embedded_bold2.png", url:"productList.do?navNo=40" },
		      { id: 4, category: '블록체인', pic:"resources/img/blockchain.png", url:"productList.do?navNo=50" },
		      { id: 5, category: '서버', pic:"resources/img/server.png", url:"productList.do?navNo=60" },
		      { id: 6, category: '게임', pic:"resources/img/game.png", url:"productList.do?navNo=70" },
		      { id: 7, category: '데이터분석', pic:"resources/img/analysis.png", url:"productList.do?navNo=80" },
		      { id: 8, category: '보안', pic:"resources/img/security.png", url:"productList.do?navNo=90" },
		    ]
		  }
		});
   </script>
</html>