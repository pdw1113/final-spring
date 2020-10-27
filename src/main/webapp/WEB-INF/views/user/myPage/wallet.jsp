<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/04dc22ed0b.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    
    <style>
        html,
        body {
            width: 100%;
            padding: 0;
            margin: 0;
        }
        
        /* 전체 div */
        .content_myPage_money {
            width: 100%;
            padding: 57px 0 125px 0;
        }

        .content_myPage_money .layoutSubbox_myPage_money {
            position: relative;
            width: 1320px;
            margin: 0 auto;
        }

        .content_myPage_money .layoutSubbox_myPage_money:after {
            content: "";
            display: block;
            clear: both;
        }

        .mypage_myPage_money {
            width: 100%;
            overflow: hidden;
        }
        
        /* 보유니즈머니 정보 */
        .mypage_myPage_money .hTitle_myPage_money { /* 보유니즈머니 글씨 */
            position: relative;
            font-size: 20px;
            color: #272d32;
            line-height: 1.2;
            font-weight: 500;
            margin: 58px 0 0 0;
            padding: 0 0 14px 0;
            letter-spacing: -1px;
            border-bottom: 1px #000 solid;
            font-family: jua;
        }

        .accountWrap_myPage_money {
            width: 100%;
            min-height: 368px;
            overflow: hidden;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money {
            width: 100%;
            background: #272d32;
            padding: 30px 0;
            margin: 60px 0 0 0;
            overflow: hidden;
            border-radius: 10px;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li {
            position: relative;
            float: left;
            width: 37%;
            padding: 0 0 0 2.4%;
            min-height: 120px;
            border-right: 1px #52575b solid;
            box-sizing: border-box;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money {
            width: 26%;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money p {
            font-size: 20px;
            color: #fff;
            line-height: 1.2;
            font-weight: 300;
            letter-spacing: -1px;
            padding: 28px 0 0 0;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money p span {
            display: block;
            font-size: 20px;
            font-weight: 400;
            padding: 10px 0 0 0;
            
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li:last-child {
            border: 0;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li .stit_myPage_money {
            font-size: 18px;
            color: #fff;
            font-weight: 400;
            line-height: 1.2;
            padding: 15px 0 30px 0;
            letter-spacing: -1px;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li .won_myPage_money {
            font-family: 'montserrat';
            font-size: 38px;
            color: #fff;
            font-weight: 500;
            line-height: 1.2;
            letter-spacing: -1px;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li .won_myPage_money span {
            font-family: 'montserrat';
            font-size: 22px;
            font-weight: 600;
            padding: 0 0 0 10px;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li .chargeBtn_myPage_money {
            position: absolute;
            right: 162px;
            top: 5px;
            display: block;
            width: 120px;
            border: 1px #dfdfdf solid;
            border-radius: 50px;
            text-align: center;
            color: #a7a7a7;
            text-decoration: none;
        }

        .accountWrap_myPage_money .cashInfo_myPage_money ul li .chargeBtn_myPage_money span {
            font-size: 15px;
            color: #fff;
            line-height: 36px;
            font-weight: 300;
            letter-spacing: -1px;
        }

        /* 보유니즈머니 내역 table */
        .accountWrap_myPage_money .awTit_myPage_money {
            font-family: jua;
            font-size: 20px;
            color: #272d32;
            font-weight: 500;
            letter-spacing: -1px;
            padding: 60px 0 14px 0;
        }
        

        .accountWrap_myPage_money .awTit_myPage_money + a{
            float:right; 
            padding-right:10px;
            color: #6c6d70;
            text-decoration: none;
        }

        .cashTable_myPage_money {
            width: 100%;
            overflow: hidden;
        }

        .table_myPage_money {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            table-layout: fixed;
            word-break: break-all;
        }

        .cashTable_myPage_money .table_myPage_money .thead_money {
            border-top: 1px solid #272d32;
        }

        .cashTable_myPage_money .table_myPage_money .thead_money tr th {
            border-bottom: 1px #e5e5e5 solid;
            border-left: 1px #e5e5e5 solid;
            border-right: 1px #e5e5e5 solid;
            padding: 21px 0;
        }

        .cashTable_myPage_money .table_myPage_money tbody td{
            font-size: 14px;
            text-align: center;
        }

        /* 출금가능머니 노란색 테두리 */
        .cashRequest_myPage_money {
            position: relative;
            text-align: center;
            padding: 28px 0 29px;
            margin: 80px 0 0 0;
            border: 4px #fabe00 solid;
            border-radius: 10px;
        }
        
        /* 출금하기 버튼 CSS */
        .cashRequest_myPage_money .requestBtn_myPage_money {
        	width: 8rem;
        	height: 3rem;
        	float: right;
        	margin-right: 2rem;
        	border-radius:10px;
        	border: 0;
        	background: #fabe00;
        	outline: none;
        	cursor: pointer;
        }
        
        /* 출금하기 버튼 글자 CSS */
        .cashRequest_myPage_money .requestBtn_myPage_money span {
        	font-size: 1.3rem;
        	font-family: jua;
        }

        /* 출금가능머니 글자*/
        .cashRequest_myPage_money .cTit_myPage_money {
            position: absolute;
            left: 27.6%;
            top: 42px;
            font-size: 15px;
            color: #6c6d70;
            font-weight: 300;
            line-height: 1.1;
            letter-spacing: -1px;
        }

        /* 출금가능머니 숫자*/
        .cashRequest_myPage_money .cashWon_myPage_money {
            display: inline;
            font-family: jua;
            font-size: 38px;
            color: #272d32;
            font-weight: 500;
            line-height: 1.2;
            letter-spacing: -1px;
            margin-left: 130px;
        }

        /* 출금가능머니 "원"*/
        .cashRequest_myPage_money .cashWon_myPage_money > span {
            font-family: jua;
            font-size: 22px;
            font-weight: 600;
            padding: 0 0 0 10px;
        }

        /* 충전 안내 */
        .cashRtxt_myPage_money {
            width: 100%;
            padding: 10px 0 0 0;
            overflow: hidden;
        }

        .cashRtxt_myPage_money > ul > li {
            display: block;
            font-size: 14px;
            color: #9d9d9d;
            font-weight: 300;
            line-height: 1.2;
            padding: 0 0 0 8px;
            margin: 0 0 4px 0;
            word-break: keep-all;
        }

        /* The Modal (background) */
        .modal_money {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }

        /* Modal Content/Box */
        .modal_content_money {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
        
          .modal_header_wallet{
          	width: 100%;
          	display: inline;

          }
          .close_wallet{
          	float: right;
	        outline: none;
	        cursor: pointer;
          }
          .x_wallet{
          	font-size: 30px;
          }
          .tit_wallet > ul > li {
          	display: block;
          	margin: 0 0 12px 0;
          }
          .bankCode_wallet {
          	width: 100%;
          	margin-bottom: 5px;
          }
          .bankuser_wallet, .bankno_wallet, .price_wallet {
          	margin-top: 5px;
          	margin-bottom: 5px;
          	width: 98.5%;
          	height: 30px;
          }
          .bankSend_wallet{
          	width: 100px;
          	margin: 0 auto;
          }
          
          .bankBtn_wallet{
          	margin-top: 5px;
          	border : 0px;
            background: #fabe00;
            border-radius: 5px;
            width: 8rem;
            height: 2rem;
            outline: none;
            cursor: pointer;
            font-family: jua;
            font-size: 15px;
          }


        /* 반응형~ */
        @media (max-width: 1360px) {
            /* 사이드 여백 */
            .content_myPage_money .layoutSubbox_myPage_money {
                width: auto;
                margin: 0 20px;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul{
                padding-left:20px;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li {
                position: relative;
                float: left;
                width: 37%;
                padding: 0 0 0 2.4%;
                min-height: 120px;
                border-right: 1px #52575b solid;
                box-sizing: border-box;
            }
            
        }

        @media (max-width: 1160px) {
            .accountWrap_myPage_money .cashInfo_myPage_money ul li {
                width: 50%;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money {
                float: none;
                width: 100%;
                padding: 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money p {
                padding: 10px 0 0 0;
                text-align: center;
            }
        }

        @media (max-width: 1080px){
            .cashRequest_myPage_money .cTit_myPage_money {
                left: 20%;
            }
        }

        @media (max-width: 940px) {
            .cashRequest_myPage_money {
                text-align: left;
                padding: 40px 0 17px;
            }
            .cashRequest_myPage_money .cTit_myPage_money {
                left: 24px;
                top: 20px;
            }
            .cashRequest_myPage_money .cashWon_myPage_money {
                padding: 0 0 0 24px;
            }
            .cashRequest_myPage_money .requestBtn_myPage_money {
                width: 180px;
            }
        }

        @media (max-width: 860px){
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .chargeBtn_myPage_money {
                right: 146px;
                width: 100px;
            }
        }

        @media (max-width: 740px){
            .accountWrap_myPage_money .cashInfo_myPage_money {
                padding: 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul{
                padding:0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money {
            width: 100%;

        }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money p {
                padding: 30px 0;
                text-align: center;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li {
                float: none;
                width: 100%;
                min-height: 100%;
                padding: 0 0 0 20px;
                border: 0;
                border-bottom: 1px #52575b solid;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .stit_myPage_money {
                padding: 20px 0 30px 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .won_myPage_money {
                padding: 0 0 30px 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .chargeBtn_myPage_money {
                top: 15px;
            }
        }

        @media (max-width: 640px){
            .content_myPage_money .layoutSubbox_myPage_money {
                margin: 0 12px;
            }
            .mypage_myPage_money h2 {
                font-size: 20px;
                padding: 0 0 14px 0;
            }
            .mypage_myPage_money .hTitle_myPage_money {
                font-size: 15px;
                margin: 30px 0 0 0;
                padding: 0 0 10px 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money {
                margin: 30px 0 0 0;
                padding: 16px 0 0 0;
            }
            .accountWrap_myPage_money {
                min-height: 260px;
            }
            .categoryTab_myPage_money .webTabs_myPage_money.four_myPage_money > ul > li {
                width: 50%;
            }
            .categoryTab_myPage_money .webTabs_myPage_money > ul li.depth_myPage_money > a > span {
                padding: 0 18px;
                background-size: 10px 6px;
            }
            .categoryTab_myPage_money .webTabs_myPage_money ul li ul {
                top: 40px;
                padding: 4px 0 7px;
            }
            .categoryTab_myPage_money .webTabs_myPage_money ul li ul li a {
                padding: 10px 0;
                font-size: 13px;
            }
            .categoryTab_myPage_money .webTabs_myPage_money ul li a span {
                font-size: 14px;
                line-height: 40px;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul{
                padding:0;
            }
            
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .stit_myPage_money {
                font-size: 13px;
                padding: 15px 0 10px 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money p {
                font-size: 15px;
                padding: 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li.info_myPage_money p span {
                font-size: 15px;
                padding: 7px 0 15px;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .won_myPage_money {
                font-size: 22px;
                padding: 0 0 15px 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .won_myPage_money span {
                font-size: 15px;
                padding: 0 0 0 8px;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .chargeBtn_myPage_money {
                right: 100px;
                top: 10px;
                width: 80px;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li .chargeBtn_myPage_money span {
                font-size: 13px;
                line-height: 28px;
            }
            .accountWrap_myPage_money .awTit_myPage_money {
                font-size: 14px;
                padding: 30px 0 10px 0;
            }
            .cashTable_myPage_money .table_myPage_money .thead_money tr th {
                padding: 12px 0;
            }
            .cashTable_myPage_money .table_myPage_money .thead_money tr th span {
                font-size: 13px;
            }
            .cashRequest_myPage_money {
                padding: 0;
                margin: 40px 0 0 0;
                border-width: 2px;
                text-align: center;
            }
            .cashRequest_myPage_money .cTit_myPage_money {
                position: relative;
                left: 0;
                top: 0;
                width: 100%;
                font-size: 12px;
                padding: 15px 0 0 0;
            }
            .cashRequest_myPage_money .cashWon_myPage_money {
                display: block;
                padding: 0;
                width: 100%;
                font-size: 22px;
                padding: 10px 0;
            }
            .cashRequest_myPage_money .cashWon_myPage_money span {
                font-size: 15px;
                padding: 0 0 0 6px;
            }
            .cashRequest_myPage_money .requestBtn_myPage_money {
                position: relative;
                left: 0;
                right: auto;
                top: 0;
                width: 100%;
                color: #a7a7a7;
            	text-decoration: none;
            }
            .cashRtxt_myPage_money ul li {
                font-size: 12px;
            }
        }
    </style>
</head>

<body>
    <!-- header 영역 -->
    <%@ include file="../../common/header.jsp" %>
    <!-- nav 영역 -->
    <%@ include file="../myPage/common/nav.jsp" %>
    <div class="content_myPage_money">
        <!-- mypage -->
        <div class="mypage_myPage_money">
            <div class="layoutSubbox_myPage_money">
                <div class="hTitle_myPage_money">보유니즈머니</div>
                <!-- account -->
                <div class="accountWrap_myPage_money">
                    <div class="cashInfo_myPage_money">
                        <ul>
                            <li class="info_myPage_money">
                                <p>문혜란 회원님의 <span>보유니즈머니 정보</span></p>
                            </li>
                            <li>
                                <div class="stit_myPage_money">보유니즈머니</div>
                                <div class="won_myPage_money">0<span>원</span></div>
                                <a href="charge.do" class="chargeBtn_myPage_money"><span>충전하기</span></a>
                            </li>
                        </ul>
                    </div>
                    <div class="awTit_myPage_money">보유니즈머니 내역</div>
                    <a href="walletDetail.do" class="more_myPage_money">더보기</a>
                    <div class="cashTable_myPage_money">
                        <table class="table_myPage_money">
                            <thead class="thead_money">
                                <tr>
                                    <th><span>보유니즈머니 내역</span></th>
                                    <th><span>충전/차감 머니</span></th>
                                    <th><span>충전/차감 일자</span></th>
                                    <th><span>상태</span></th>
                                </tr>
                            </thead>
                            <!-- 보여지는 리스트 개수는 최신 5~10개로 제한 그 이상은 더보기 버튼으로 확인 -->
                            <tbody>
                                <tr>
                                <td>충전머니 예치</td>
                                <td><span class="plus_money">+ 100,000</span></td>
                                <td><span class="day_money">2020. 10. 10</span></td>
                                <td>충전완료</td>
                                </tr>
                                <tr>
                                <td>충전머니 예치</td>
                                <td><span class="plus_money">+ 1,000,000</span></td>
                                <td><span class="day_money">2019. 10. 10</span></td>
                                <td>충전완료</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="cashRequest_myPage_money">
                        <div class="cTit_myPage_money">출금 가능 니즈머니</div>
                        <div class="cashWon_myPage_money">0<span>원</span></div>
                        <!-- 출금하기 버튼은 0원 초과되면 생기게 구현할 예정 -->
                        <button class="requestBtn_myPage_money" id="cancelReason_wallet"><span>출금하기</span></button>
                    </div>
                    

                    <!-- The Modal -->
                    <div id="myModal_wallet" class="modal_money">
                        <!-- Modal content -->
                        <div class="modal_content_money">
                            <div class="modal_header_wallet">
	                            <div class="close_wallet" onclick="close_Wallet();">
			                   		<i class="fas fa-times x_wallet"></i>
			                	</div>
                                <div><h2>보유머니 출금 요청</h2></div>
	                            <ul>
									<li>
										<select class="bankCode_wallet">
											<option value="">은행 선택</option>
	                                        <option value="001">산업</option>
	                                        <option value="002">기업</option>
	                                        <option value="003">국민</option>
	                                        <option value="004">수협</option>
	                                        <option value="005">농협</option>
	                                        <option value="006">우리</option>
	                                        <option value="007">SC</option>
	                                        <option value="008">씨티</option>
	                                        <option value="009">대구</option>
	                                        <option value="010">부산</option>
	                                        <option value="011">광주</option>
	                                        <option value="012">제주</option>
	                                        <option value="013">전북</option>
	                                        <option value="014">경남</option>
	                                        <option value="015">새마을금고</option>
	                                        <option value="016">신협</option>
	                                        <option value="017">상호저축</option>
	                                        <option value="018">HSBC</option>
	                                        <option value="019">도이치</option>
	                                        <option value="020">우체국</option>
	                                        <option value="021">KEB하나</option>
	                                        <option value="022">신한</option>
	                                        <option value="023">케이뱅크</option>
	                                        <option value="024">카카오뱅크</option>
	            						</select>
									</li>
									<li><input type="text" name="bankuser" class="bankuser_wallet" id="bankuser" value="" placeholder="예금주명 입력"></li>
									<li><input type="text" name="bankno" class="bankno_wallet" id="bankno" value="" placeholder="’-’ 없이 계좌번호 입력"></li>
									<li><input type="text" name="price" class="price_wallet" id="price" value="" placeholder="출금 머니 금액을 입력해 주십시오."></li>
								</ul>
								
                            </div>
                            <div class="bankSend_wallet">
                            	<button class="bankBtn_wallet" id="bankSendBtn_wallet">계좌 확인</button>
                            </div>
                        </div>
                    </div>
                    <!--End Modal-->
                    <div class="cashRtxt_myPage_money">
                        <ul>
                            <li>12시 이전 신청 : 당일 16:00~18:00 입금</li>
                            <li>12시 이후 신청 : 익일 16:00~18:00 입금</li>
                            <li>금요일 12시 이후 신청</li>
                            <li>차주 월요일 16:00~18:00 입금</li>
                        </ul>
                    </div>
                </div>
                <!-- //account -->
            </div>
        </div>
       </div>
        <!-- //mypage -->
    	<script type="text/javascript">
	        $('#cancelReason_wallet').click(function(){
	            $('#myModal_wallet').show();
	        })
	        
	        //팝업 Close 기능
	        function close_Wallet(flag) {
	             $('#myModal_wallet').hide();
	        };
	        
	        //계좌 확인 버튼 데이터 찍어보기
	        $('#bankSendBtn_wallet').click(function(){
	        	var bankCode = $('.bankCode_wallet option:selected').val();
	        	var bankUser = $('#bankuser').val();
	        	var bankNo = $('#bankno').val();
	        	var price = $('#price').val();
	        	alert("은행코드"+bankCode+"예금주:"+bankUser+"계좌번호"+bankNo+"금액"+price);
	        });
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>