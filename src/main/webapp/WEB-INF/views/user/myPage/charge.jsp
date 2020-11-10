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
      <link rel="stylesheet" type="text/css" href="resources/css/charge.css">
      <style>

      </style>
   </head>
   <body>
      <!-- header 영역 -->
      <%@ include file="../../common/header.jsp" %>
      <!-- nav 영역 -->
      <%@ include file="../myPage/common/nav.jsp" %>
      <form action="kakaopay.do" method="post">
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
                                    <span>${cash}<u>원</u></span>
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
                                    <input type="text" style="visibility: hidden;" name="total_pay" value="10000" id="money_mypay"/>
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
                            <div class="pBtn_mypay">
                              <button class="login_button_form">충전하기</button>
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
      </form>
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
             $('#money_mypay').attr("value",sum);
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