<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <!-- <html lang="en" style="height: 100%"> -->
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>부트스트랩 차트그리기</title>
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
         integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
      <!-- 차트 링크 -->
      <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
      <style>
         #myChart2 {
         position: relative;
    	 top: -2.5rem;
    	 width: 100%;
   		 height: 36rem;
         }
      </style>
   </head> 
   <body>
      <div class="container">
         <canvas id="myChart2"></canvas>
      </div>
      <script>
         var ctx = document.getElementById('myChart2');
         var myChart = new Chart(ctx, {
             type: 'bar',
             data: {
                 // labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
                 labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월','9월','10월','11월','12월'],
                 datasets: [{
                     label: '월 방문자', 
                     data: [120, 190, 230, 350, 420, 530, 620, 790, 830, 950, 1120, 1330],
                     backgroundColor: ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)','rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)'],
                     borderColor: ['rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)','rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)'],
                     borderWidth: 1
                 }]
             },
             options: { scales: { yAxes: [{ ticks: { beginAtZero: true } }] } },
             
         }); 
      </script>
   </body>
</html>
<!-- 출처: https://coding-restaurant.tistory.com/65 [코딩맛집] -->