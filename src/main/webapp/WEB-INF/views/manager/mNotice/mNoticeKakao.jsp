<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Document</title>
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
      <!-- JQUERY-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <link rel="stylesheet" type="text/css" href="resources/css/mNoticeKakao.css">
   </head>
   <body>
      <div class="header">
         <%@ include file="../common/mheader.jsp" %>
      </div>
      
      <div class="noReact">
      
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
         <div class="mian-header">
            <div class="cate_Managerheader">알림, 상담 > <U>카카오 알림톡</U></div>
            <button class="seaerch_save_button">저장</button>
            <div class="title_Managerheader">카카오 알림톡</div>
         </div>
         <div class="main-section">
            <table class="jumun">
               <th class="specialJumun1">
                  주문관련 & 회원관련
               </th>
               <th class="specialJumun2">
               </th>
            </table>
            <div class="second-title"></div>
            <div class="mainItself">
               <table class="tableGood">
                  <tr class="heightGood">
                     <th rowspan="2">발송항목</th>
                     <th rowspan="2">발송방법</th>
                     <th colspan="2">발송대상 및 알림톡 문구설정</th>
                  </tr>
                  <tr class="heightGood person">
                     <td>능력자</td>
                     <td>이용자</td>
                  </tr>
                  <tr>
                     <td rowspan="2" class="spAlign">
                        <input type="radio" ID="card1" name="orderGroup" Checked="true" value="card1"
                           onclick="contentsView(card1);" /><label for="card1">주문접수</label><br>
                        <input type="radio" ID="card2" name="orderGroup" value="card2"
                           onclick="javascript:contentsView(card2);" /><label for="card2">정상(뉴)접수</label><br>
                        <input type="radio" ID="card3" name="orderGroup" value="card3"
                           onclick="javascript:contentsView(card3);" /><label for="card3">인싸 천동민 접수</label><br>
                     </td>
                     <td rowspan="2">
                        <div class="text1">
                           최근 
                           <select name="days" class="centerAlign">
                              <option value="">기간 선택</option>
                              <option value="3">3일</option>
                              <option value="7">7일</option>
                              <option value="14">14일</option>
                           </select>
                           <br><br>
                           주문건만 발송
                        </div>
                        <div class="text2">
                           최근 
                           <select name="days" class="centerAlign">
                              <option value="">기간 선택</option>
                              <option value="3">3일</option>
                              <option value="7">7일</option>
                              <option value="14">14일</option>
                           </select>
                           <br><br>
                           정상뉴건만 발송      
                        </div>
                        <div class="text3">
                           최근 
                           <select name="days" class="centerAlign">
                              <option value="">기간 선택</option>
                              <option value="3">3일</option>
                              <option value="7">7일</option>
                              <option value="14">14일</option>
                           </select>
                           <br><br>
                           천동민건만 발송
                        </div>
                     </td>
                     <div>
                        <td rowspan="2">
                           <textarea class="textGood text1">
                           <%-- [#{rc_mallNm}] 정상뉴
                              #{orderName}님의 주문이 접수되었습니다
                              □주문번호 : #{orderNo}
                              □결제금액 : #{settlePrice}원
                                                              
                              이용해주셔서 감사합니다
                                                              
                              ▷[#{rc_mallNm}] 바로가기 :
                              #{shopUrl} --%>
                           에러 때문에 주석 처리
                           </textarea>
                           <textarea class="textGood text2">
                           상뉴야 노래 불러줘
                           </textarea>
                           <textarea class="textGood text3">
                           동민아 노래 불러줘
                           </textarea>
                        </td>
                        <td rowspan="2">
                           <textarea class="textGood text1">
                           <%-- [#{rc_mallNm}] 천동민
                              #{orderName}님의 주문이 접수되었습니다
                              □주문번호 : #{orderNo}
                              □결제금액 : #{settlePrice}원
                                                              
                              이용해주셔서 감사합니다
                                                              
                              ▷[#{rc_mallNm}] 바로가기 :
                              #{shopUrl}
                                                 --%>              
                           에러때문에 주석 처리
                           </textarea>
                           <textarea class="textGood text2">
                           상뉴야 노래 불러줘
                           </textarea>
                           <textarea class="textGood text3">
                           동민아 노래 불러줘
                           </textarea>
                        </td>
                     </div>
                  </tr>
               </table>
            </div>
            <div class="third-title"></div>
            <div class="introduction">
            </div>
         </div>
      </div>
      </div>
      <script>
         function contentsView(obj) {
             if (obj.value == 'card3') {
                 $('.text1').css('display', 'none');
                 $('.text2').css('display', 'none');
                 $('.text3').css('display', 'inline');
                 console.log(obj.value);
                 return false;
             }
             if (obj.value == 'card1') {
                 $('.text2').css('display', 'none');
                 $('.text3').css('display', 'none');
                 $('.text1').css('display', 'inline');
                 console.log(obj.value);
                 return false;
             }
             if (obj.value == 'card2') {
                 $('.text1').css('display', 'none');
                 $('.text3').css('display', 'none');
                 $('.text2').css('display', 'inline');
                 console.log(obj.value);
                 return false;
             }
         };
      </script>
   </body>
</html>