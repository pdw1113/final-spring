<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>찜상품</title>
      <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <style>
         /* 공통 CSS */
         html,
         body {
         width: 100%;
         padding: 0;
         margin: 0;
         }

         .a_mypay {
         text-decoration: none;
         }
         /* 전체 div */
         .content_mypay {
         width: 100%;
         padding: 57px 0 125px 0;
         }
         .order_mypay {
         width: 100%;
         }
         .content_mypay .layoutSubbox_mypay {
         position: relative;
         width: 1320px;
         margin: 0 auto;
         }
         .content_mypay .layoutSubbox_mypay > h2 {
         font-size: 34px;
         color: #272d32;
         line-height: 1.2;
         font-weight: normal;
         text-align: center;
         letter-spacing: -1px;
         padding: 0 0 24px 0;
         border-bottom: 2px #50504d solid;
         font-family: jua;
         }
         
         .content_mypay .layoutSubbox_mypay:after {
         content: "";
         display: block;
         clear: both;
         }
         .orderWrap_mypay {
         position: relative;
         width: 100%;
         }
         /* 왼쪽 영역 */
         .orderWrap_mypay .lsection_mypay {
         width: 66.06%;
         }
         .orderWrap_mypay .lsection_mypay > h3 {
         position: relative;
         font-size: 18px;
         color: #272d32;
         font-weight: 600;
         line-height: 1.2;
         padding: 38px 0 14px 0;
         letter-spacing: -1px;
         border-bottom: 1px #50504d solid;
         }
         .orderWrap_mypay .lsection_mypay .cashOption_mypay {
         position: relative;
         width: 100%;
         overflow: hidden;
         }
         .orderWrap_mypay .lsection_mypay .cashOption_mypay .option_mypay {
         display: flex;
         }
         .orderWrap_mypay .lsection_mypay .cashOption_mypay .option_mypay .sTit_mypay {
         font-size: 15px;
         color: #5c5c5c;
         font-weight: 300;
         line-height: 1.2;
         padding: 40px 0;
         margin: 0 29% 0 0;
         letter-spacing: -1px;
         }
         /* input 숫자 증감 */
         .orderWrap_mypay .lsection_mypay .cashOption_mypay .option_mypay .count_mypay{
         margin-top: 31px;
         }
         /* 수량 input */
         .btn_number_mypay{
         font-family: sans-serif;
         height:34px;
         width: 80px;
         text-align: center;
         font-size: 14px;
         border:1px solid #ddd;
         border-radius:4px;
         display: inline-block;
         vertical-align: middle;
         }
         /* 수량 증감 버튼 */
         .minus_mypay, .plus_mypay{
         width:35px;
         height:20px;
         background:none;
         border-radius:4px;
         padding: 0px 2px 16px 0px;
         display: inline-block;
         vertical-align: middle;
         text-align: center;
         }
         /* count img 해당버튼에 100%크기 맞추기*/
         .orderWrap_mypay .lsection_mypay .cashOption_mypay .option_mypay .count_mypay .count_btn_mypay {
         width: 100%;
         }
         /* 라디오버튼 글씨 */ 
         .orderWrap_mypay .lsection_mypay .cashOption_mypay .option_mypay .sTit_mypay .custom-radio_mypay > label {
         font-family: sans-serif;
         font-size: 16px;
         color: #202020;
         letter-spacing: 0;
         }
         .orderWrap_mypay .lsection_mypay .cashOption_mypay .option_mypay .sTit_mypay .custom-radio_mypay > label > u {
         text-decoration: none;
         cursor: default;
         }
         
         /* 왼쪽 영역의 충전금액 */
         .orderWrap_mypay .lsection_mypay .cashOption_mypay .option_mypay .won_mypay {
         position: absolute;
         right: 4%;
         top: 29px;
         font-size: 14px;
         color: #202020;
         line-height: 42px;
         font-weight: 300;
         text-align: center;
         }
         .orderWrap_mypay .lsection_mypay .cashOption_mypay .option_mypay .won_mypay > span {
         font-family: 'montserrat';
         font-size: 16px;
         color: #202020;
         line-height: 42px;
         
         }
         /* 머니 충전 유의사항 */
         .orderWrap_mypay .lsection_mypay .taxBillInfo_mypay {
         width: 100%;
         padding: 34px 0 30px 0;
         margin: 153px 0 0 0;
         background: #f3f5f6;
         overflow: hidden;
         }
         .orderWrap_mypay .lsection_mypay .taxBillInfo_mypay .tTit_mypay {
         font-size: 18px;
         color: #272d32;
         font-weight: 500;
         line-height: 1.2;
         letter-spacing: -1px;
         padding: 0 0 0 40px;
         }
         .orderWrap_mypay .lsection_mypay .taxBillInfo_mypay > ul {
         padding: 0 0 0 40px;
         list-style: none;
         margin: 0;
         }
         .orderWrap_mypay .lsection_mypay .taxBillInfo_mypay > ul > li {
         list-style: none;
         margin: 0;
         font-family: sans-serif;
         display: block;
         font-size: 13px;
         color: #5c5c5c;
         font-weight: 300;
         line-height: 1.2;
         letter-spacing: -1px;
         padding: 8px 0 0 0;
         word-break: keep-all;
         }
         /* 오른쪽 영역 */
         .orderWrap_mypay .rsection_mypay {
         position: absolute;
         right: 0;
         top: 0;
         width: 30.30%;
         margin: 72px 0 0 0;
         border-top: 1px #50504d solid;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .cont_mypay > ul {
         list-style: none;
         margin: 0;
         padding: 8px 0;
         border-bottom: 1px #dfdfdf solid;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .cont_mypay > ul > li {
         list-style: none;
         margin: 0;
         position: relative;
         padding: 12px 0;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .cont_mypay > ul > li > .tit_mypay {
         font-size: 15px;
         color: #272d32;
         line-height: 1.2;
         font-family: sans-serif;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .cont_mypay ul li span {
         position: absolute;
         right: 0;
         top: 8px;
         display: inline-block;
         font-family: sans-serif;
         font-size: 16px;
         color: #202020;
         line-height: 1.2;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .cont_mypay ul li span u {
         font-size: 14px;
         color: #5c5c5c;
         line-height: 1.2;
         text-decoration: none;
         padding: 0 0 0 3px;
         }
         /* 총 결제금액 */
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .cont_mypay ul li span.total_mypay {
         top: 5px;
         font-size: 28px;
         font-weight: 600;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .cont_mypay ul li span.total_mypay > u {
         text-decoration: none;
         font-size: 20px;
         font-weight: 300;
         font-family: sans-serif;
         }
         /* 결제수단 div */
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .payTit_mypay {
         font-size: 15px;
         color: #272d32;
         padding: 20px 0 10px 0;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .payMethod_mypay {
         height: 35px;
         padding: 0 0 12px 0;
         border-bottom: 1px #272d32 solid;
         margin: 0 0 15px 0;
         }
         
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .payMethod_mypay > ul li {
         list-style: none;
         margin: 0;
         }
         
         .custom-checkbox_mypay,
         .custom-radio_mypay {
         position: relative;
         z-index: 1;
         }
         /* radio 버튼 custom */
         .radio_mypay {
         display: none;
         }
         .radio_mypay+label {
         font-weight: 400;
         font-size: 14px;
         cursor: pointer;
         }
         .radio_mypay+label span {
         display: inline-block;
         width: 18px;
         height: 18px;
         margin: -2px 10px 0 0;
         vertical-align: middle;
         cursor: pointer;
         -moz-border-radius: 50%;
         border-radius: 50%;
         border: 3px solid #ffffff;
         }
         .radio_mypay+label span {
         background-color: #ffff;
         border: 2px solid #9d9d9d;
         }
         /* 체크 했을 때 보여지는 radio 버튼 */
         .radio_mypay:checked+label {
         color: #333;
         font-weight: 700;
         }
         .radio_mypay:checked+label span {
         background-color: #fabe00;
         border: 2px solid #ffffff;
         box-shadow: 2px 2px 2px rgba(0, 0, 0, .1);
         }
         .radio_mypay+label span,
         .radio_mypay:checked+label span {
         -webkit-transition: background-color 0.24s linear;
         -o-transition: background-color 0.24s linear;
         -moz-transition: background-color 0.24s linear;
         transition: background-color 0.24s linear;
         }
         /* checkbox custom */
         .checkbox_mypay {
         display: none;
         margin: 0.2em;
         }
         .checkbox_mypay+label {
         margin: 0.2em;
         cursor: pointer;
         padding: 0.2em;
         }
         .checkbox_mypay+label:before {
         content: "\2714";
         border: 0.1em solid#000000;
         border-radius: 0.2em;
         display: inline-block;
         width: 0.8em;
         height: 0.8em;
         padding-left: 0.2em;
         padding-bottom: 0.3em;
         margin-right: 0.2em;
         vertical-align: bottom;
         color: transparent;
         transition: .2s;
         }
         .checkbox_mypay+label:active:before {
         transform: scale(0);
         }
         .checkbox_mypay:checked+label:before {
         background-color: #fabe00;
         border-color: #fabe00;
         color: #fff;
         }
         /* 약관 div */
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .agreeOrdWrap_mypay {
         padding: 20px 30px 10px;
         border: 1px #d4d4d4 solid;
         border-radius: 4px;
         font-size: 14px;
         }
         /* 약관 전체 동의하기*/
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .agreeOrdWrap_mypay .allchk_mypay {
         margin: 0 0 15px 0;
         font-family: sans-serif;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .agreeOrdWrap_mypay .agreebox_mypay ul{
         list-style: none;
         margin: 0;
         padding: 0 0 0 13px;
         }
         .orderWrap_mypay .rsection_mypay .amountArea_mypay .inbox_mypay .agreeOrdWrap_mypay .agreebox_mypay ul li {
         list-style: none;
         display: block;
         margin: 0 0 10px 0;
         }
         /* 충전하기 버튼 */
         .pBtn_mypay{
         display: flex;
         width: 100%;
         height: 80px;
         background-color: #fabe00;
         border-radius: 10px;
         margin: 20px 0 0 0;
         overflow: hidden;
         cursor: pointer;
         justify-content: center;
         align-items: center;
         }
         .pBtn_mypay > a {
         text-decoration: none;
         font-size: 25px;
         font-weight: normal;
         font-family: jua;
         pointer-events: none;
         cursor: pointer;
         color: #272d32;
         }
         /* 반응형~ */
         @media (max-width: 1360px) {
         /* 사이드 여백 */
         .content_mypay .layoutSubbox_mypay {
         width: auto;
         margin: 0 20px;
         }
         }
      </style>
   </head>
   <body>
   	  <!-- header 영역 -->
      <%@ include file="../../common/header.jsp" %>
      <!-- nav 영역 -->
      <%@ include file="../myPage/common/nav.jsp" %>
      <div class="content_mypay">
         <div class="order_mypay">
            <div class="layoutSubbox_mypay">
               <h2>니즈머니 보유머니 주문/결제</h2>
               <!-- order wrap -->
               <div class="orderWrap_mypay">
                  <!-- order section -->
                  <div class="lsection_mypay">
                     <h3>머니충전</h3>
                     <!-- 충전항목 -->
                     <div class="cashOption_mypay">
                        <div class="option_mypay">
                           <div class="sTit_mypay">
                              <div class="custom-radio_mypay">
                                 <input type="radio" name="cashSelect" class="radio_mypay" id="select01" value="10000" checked="checked">
                                 <!-- 가격 -->
                                 <label for="select01"><span></span>10000<u>머니</u></label>
                                 <input type="hidden" value="10000" class="price1_mypay">
                              </div>
                           </div>
                           <div class="count_mypay">
                              <span class="minus_mypay" id="btn_minus_mypay"><img class="count_btn_mypay" src="./resources/img/left_button_sgm.png"></span>
                              <input type="number" class="btn_number_mypay" id="count_val_mypay" value="1" readonly/>
                              <span class="plus_mypay" id="btn_plus_mypay"><img class="count_btn_mypay" src="./resources/img/right_button_sgm.png"></span>
                           </div>
                           <div class="won_mypay"><span id="count_cash_mypay">10000원</span></div>
                        </div>
                     </div>
                     <!-- //충전항목 -->
                     <div class="taxBillInfo_mypay">
                        <div class="tTit_mypay">머니 충전 유의사항</div>
                        <ul>
                           <li>서비스 구매 시 유효기간 만료일이 가까운 순서대로 사용됩니다.</li>
                           <li>충전머니는 상품/서비스 구매를 위하여 사전에 일정 금액을 예치하는 것이므로 세금계산서 발행 대상이 아닙니다.</li>
                           <li>충전머니를 사용하여 상품/서비스를 구매하실 때 결제 금액에 대한 세금계산서 신청이 가능합니다. (개인전문가는 발행 불가)</li>
                           <li>충전머니의 영수증(신용카드 전표/현금영수증)은 개인 소득공제용으로만 사용하실 수 있습니다.</li>
                        </ul>
                     </div>
                  </div>
                  <!-- //order section -->
                  <!-- payment section -->
                  <div class="rsection_mypay">
                     <div class="amountArea_mypay">
                        <div class="inbox_mypay">
                           <div class="cont_mypay">
                              <ul>
                                 <li>
                                    <div class="tit_mypay">보유머니</div>
                                    <span>0<u>원</u></span>
                                 </li>
                              </ul>
                           </div>
                           <div class="cont_mypay">
                              <ul>
                                 <li>
                                    <div class="tit_mypay">충전머니</div>
                                    <span id="charge_cash_mypay">10000<u>원</u></span>
                                 </li>
                                 <li>
                                    <div class="tit_mypay">총 결제금액</div>
                                    <span class="total_mypay">10000<u>원</u></span>
                                 </li>
                              </ul>
                           </div>
                           <div class="payTit_mypay">결제수단</div>
                           <div class="payMethod_mypay">
                              <ul>
                                 <li>
                                    <div class="custom-radio_mypay"><input type="radio" name="order_pay_type" class="radio_mypay"
                                       id="credit_card" checked="checked" value="1"><label
                                       for="credit_card"><span></span>카카오 페이</label>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                           <!-- 약관 동의 div -->
                           <div class="agreeOrdWrap_mypay">
                              <div class="allchk_mypay">
                                 <div class="custom-checkbox_mypay"><input type="checkbox" id="allAgree_mypay" class="checkbox_mypay"
                                    ><label id="allchk" for="allAgree_mypay">약관 전체 동의</label>
                                 </div>
                              </div>
                              <div class="agreebox_mypay">
                                 <ul>
                                    <li>
                                       <div class="custom-checkbox_mypay"><input type="checkbox" id="orderAgree" class="checkbox_mypay"
                                          name="orderAgree"><label
                                          for="orderAgree">주문 상품정보 동의합니다 (필수)</label>
                                       </div>
                                    </li>
                                    <li>
                                       <div class="custom-checkbox_mypay"><input type="checkbox" id="policyAgree" class="checkbox_mypay"
                                          name="policyAgree"><label 
                                          for="policyAgree">결제 시 개인정보 동의합니다. (필수)</label></div>
                                    </li>
                                    <li>
                                       <div class="custom-checkbox_mypay"><input type="checkbox" id="marketingAgree" class="checkbox_mypay"
                                          name="marketingAgree"><label 
                                          for="marketingAgree">제 3자 제공 및 위탁동의합니다.</label></div>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                           <!-- 충전하기 버튼 -->
                           <div class="pBtn_mypay" id="submit_myModifyPwd">
                              <a href="#">충전하기 </a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- //payment section -->
               </div>
               <!-- order wrap -->
            </div>
         </div>
      </div>
      <script>
         // 머니 충전 
         $('#btn_minus_mypay').click(function () {
             var num = $('#count_val_mypay').val();
             if (num > 1) {
                 num--;
                 $('#count_val_mypay').val(num);
             }
         });
         
         $('#btn_plus_mypay').click(function () {
             var num = $('#count_val_mypay').val();
             if (num < 99) {
                 num++;
                 $('#count_val_mypay').val(num);
             }
         });
         
         // 합계
         $('#btn_minus_mypay, #btn_plus_mypay').click(function () {
             var sum = $('.price1_mypay').val() * $('#count_val_mypay').val();
             var html = sum + '<u>' + '원' + '</u>';
             var html2 = sum + '원'
             /* 왼쪽 lsection의 증가 */
             $('#count_cash_mypay').empty();
             $('#count_cash_mypay').append(html2);
             /* 오른쪽 rsection의 증가 */
             /* 충전머니 */
             $('#charge_cash_mypay').empty();
             $('#charge_cash_mypay').append(html);
             /* 총 결제 금액 */
             $('.total_mypay').empty();
             $('.total_mypay').append(html);
         });
         
         // 체크박스 전체 선택 상단의 전체 체크박스 클릭
         $('#allAgree_mypay').click(function(){
             // 클릭되었으면
             if($('#allAgree_mypay').prop("checked")){
                 // input태그의 class가 chk인 것을 찾아 체크
                 $(".checkbox_mypay").prop("checked",true); 
             }else{
                 // input태그의 class가 chk인 것을 찾아 체크 해제
                 $(".checkbox_mypay").prop("checked",false);
             }
         });
         
         // 전체선택했을 때 하나라도 해제되면 전체선택도 해제
         $(".checkbox_mypay").click(function(){
             var i =0;
             $(".checkbox_mypay").each(function(index){
                 if($(this).is(":checked")==false){
                     i=1;
                 }
             });
             if(i==1){
                 $("#allAgree_mypay").prop("checked",false);
             }else{
                 $("#allAgree_mypay").prop("checked",true);
             }
         });
         
         // 충전하기 눌렀을 때 약관의 필수에 체크 안되어있으면 alert!!!
         $('#submit_myModifyPwd').click(function(){
             if($('#orderAgree').is(":checked")==true && $('#policyAgree').is(":checked")==true ){
                 alert("충전되었습니다.");
             }else{
                 alert("필수 약관을 체크 해주세요.");
             }
         });
         
         
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>