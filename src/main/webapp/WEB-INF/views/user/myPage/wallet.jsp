<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>니즈머니 충전</title>
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
         h2 {
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
         h4{
         font-size: 25px;
         color: #272d32;
         font-weight: normal;
         text-align: center;
         font-family: jua;
         margin: 15px 0 15px 0;
         }
         ul, li {
         list-style: none;
         margin: 0;
         }
         /* a태그 디자인 없애기 */
         a:link {
         color: red;
         text-decoration: none;
         }
         a:visited {
         color: black;
         text-decoration: none;
         }
         a:hover {
         color: gray;
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
         .orderWrap_mypay h3 {
         position: relative;
         font-size: 18px;
         color: #272d32;
         font-weight: 600;
         line-height: 1.2;
         padding: 38px 0 14px 0;
         letter-spacing: -1px;
         border-bottom: 1px #50504d solid;
         }
         .orderWrap_mypay .lsection_mypay .cashOption {
         position: relative;
         width: 100%;
         overflow: hidden;
         }
         .orderWrap_mypay .lsection_mypay .cashOption .option {
         display: flex;
         }
         .orderWrap_mypay .lsection_mypay .cashOption .option .sTit {
         font-size: 15px;
         color: #5c5c5c;
         font-weight: 300;
         line-height: 1.2;
         padding: 40px 0;
         margin: 0 29% 0 0;
         letter-spacing: -1px;
         }
         /* input 숫자 증감 */
         .orderWrap_mypay .lsection_mypay .cashOption .option .count{
         margin-top: 31px;
         }
         span {cursor:pointer; }
         .number{
         margin:100px;
         }
         /* 수량 input */
         input[type="number"]{
         font-family: sans-serif;
         height:34px;
         width: 80px;
         padding-inline-start: 12px;
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
         .orderWrap_mypay .lsection_mypay .cashOption .option .count .count_btn_mypay {
         width: 100%;
         }
         /* 라디오버튼 글씨 */ 
         .orderWrap_mypay .lsection_mypay .cashOption .option .sTit .custom-radio label {
         font-family: sans-serif;
         font-size: 16px;
         color: #202020;
         letter-spacing: 0;
         }
         /* 왼쪽 영역의 충전금액 */
         .orderWrap_mypay .lsection_mypay .cashOption .option .won {
         position: absolute;
         right: 4%;
         top: 29px;
         font-size: 14px;
         color: #202020;
         line-height: 42px;
         font-weight: 300;
         text-align: center;
         }
         .orderWrap_mypay .lsection_mypay .cashOption .option .won span {
         font-family: 'montserrat';
         font-size: 16px;
         color: #202020;
         line-height: 42px;
         }
         /* 머니 충전 유의사항 */
         .orderWrap_mypay .lsection_mypay .taxBillInfo {
         width: 100%;
         padding: 34px 0 30px 0;
         margin: 153px 0 0 0;
         background: #f3f5f6;
         overflow: hidden;
         }
         .orderWrap_mypay .lsection_mypay .taxBillInfo .tTit {
         font-size: 18px;
         color: #272d32;
         font-weight: 500;
         line-height: 1.2;
         letter-spacing: -1px;
         padding: 0 0 0 40px;
         }
         .orderWrap_mypay .lsection_mypay .taxBillInfo ul {
         padding: 0 0 0 40px;
         }
         .orderWrap_mypay .lsection_mypay .taxBillInfo ul li {
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
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .cont ul {
         padding: 8px 0;
         border-bottom: 1px #dfdfdf solid;
         }
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .cont ul li {
         position: relative;
         padding: 12px 0;
         }
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .cont ul li .tit {
         font-size: 15px;
         color: #272d32;
         line-height: 1.2;
         font-family: sans-serif;
         }
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .cont ul li span {
         position: absolute;
         right: 0;
         top: 8px;
         display: inline-block;
         font-family: sans-serif;
         font-size: 16px;
         color: #202020;
         line-height: 1.2;
         }
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .cont ul li span u {
         font-size: 14px;
         color: #5c5c5c;
         line-height: 1.2;
         text-decoration: none;
         padding: 0 0 0 3px;
         }
         /* 총 결제금액 */
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .cont ul li span.total {
         top: 5px;
         font-size: 28px;
         font-weight: 600;
         }
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .cont ul li span.total u {
         font-size: 20px;
         font-weight: 300;
         font-family: sans-serif;
         }
         /* 결제수단 div */
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .payTit {
         font-size: 15px;
         color: #272d32;
         padding: 20px 0 10px 0;
         }
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .payMethod {
         height: 35px;
         padding: 0 0 12px 0;
         border-bottom: 1px #272d32 solid;
         margin: 0 0 15px 0;
         }
         .custom-checkbox,
         .custom-radio {
         position: relative;
         z-index: 1;
         }
         /* radio 버튼 custom */
         input[type="radio"] {
         display: none;
         }
         input[type="radio"]+label {
         font-weight: 400;
         font-size: 14px;
         cursor: pointer;
         }
         input[type="radio"]+label span {
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
         input[type="radio"]+label span {
         background-color: #ffff;
         border: 2px solid #9d9d9d;
         }
         /* 체크 했을 때 보여지는 radio 버튼 */
         input[type="radio"]:checked+label {
         color: #333;
         font-weight: 700;
         }
         input[type="radio"]:checked+label span {
         background-color: #fabe00;
         border: 2px solid #ffffff;
         box-shadow: 2px 2px 2px rgba(0, 0, 0, .1);
         }
         input[type="radio"]+label span,
         input[type="radio"]:checked+label span {
         -webkit-transition: background-color 0.24s linear;
         -o-transition: background-color 0.24s linear;
         -moz-transition: background-color 0.24s linear;
         transition: background-color 0.24s linear;
         }
         /* checkbox custom */
         input[type=checkbox] {
         display: none;
         margin: 0.2em;
         }
         input[type=checkbox]+label {
         margin: 0.2em;
         cursor: pointer;
         padding: 0.2em;
         }
         input[type=checkbox]+label:before {
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
         input[type=checkbox]+label:active:before {
         transform: scale(0);
         }
         input[type=checkbox]:checked+label:before {
         background-color: #fabe00;
         border-color: #fabe00;
         color: #fff;
         }
         /* 약관 div */
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .agreeOrdWrap {
         padding: 20px 30px 10px;
         border: 1px #d4d4d4 solid;
         border-radius: 4px;
         font-size: 14px;
         }
         /* 약관 전체 동의하기*/
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .agreeOrdWrap .allchk {
         margin: 0 0 15px 0;
         font-family: sans-serif;
         }
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .agreeOrdWrap .agreebox ul{
         padding: 0 0 0 13px;
         }
         .orderWrap_mypay .rsection_mypay .amountArea .inbox .agreeOrdWrap .agreebox ul li {
         display: block;
         margin: 0 0 10px 0;
         }
         /* 충전하기 버튼 */
         .pBtn_mypay{
         display: block;
         width: 100%;
         background-color: #fabe00;
         border-radius: 10px;
         margin: 20px 0 0 0;
         overflow: hidden;
         cursor: pointer;
         }
         .pBtn_mypay a {
         text-decoration: none;
         color: white;
         vertical-align: middle;
         cursor: pointer;
         pointer-events: none;
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
      <iframe src="Mainhead.html" frameborder="0" style="width: 100%;margin: 0 0px -30px 0px; "></iframe>
      <iframe src="myPage_nav.html" frameborder="0"
         style="width: 100%; height: 370px; margin: -20px 0px -20px 0px;"></iframe>
      <div class="content_mypay">
         <div class="order">
            <div class="layoutSubbox_mypay">
               <h2>니즈머니 보유캐시 주문/결제</h2>
               <!-- order wrap -->
               <div class="orderWrap_mypay">
                  <!-- order section -->
                  <div class="lsection_mypay">
                     <h3>캐시충전</h3>
                     <!-- 충전항목 -->
                     <div class="cashOption">
                        <div class="option">
                           <div class="sTit">
                              <div class="custom-radio">
                                 <input type="radio" name="cashSelect" id="select01" value="10000" checked="checked">
                                 <!-- 가격 -->
                                 <label for="select01" class="checked"><span></span>10000<u>캐시</u></label>
                                 <input type="hidden" value="10000" class="price1">
                              </div>
                           </div>
                           <div class="count">
                              <span class="minus_mypay" id="btn_minus_mypay"><img class="count_btn_mypay" src="./resources/img/left_button_sgm.png"></span>
                              <input type="number" class="btn_number" id="count_val_mypay" value="1" readonly/>
                              <span class="plus_mypay" id="btn_plus_mypay"><img class="count_btn_mypay" src="./resources/img/right_button_sgm.png"></span>
                           </div>
                           <div class="won"><span id="count_cash">10000원</span></div>
                        </div>
                     </div>
                     <!-- //충전항목 -->
                     <div class="taxBillInfo">
                        <div class="tTit">머니 충전 유의사항</div>
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
                     <div class="amountArea">
                        <div class="inbox">
                           <div class="cont">
                              <ul>
                                 <li>
                                    <div class="tit">보유캐시</div>
                                    <span>0<u>원</u></span>
                                 </li>
                              </ul>
                           </div>
                           <div class="cont">
                              <ul>
                                 <li>
                                    <div class="tit">충전캐시</div>
                                    <span id="charge_cash">10000<u>원</u></span>
                                 </li>
                                 <li>
                                    <div class="tit">총 결제금액</div>
                                    <span class="total">10000<u>원</u></span>
                                 </li>
                              </ul>
                           </div>
                           <div class="payTit">결제수단</div>
                           <div class="payMethod">
                              <ul>
                                 <li>
                                    <div class="custom-radio_mypay"><input type="radio" name="order_pay_type"
                                       id="credit_card" checked="checked" value="1"><label
                                       for="credit_card" class="label"><span></span>카카오 페이</label>
                                    </div>
                                 </li>
                              </ul>
                           </div>
                           <!-- 약관 동의 div -->
                           <div class="agreeOrdWrap">
                              <div class="allchk">
                                 <div class="custom-checkbox_mypay"><input type="checkbox" id="allAgree" 
                                    ><label id="allchk" for="allAgree">약관 전체 동의</label>
                                 </div>
                              </div>
                              <div class="agreebox">
                                 <ul>
                                    <li>
                                       <div class="custom-checkbox_mypay"><input type="checkbox" id="orderAgree" class="chk"
                                          name="orderAgree"><label
                                          for="orderAgree">주문 상품정보 동의합니다 (필수)</label>
                                       </div>
                                    </li>
                                    <li>
                                       <div class="custom-checkbox_mypay"><input type="checkbox" id="policyAgree" class="chk"
                                          name="policyAgree"><label 
                                          for="policyAgree">결제 시 개인정보 동의합니다. (필수)</label></div>
                                    </li>
                                    <li>
                                       <div class="custom-checkbox_mypay"><input type="checkbox" id="marketingAgree" class="chk"
                                          name="marketingAgree"><label 
                                          for="marketingAgree">제 3자 제공 및 위탁동의합니다.</label></div>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                           <!-- 충전하기 버튼 -->
                           <div type="button" class="pBtn_mypay" id="submit_myModifyPwd">
                              <a href="#">
                                 <h4>충전하기</h4>
                              </a>
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
             var sum = $('.price1').val() * $('#count_val_mypay').val();
             var html = sum + '<u>' + '원' + '</u>';
             var html2 = sum + '원'
             /* 왼쪽 lsection의 증가 */
             $('#count_cash').empty();
             $('#count_cash').append(html2);
             /* 오른쪽 rsection의 증가 */
             /* 충전머니 */
             $('#charge_cash').empty();
             $('#charge_cash').append(html);
             /* 총 결제 금액 */
             $('.total').empty();
             $('.total').append(html);
         });
         
         // 체크박스 전체 선택 상단의 전체 체크박스 클릭
         $('#allAgree').click(function(){
             // 클릭되었으면
             if($('#allAgree').prop("checked")){
                 // input태그의 class가 chk인 것을 찾아 체크
                 $(".chk").prop("checked",true); 
             }else{
                 // input태그의 class가 chk인 것을 찾아 체크 해제
                 $(".chk").prop("checked",false);
             }
         });
         
         // 전체선택했을 때 하나라도 해제되면 전체선택도 해제
         $(".chk").click(function(){
             var i =0;
             $(".chk").each(function(index){
                 if($(this).is(":checked")==false){
                     i=1;
                 }
             });
             if(i==1){
                 $("#allAgree").prop("checked",false);
             }else{
                 $("#allAgree").prop("checked",true);
             }
         });
         
         // 충전하기 눌렀을 때 약관의 필수에 체크 안되어있으면 alert!!!
         $('#submit_myModifyPwd').click(function(){
             if($('#orderAgree').is(":checked")==true && $('#policyAgree').is(":checked")==true ){
                 alert("success");
             }else{
                 alert("fail?");
             }
         });
         
         
      </script>
      <iframe src="footer.html" frameborder="0" style="width: 100%; height: 220px; margin-top: 70px;"></iframe>
   </body>
</html>