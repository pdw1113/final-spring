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
      <link rel="stylesheet" type="text/css" href="resources/css/mPolicy.css">
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
            <div class="cate_Managerheader">기본 정책 관리 > <U>기본 정책 관리</U></div>
            <div class="title_Managerheader">기본 정책 관리</div>
         </div>
         <div class="main-section">
            <div class="headrbar font_jua">
               <button class="btn bb" id="headrbar-button-1">이용약관</button>
               <button class="btn bb" id="headrbar-button-2">개인정보처리방침</button>
            </div>
            <div class="main-1">
               <table class="table table-condensed font_jua" id="main-table">
                  <tr>
                     <td class="first-td">표준약관 사용여부</td>
                     <td>
                        <div class="radio">
                           <label class="font_jua radio-lable-2"><input type="radio" value="radio1" name="grade" class="radio-1"/>표준약관 사용</label>
                           <label class="font_jua radio-lable-2"><input type="radio" value="radio1" name="grade" class="radio-2"/>약관 직접입력</label>
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td class="first-td">약관내용</td>
                     <td class="textArea-td">
                        <p class="ptagg">
                           전자상거래인터넷사이버몰 ) 표준약관 표준약관 제 10023 호<br><br>
                           제1 조(목적)<br>표준약관제 10023 호<br><br>
                           이약관은 rc_companyNm } 회사 전자거래 사업자 가 운영하는 rc_mallNm } 사이버 몰 (이하 "몰" 이라 한다) 에서 제공하는 인터넷 관련 서비스 (이하 "서비스" 라 한다) 
                           를 이용함에 있어 사이버몰과 이용자의 권리 · 의무 및 책임사항을 규정함을 목적으로 합니다. <br><br>
                           ※「 PC 통신등을 이용하는 전자거래에 대해서도 그 성질에 반하지 않는한 이 약관을 준용합니다」 <br><br>
                           제2 조 (정의) <br><br>
                           ①"몰" 이란 rc_companyNm } 회사가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있
                           도록 설정한 가상의 영업장을 말하며 , 아울러 사이버"몰"을 운영하는 사업자의 의미로도 사용합니다. <br>
                           ②이용자 란 "몰" 에 접속하여 이 약관에 따라 몰 이 제공하는 서비스를 받는 회원 및 비회원을 말합니다. <br>
                           ③회원’이라 함은 "몰" 에 개인정보를 제공하여 회원등록을 한 자로서 , "몰" 의 정보를 지속적으로 제공받으며 , "몰" 이 제공하는 서비스를 계속적으로 이용
                           할 수 있는 자를 말합니다. <br>
                           ④비회원’이라 함은 회원에 가입하지 않고 "몰" 이 제공하는 서비스를 이용하는 자를 말합니다
                        </p>
                        <textarea name="" id="fix-textarea" cols="30" rows="20" class="form-control"></textarea>
                     </td>
                  </tr>
                  <tr class="first-tr">
                     <td class="first-td">약관적용일</td>
                     <td class="last-td">
                        <div class="latst-td-div">
                           <span class="last-td-span-1">2020</span><span class="last-td-span-4">년</span>
                           <span class="last-td-span-2">10</span><span class="last-td-span-5">월</span>
                           <span class="last-td-span-3">27</span><span class="last-td-span-6">일</span>
                        </div>
                     </td>
                  </tr>
                  <tr class="second-tr">
                     <td class="first-td">약관적용일</td>
                     <td class="last-td">
                        <div class="latst-td-div">
                           <span class="last-td-span-4"><input type="text" class="form-control" id="date-text-1">년</span>
                           <span class="last-td-span-5"><input type="text" class="form-control" id="date-text-2">월</span>
                           <span class="last-td-span-6"><input type="text" class="form-control" id="date-text-3">일</span>
                        </div>
                     </td>
                  </tr>
               </table>
               <button class="btn bb font_jua" id="fix-button">완료</button>
            </div>
            <div class="main-2">
               <table class="table table-hover table-condensed font_jua" id="main-2-table">
                  <tr>
                     <td class="first-td">개인정보 사용여부</td>
                     <td>
                        <div class="radio">
                           <label class="font_jua radio-lable-2"><input type="radio" value="radio1" name="grade" class="radio-3"/>개인정보처리방침내용 사용</label>
                           <label class="font_jua radio-lable-2"><input type="radio" value="radio1" name="grade" class="radio-4"/>개인정보처리방침내용 직접입력</label>
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td class="main-2-first-td">개인정보내용</td>
                     <td>
                        <p class="ptagg2">
                           [ 개인정보처리방침 ] <br><br>
                           {rc_mallNm} 주 는 이용자의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 다음과 같이 개인정보 처리방침을 수립 · 공개
                           하며 , 본 개인정보 처리방침을 홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 용이하게 보실 수 있도록 조치하고 있습니다 . 개인정보 처리방침은
                           정부의 법률 및 지침 변경이나 회사의 내부 방침 변경 등으로 인하여 수시로 변경될 수 있고 , 이에 따른 개인정보 처리방침의 지속적인 개선을 위하여 필
                           요한 절차를 정하고 있습니다 . 이용자들께서는 사이트 방문 시 수시로 확인하시기 바랍니다 <br><br>
                           {rc_mallNm} 주 의 개인정보 처리방침은 다음과 같은 내용을 담고 있습니다 <br><br>
                           1.개인정보 수집에 대한 동의 <br>
                           2.수집하는 개인정보 항목 및 수집방법 <br>
                           3.개인정보의 수집 및 이용목적 <br>
                           4.수집하는 개인정보의 보유 및 이용기간 <br>
                           5.개인정보의 파기 절차 및 방법 <br>
                           6.수집한 개인정보의 공유 및 제공 <br>
                           7.이용자 자신의 개인정보 관리 열람 정정 삭제 등 에 관한 사항 <br>
                           8.쿠키 (Cookie) 의 운용 및 거부 <br> 
                           9.개인정보의 위탁처리 <br>
                           10.개인정보보호를 위한 기술적 관리적 대책 <br>
                           11.개인정보 관련 의견수렴 및 불만처리에 관한 사항 <br>
                           12.개인정보 보호책임자 및 담당자의 소속 성명 및 연락처 <br>
                           13.이용자 및 법정대리인의 권리와 그 행사방법 <br>
                           14.권익침해 구제방법 <br>
                           15.고지의 의무 <br>
                        </p>
                        <textarea name="" id="fix-textarea-2" cols="30" rows="20" class="form-control"></textarea>
                     </td>
                  </tr>
               </table>
               <button class="btn bb font_jua" id="fix-button2">완료</button>
            </div>
         </div>
      </div>
      <script>
         $(function(){
             /*버튼클릭시 색변화*/
            $('#headrbar-button-1').on('click',function(){
                $('#headrbar-button-1').css('background-color','#5F5F5F')
                $('#headrbar-button-2').css('background-color','#E2E2E2')
            });
            $('#headrbar-button-2').on('click',function(){
                $('#headrbar-button-2').css('background-color','#5F5F5F')
                $('#headrbar-button-1').css('background-color','#E2E2E2')
            });
         
            /*버튼클릭시 게시물 변화*/
            $('#headrbar-button-1').on('click',function(){
               if( $('.main-1').css('display','none')){
               $('.main-1').css('display','block');
               $('.main-2').css('display','none');
               };
            });
            $('#headrbar-button-2').on('click',function(){
               if( $('.main-2').css('display','none')){
                  $('.main-2').css('display','block');
                  $('.main-1').css('display','none');
               };
            });
         
            
            /*라디오 버튼 체크시 게시물 변화(표준약관)*/
            let textA = $('.ptagg').text();
            let textB = $('#fix-textarea').val;
            $('.radio-1').on('click',function(){
               $('.ptagg').css('display','block');
               $('#fix-textarea').css('display','none');
               $('.first-tr').css('display','table-row');
               $('.second-tr').css('display','none');
               $('#fix-button').css('display','none');
            });
            $('.radio-2').on('click',function(){
               if( $('#fix-textarea').css('display','none')){
               $('#fix-textarea').css('display','block');
               $('#fix-button').css('display','block');
               $('.ptagg').css('display','none');
               $('.first-tr').css('display','none');
               $('.second-tr').css('display','table-row');
               $('#fix-textarea').html(textA);
               };
            });
            $('#fix-button').on('click',function(){
               let str = $("#fix-textarea").val();
               str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');
               $(".ptagg").html(str);
               let dateval1 = $('#date-text-1').val();
               let dateval2 = $('#date-text-2').val();
               let dateval3 = $('#date-text-3').val();
               $(".last-td-span-1").html(dateval1);
               $(".last-td-span-2").html(dateval2);
               $(".last-td-span-3").html(dateval3);
               alert('수정완료!');
            });
            
            /*라디오 버튼 체크시 게시물 변화(개인정보)*/
            let textC = $('.ptagg2').text();
            let textD = $('#fix-textarea-2').val;
            $('.radio-3').on('click',function(){
               $('.ptagg2').css('display','block');
               $('#fix-textarea-2').css('display','none');
               $('.first-tr').css('display','table-row');
               $('.second-tr').css('display','none');
               $('#fix-button2').css('display','none');
            });
            $('.radio-4').on('click',function(){
               if($('#fix-textarea-2').css('display','none')){
               $('#fix-textarea-2').css('display','block');
               $('#fix-button2').css('display','block');
               $('.ptagg2').css('display','none');
               $('.first-tr').css('display','none');
               $('.second-tr').css('display','table-row');
               $('#fix-textarea-2').html(textC);
               };
            });
            $('#fix-button2').on('click',function(){
               let str = $("#fix-textarea-2").val();
               str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');
               $(".ptagg2").html(str);
               alert('수정완료!');
            });
         
         })
      </script>
   </body>
</html>