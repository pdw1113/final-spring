<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
      <!--제이쿼리CDN-->
      <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <!--부트스트랩CDN-->
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->    
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> 
	  <!-- css -->
	  <link rel="stylesheet" type="text/css" href="resources/css/mPayExchange.css">
   </head>
   <body>
      <div class="header">
         <%@ include file="../../common/header.jsp" %>
      </div>
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
         <div class="mian-header">
            <div class="cate_Managerheader">결제 > <U>니즈머니 출금</U></div>
            <div class="title_Managerheader">출금내역</div>
         </div>
         <div class="main-section">
            <div class="main-top04">
               <table class="table table-condensed table-striped font_jua" id="table04">
                  <thead class="table-thead04">
                     <tr>
                        <th><input type="checkbox" class="checkbox04" id="checkfirst"> 전체</th>
                        <th class="bottom-td1">번호</th>
                        <th class="bottom-td2">이름</th>
                        <th class="bottom-td3">아이디/닉네임</th>
                        <th class="bottom-td4">날짜</th>
                        <th class="bottom-td5">출금계좌</th>
                        <th class="bottom-td6">금액</th>
                     </tr>
                  </thead>
                  <tr>
                     <td><input type="checkbox" class="checkbox04"></td>
                     <td>1</td>
                     <td>찬동민</td>
                     <td>천동벌거숭이</td>
                     <td>2020-10-24</td>
                     <td>110358784049 신한</td>
                     <td>380,000</td>
                  </tr>
                  <tr>
                     <td><input type="checkbox" class="checkbox04"></td>
                     <td>2</td>
                     <td>찬동민</td>
                     <td>천동벌거숭이</td>
                     <td>2020-10-24</td>
                     <td>110358784049 신한</td>
                     <td>380,000</td>
                  </tr>
                  <tr>
                     <td><input type="checkbox" class="checkbox04"></td>
                     <td>3</td>
                     <td>찬동민</td>
                     <td>천동벌거숭이</td>
                     <td>2020-10-24</td>
                     <td>110358784049 신한</td>
                     <td>380,000</td>
                  </tr>
                  <tr>
                     <td><input type="checkbox" class="checkbox04"></td>
                     <td>4</td>
                     <td>찬동민</td>
                     <td>천동벌거숭이</td>
                     <td>2020-10-24</td>
                     <td>110358784049 신한</td>
                     <td>380,000</td>
                  </tr>
                  <tr>
                     <td><input type="checkbox" class="checkbox04"></td>
                     <td>5</td>
                     <td>찬동민</td>
                     <td>천동벌거숭이</td>
                     <td>2020-10-24</td>
                     <td>110358784049 신한</td>
                     <td>380,000</td>
                  </tr>
               </table>
               <div class="btn04-div04">
                  <button type="submit" class="font_jua btn04">전환</button>
               </div>
            </div>
         </div>
      </div>
      <script>
         $(function(){
            /*체크박스 전체선택/해제*/
            $('#checkfirst').on('click',function(){
               if($("#checkfirst").is(":checked")){
               $(".checkbox04").prop("checked", true);
               }else{
                $(".checkbox04").prop("checked", false);
               }
            })
            
            $('.btn04').on('click',function(){
            	let input = confirm('출금승인하시겠습니까?'); 
            	alert(input);
            	if(input){
            		
            	}else{
            		return false;
            	};
            })
         })
      </script>
   </body>
</html>