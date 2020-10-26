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

        ul li{
            list-style: none;
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

        a {
            color: #a7a7a7;
            text-decoration: none;
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

        .accountWrap_myPage_money .awTit_myPage_money + span{
            float:right; 
            padding-right:10px;
            color: #6c6d70;
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

        .cashTable_myPage_money .table_myPage_money thead {
            border-top: 1px solid #272d32;
        }

        .cashTable_myPage_money .table_myPage_money thead tr th {
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
        }

        /* 출금가능머니 "원"*/
        .cashRequest_myPage_money .cashWon_myPage_money span {
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

        .cashRtxt_myPage_money ul li {
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
        .modal {
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
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
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
            .accountWrap_myPage_money .cashInfo_myPage_money ul li.info {
                float: none;
                width: 100%;
                padding: 0;
            }
            .accountWrap_myPage_money .cashInfo_myPage_money ul li.info p {
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
            .cashTable_myPage_money .table_myPage_money thead tr th {
                padding: 12px 0;
            }
            .cashTable_myPage_money .table_myPage_money thead tr th span {
                font-size: 13px;
            }
            .pagingArea_myPage_money.mto_myPage_money {
                padding: 30px 0 0 0;
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
                    <span class="more_myPage_money">더보기</span>
                    <div class="cashTable_myPage_money">
                        <table class="table_myPage_money">
                            <colgroup>
                                <col>
                                <col>
                                <col>
                                <col>
                            </colgroup>
                            <thead>
                                <tr>
                                    <th><span>보유니즈머니 내역</span></th>
                                    <th><span>충전/차감 머니</span></th>
                                    <th><span>충전/차감 일자</span></th>
                                    <th><span>상태</span></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                <td>충전머니 예치</td>
                                <td><span class="plus">+ 100,000</span></td>
                                <td><span class="day">2020. 10. 10</span></td>
                                <td>충전완료</td>
                                </tr>
                                <tr>
                                <td>충전머니 예치</td>
                                <td><span class="plus">+ 1,000,000</span></td>
                                <td><span class="day">2019. 10. 10</span></td>
                                <td>충전완료</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="cashRequest_myPage_money">
                        <div class="cTit_myPage_money">출금 가능 니즈머니</div>
                        <div class="cashWon_myPage_money">0<span>원</span></div>
                        <a href="#" class="requestBtn_myPage_money" id="cancelReason"><span>출금하기</span></a>
                        </div>
                    </div>
                    

                    <!-- The Modal -->
                    <div id="myModal" class="modal">
                        <!-- Modal content -->
                        <div class="modal-content">
                            <div class="modal-header" style="display: flex; justify-content: space-between;">
                                <div><h2>출금 요청</h2></div>
                                <div style="width: 40px; height: 40px;  cursor:pointer;background-color:#DDDDDD;text-align: center;" onClick="close_pop();">
                                    <span class="pop_bt" style="font-size: 13pt; vertical-align: middle;" >
                                        X
                                    </span>
                                </div>
                            </div>
                            <table class="withdrawTb_myPage_money"> <!-- DB에 출금일자 입력하여 관리자에서는 보여야 합니다.-->
                                <tbody>
                                    <tr>
                                        <th scope="row">예금주</th>
                                        <td><input type="text" name="" id=""></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">출금 계좌</th>
                                        <td><input type="number" name="" id="" placeholder="'-'빼고 입력해주세요."></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">출금 금액</th>
                                        <td><input type="number"></td>
                                    </tr>
                                </tbody>
                            </table>
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
        <!-- //mypage -->
    <script type="text/javascript">
        $('#cancelReason').click(function(){
            $('#myModal').show();
        })
        
        //팝업 Close 기능
        function close_pop(flag) {
             $('#myModal').hide();
        };
        
      </script>
      <!-- footer 영역 -->
      <%@ include file="../../common/footer.jsp" %>
   </body>
</html>