<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body,html{
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
        }

        a{
            text-decoration: none;
        }

        .crew_container{
            width: 100%;
            height: 2780px;
        }

        .crew_top{
            width: 100%;
            height: 600px;
            background: url(./resources/img/crew.jpg);
            background-size: cover;
            background-position: 50% 50%;
        }

        .crew_description{
            width: 940px;
            margin: 0 auto;
            padding-top: 220px;
            font-weight: normal;
            font-size: 42px;
            line-height: 60px;
            font-family: 'Kakao Light','맑은 고딕','Malgun Gothic','Apple SD Gothic Neo','돋움',dotum,sans-serif;
            color: #fff;
            margin: 0 auto;
        }

        .crew_main{
            background-color: #f9f9f9;
        }

        .crew_main_article{
            width: 960px;
            margin: 0 auto;
        }

        .crew_title{
            margin: 0;
            padding: 64px 0 42px 10px;
            font-weight: bold;
            font-size: 30px;
            color: #1e1e1e;
            font-family: 'Kakao Light','맑은 고딕','Malgun Gothic','Apple SD Gothic Neo','돋움',dotum,sans-serif;
        }

        .list_system{
            position: relative;
            width: 100%;
            padding: 0 0 29px;
            font-size: 0;
            font-family: 'Kakao Light','맑은 고딕','Malgun Gothic','Apple SD Gothic Neo','돋움',dotum,sans-serif;
            z-index: 10;
            margin: 0;
            list-style: none;
        }



        .list_system li {
            display: inline-block;
            width: 33.33%;
            height: 242px;
            padding: 0 10px;
            box-sizing: border-box;
            vertical-align: top;
        }

        .txt_num {
            display: block;
            height: 42px;
            padding-bottom: 9px;
            border-bottom: 1px solid #e6e6e6;
            font-size: 30px;
            color: #ccc;
        }

        .desc_system{
            padding-top: 14px;
            font-size: 20px;
            line-height: 34px;
            color: #1e1e1e;
        }

        .inner_welfare{
            width: 940px;
            height: 800px;
            margin: 0 auto;
        }

        .welfare_title{
            padding-top: 70px;
            font-weight: bold;
            font-size: 30px;
            color: #1e1e1e;
        }

        .item_welfare{
            padding-top: 26px;
        }

        .item_title{
            float: left;
            width: 240px;
            font-weight: normal;
            font-size: 30px;
            line-height: 40px;
            margin: 0;
            padding: 0;
        }

        .list_item{
            float: left;
            width: 700px;
            padding-bottom: 31px;
            line-height: 30px;
            list-style: none;
            margin: 0;
        }

        .list_item dt {
            font-weight: bold;
            font-size: 18px;
            margin: 0;
            padding: 0;
        }

        .list_item dd {
            padding-bottom: 30px;
            font-size: 15px;
            margin: 0;
            padding: 0;
        }

        .item_gallery{
            float: left;
            width: 40%;
        }

        .item_gallery2{
            float: left;
            width: 60%;
        }

        .inner_contact{
            overflow: hidden;
            width: 960px;
            margin: 0 auto;
        }

        .tit_crew{
            padding: 66px 0 30px 10px;
            font-weight: bold;
            font-size: 30px;
            color: #1e1e1e;
        }

        .contact_info{
            float: left;
            width: 460px;
            padding: 0 10px 136px;
            color: #1e1e1e;
        }

        .box_map{
            overflow: hidden;
            width: 460px;
            height: 284px;
        }

        .tit_contact{
            display: block;
            padding: 36px 0 6px;
            font-size: 18px;
        }

        .list_contact{
            overflow: hidden;
            width: 460px;
            font-size: 15px;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .list_contact dt{
            float: left;
            width: 37px;
            padding-top: 10px;
            font-weight: bold;
            word-break: break-all;
            margin: 0;
            padding: 0;
        }

        .list_contact dd {
            float: left;
            width: 423px;
            padding-top: 10px;
            margin: 0;
            padding: 0;
        }

        .list_contact dt {
            float: left;
            width: 37px;
            padding-top: 10px;
            font-weight: bold;
            word-break: break-all;
        }

        .list_contact dd {
            float: left;
            width: 423px;
            padding-top: 10px;
            font-family: 'Kakao Light','맑은 고딕','Malgun Gothic','Apple SD Gothic Neo','돋움',dotum,sans-serif;
        }

        .img_map{
            object-fit: cover;
            object-position: center;
        }
    </style>
</head>
<body>
   	<%@ include file="../common/header.jsp" %>
    <div class="crew_container" style="margin-top:-2rem;">
        <div class="crew_sub">
            <div class="crew_top">
                <p class="crew_description">
                    니즈잇은
                    <br>
                    IT 인재가 필요합니다.
                    <br>
                    WE NEEZ IT
                </p>
            </div>
        </div>
        <div class="crew_main">
            <div class="crew_main_article">
                <h3 class="crew_title">
                    니즈잇스러움
                </h3>
                <ul class="list_system">
                    <li>
                        <span class="txt_num">1</span>
                        <p id="workingTitle" class="desc_system">
                            유승제 선생님을<br>전적으로 믿고 따릅니다.<br><br>Willing to believe
                        </p>
                    </li>
                    <li>
                        <span class="txt_num">2</span>
                        <p id="workingTitle" class="desc_system">
                            무엇이든 본질만 남기고<br>처음부터 다시 생각해 봅니다.<br><br>Back to the Basic
                        </p>
                    </li>
                    <li>
                        <span class="txt_num">3</span>
                        <p id="workingTitle" class="desc_system">
                            나보다 팀장의 생각이<br>거의 대부분 옳습니다.<br><br>Trust to Trust
                        </p>
                    </li>
                    <li>
                        <span class="txt_num">4</span>
                        <p id="workingTitle" class="desc_system">
                            스스로 몰입하고<br>주도적으로 일합니다.<br><br>Act for Yourself
                        </p>
                    </li>
                    <li>
                        <span class="txt_num">5</span>
                        <p id="workingTitle" class="desc_system">
                            원격 수업은<br>너무 편합니다.<br><br>But I Miss Teacher
                        </p>
                    </li>
                    <li>
                        <span class="txt_num">6</span>
                        <p id="workingTitle" class="desc_system">
                            H 오전반/오후반<br>전원 취업합시다.<br><br>ありがとうございます。
                        </p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="inner_welfare">
            <h3 class="welfare_title">복지제도</h3>
            <div>
                <div class="item_welfare">
                    <h4 class="item_title">
                        즐거운
                        <br>
                        니즈잇크루
                    </h4>
                    <dl class="list_item">
                        <dt>정기휴가</dt>
                        <dd>취업 할 때 까지 휴가란 존재하지 않습니다.</dd>
                        <dt>회의 시설</dt>
                        <dd>성수역과 신사역에 사무실이 있습니다. 언제든지 회의실을 이용 할 수 있습니다.</dd>
                        <dt>제휴 호텔</dt>
                        <dd>잠은 집에서 자는게 최고인 것 같습니다.</dd>
                    </dl>
                </div>
                <div class="item_welfare" >
                    <h4 class="item_title">건강한<br>니즈잇크루</h4>
                    <dl class="list_item">
                        <dt>주말 등산</dt>
                        <dd>프로젝트 완성 후 관악산 등반이 예정되어 있습니다. 선생님도 함께 가셨으면 좋겠습니다.</dd>
                        <dt>건강 검진</dt>
                        <dd>중국에서 한의학을 공부한 천 쯔쉬옌씨가 침술을 해주십니다.</dd>
                        <dt>4대보험</dt>
                        <dd>4대는 벤치프레스, 스쿼트, 데드리프트, 밀리터리프레스 밖에 모릅니다. </dd>
                    </dl>
                </div>
                <div class="item_welfare">
                    <h4 class="item_title">든든한<br>니즈잇크루</h4>
                    <dl class="list_item">
                        <dt>경조금</dt>
                        <dd>그런 거 없고 지각 시 지각비 2000원 입니다.</dd>
                        <dt>대출</dt>
                        <dd>법정최고금리 23.9%에 300까지 대출해드립니다. -모사꾼 조정호-</dd>
                        <dt>노래자랑</dt>
                        <dd>가수 천장혁씨가 매일 밤 감미로운 목소리를 들려주십니다.</dd>
                    </dl>
                </div>
            </div>
        </div>
        <div class="section_crew section_contact">
            <div class="inner_contact">
                <h3 class="tit_crew">오시는 길</h3>
                <div class="contact_info">

                    <div class="box_map">
                        <a target="kakao_office" href="http://map.daum.net/?urlX=400210&amp;urlY=-11700&amp;itemId=18059921">
                            <img src="./resources/img/seongsu.JPG" class="img_map" width="460" height="284">
                        </a>
                    </div>

                    <strong class="tit_contact">성수 사무실</strong>
                    <dl class="list_contact">
                        <dt>주소</dt>
                        <dd>서울특별시 뚝섬역 1번출구</dd>
                        <dt class="en">전화</dt>
                        <dd>010-9298-6125</dd>
                    </dl>
                </div>
                <div class="contact_info">
                    <!-- 지도 추가 -->
                    <div class="box_map"> <!-- 지도영역 -->
                        <a target="kakao_office" href="http://map.daum.net/?urlX=523953&amp;urlY=1084098&amp;itemId=18577297">
                            <img src="./resources/img/sinsa.JPG" class="img_map" width="460" height="284">
                        </a>
                    </div>

                    <strong class="tit_contact">신사 사무실</strong>
                    <dl class="list_contact en">
                        <dt>주소</dt>
                        <dd>서울특별시 신사역 1번출구</dd>
                        <dt>전화</dt>
                        <dd>010-9298-6125</dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
   	<%@ include file="../common/footer.jsp" %>
</body>
</html>