<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html lang="ko">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
      <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
      <!-- 폰트 어썸 -->
      <script src="https://kit.fontawesome.com/fef720d792.js" crossorigin="anonymous"></script>
      <!-- Noto-Sans 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      <!-- Font Awesome Icon Library -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <!-- jQuery-->
      <script src="https://code.jquery.com/jquery-3.5.1.js"
         integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
      <!--Star-->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
      <!-- Latest compiled and minified JavaScript -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
	  <link rel="stylesheet" type="text/css" href="resources/css/productDetail.css">
	  
      <title>Document</title>

   </head>
   <body>
      <!-- 인증 시 색깔 -->
      <input type="hidden" value="0" class="identified1">
      <input type="hidden" value="1" class="identified2">
      <input type="hidden" value="0" class="identified3">
      <input type="hidden" value="1" class="identified4">
      <input type="hidden" value="1" class="identified5">
      <!-- 가격 -->
      <input type="hidden" value="50000" class="price1">
      <!-- 시간 -->
      <input type="hidden" value="50000" class="time1">
      <!-- 인증 시 소셜미디어 보이기 -->
      <input type="hidden" value="1" class="social1">
      <input type="hidden" value="1" class="social2">
      <input type="hidden" value="1" class="social3">
      <input type="hidden" value="1" class="social4">
      <input type="hidden" value="1" class="social5">
      <input type="hidden" value="1" class="social6">
      <input type="hidden" value="0" class="social7">
      <!-- 임시로 넣어놓은 헤더 아이프레임 -->
      <div class="header">
         <%@ include file="../../common/header.jsp" %>
      </div>
      <!-- Work -->
      <div class="container frame sample">
         <div class="row">
            <div class="col-xs-12 category_detail jua">
               웹개발 &gt; 프론트엔드 &gt; <u>HTML</u>
            </div>
         </div>
         <div class="row">
            <div class="col-xs-8">
               <div class="row title_detail">
                  <div class="col-xs-7 title_text_detail">
                     <div class="row">
                        <div class="col-xs-12">
                           <h4 class="subject">[웹사이트 개발 유지보수]</h4>
                        </div>
                        <div class="col-xs-12">
                           <h4 class="fs2rem">웹개발,하이브리드앱,오류수정 유지보수</h4>
                        </div>
                     </div>
                  </div>
                  <div class="col-xs-4 title_img_div_detail">
                     <img class="title_img_detail img-rounded" src="./resources/img/1.png">
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-6">
                     <div class="row user_star_detail">
                        <div class="col-xs-4 pl">
                           <img src="./resources/img/cdm5.jpg" class="user_image_detail img-rounded">
                        </div>
                        <div class="col-xs-8">
                           <p class=" user_title_text"><img src="resources/img/lv1.png" class="main_rank_index">
                              지존파워동민
                           </p>
                           <div id="starTest" class="starSpacing">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="far fa-star"></i>
                                     &nbsp; ( <input type="text" value="4.5" class="star1">&nbsp;&nbsp;)
                           </div>
                           
                           <div class="row mt20">
                              <div class="col-xs-offset-1 col-xs-5 user_status_detail">
                                 <p>7건</p>
                                 <p>판매실적</p>
                              </div>
                              <div class="col-xs-6 user_status_detail">
                                 <p>0건</p>
                                 <p>진행중작업</p>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!----------------------------------------- 인증 ----------------------------------------->
                  <div class="col-xs-6 price_div_detail container_fluid" data-toggle="tooltip" data-placement="bottom"
                     id="bottom" title="인증이 되었다면 오렌지색으로 나타냅니다.">
                     <span class="price_font_detail" id="price"></span><span class="won">원/시간당</span>
                     <div class="row iclass1">
                        <span class="col-xs-offset-1 i1">
                        <i class="far fa-address-card"></i>
                        </span>
                        <span class="i2">
                        <i class="fas fa-briefcase"></i>
                        </span>
                        <span class="i3">
                        <i class="fas fa-graduation-cap"></i>
                        </span>
                        <span class="i4">
                        <i class="fas fa-medal"></i>
                        </span>
                        <span class="i5">
                        <i class="fas fa-trophy"></i>
                        </span>
                     </div>
                     <div class="row iclass2">
                        <span class="col-xs-offset-1 i1">
                        본인인증
                        </span>
                        <span class="i2">
                        경력인증
                        </span>
                        <span class="i3">
                        학력인증
                        </span>
                        <span class="i4">
                        자격인증
                        </span>
                        <span class="i5">
                        수상인증
                        </span>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-12">
                     <section id="work" class="section">
                        <!-- 버튼 -->
                        <div class="container w100"></div>
                        <div class="work__categories">
                           <button class="category__btn selected" data-link="#sellerInformation">
                           판매자정보
                           </button>
                           <button class="category__btn" data-link="#introduction">
                           소개
                           </button>
                           <button class="category__btn" data-link="#description">
                           상세설명
                           </button>
                           <button class="category__btn" data-link="#refundPolicy">
                           환불 규정
                           </button>
                           <button class="category__btn" data-link="#performanceEvaluation">
                           실적/평가
                           </button>
                        </div>
                        <!-- 내용 -->
                        <div class="work__projects">
                           <!-- 판매자 정보 -->
                           <div class="project n1" target="blank" id="sellerInformation">
                              <div class="project__description1">
                                 <h3 class="jua">ABOUT</h3>
                                 <hr class="container col-xs-10 col-xs-offset-1">
                                 <div class="row">
                                    <div class="col-xs-10 col-xs-offset-1">
                                       <p class="portfolio">포트폴리오(상품관련)</p>
                                       <p>Lorem ipsum, dolor sit amet consectetur
                                          adipisicing elit. Asperiores a quo eos tempore molestiae
                                          rerum possimus laborum, magnam odit impedit molestias,
                                          quaerat eaque perferendis quas! Ducimus ut nobis molestiae
                                          illo.
                                       </p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- 소개 -->
                           <div class="project n2" target="blank" id="introduction">
                              <div class="project__description2">
                                 <h3 class="jua">소개</h3>
                                 <div>
                                    <!-- 소셜 미디어 -->
                                    <li>
                                       <div class="social-media" title="소셜미디어">
                                          <div class="iconContainerDetail s1">
                                             <img src="resources/img/instagram.png" class="iconImgDetail">
                                          </div>
                                          <div class="iconContainerDetail s2">
                                             <img src="resources/img/twitter.png" class="iconImgDetail">
                                          </div>
                                          <div class="iconContainerDetail s3">
                                             <img src="resources/img/blog.png" class="iconImgDetail">
                                          </div>
                                          <div class="iconContainerDetail s4">
                                             <img src="resources/img/git.png" class="iconImgDetail">
                                          </div>
                                       </div>
                                       <hr>
                                       <div class="video-link">
                                          <div class="vedioContainer s5">
                                             <iframe width="560" height="315"
                                                src="https://www.youtube.com/embed/pj9eGdPXpUE"
                                                frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                                allowfullscreen></iframe>
                                          </div>
                                       </div>
                                       <div class="video-link">
                                          <div class="vedioContainer s6">
                                             <iframe width="560" height="315"
                                                src="https://www.youtube.com/embed/pj9eGdPXpUE"
                                                frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                                allowfullscreen></iframe>
                                          </div>
                                       </div>
                                       <div class="video-link">
                                          <div class="vedioContainer s7">
                                             <iframe width="560" height="315"
                                                src="https://www.youtube.com/embed/pj9eGdPXpUE"
                                                frameborder="0"
                                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                                allowfullscreen></iframe>
                                          </div>
                                       </div>
                                    </li>
                                 </div>
                              </div>
                           </div>
                           <!-- 상세설명 -->
                           <div class="project n3" target="blank" id="description">
                              <div class="project__description3">
                                 <h3 class="jua">자기소개 및 상품소개</h3>
                                 <img src="./resources/img/web_design.png" width="60%" height="150px"
                                    class="imgfit">
                                 <hr class="container col-xs-12 ">
                                 <div class="row">
                                    <div class="col-xs-12">
                                       <p class="self">자기소개 및 상품소개</p>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-xs-10 col-xs-offset-1">
                                       <p>
                                          Lorem ipsum, dolor sit amet
                                          consectetur
                                          adipisicing elit. Asperiores a quo eos tempore molestiae
                                          rerum possimus laborum, magnam odit impedit molestias,
                                          quaerat eaque perferendis quas! Ducimus ut nobis molestiae
                                          illo.
                                       </p>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- 환불규정 -->
                           <div class="project n4" id="refundPolicy" target="blank">
                              <div class="project__description4">
                                 <h3 class="jua">환불 규정</h3>
                                 <div class="refund_div">
                                    <ul>
                                       <li class="refund_h">01. 작업 시작 전 100% 환불 가능합니다.</li>
                                       <li> (작업 시작 후에도 결과물이 완성되지 않았을 경우에는 100% 환불 가능합니다.)</li>
                                       <li class="refund_h">02. 판매자의 사정으로 작업이 약속했던 일자보다 지연되거나 그에 상응하는 사안이 발생하였을
                                          경우
                                       </li>
                                       <li class="refund_h">진행한 작업 건수 또는 작업 노출 일수를 계산하여 제외한 금액을 환불 가능합니다.</li>
                                       <li> (1) 작업 건수 환불금액 = 결제금액 - (진행한 작업 건수 × 건단가)</li>
                                       <li> (2) 작업 노출 기간 환불금액 = 결제금액 ÷ 30일 × 작업 노출되지 않은 일수</li>
                                       <li class="refund_h">03. 협의기간, 작업 기간, 광고기간에 따른 환불 규정</li>
                                       <li> - 전문가가 작업을 시작하기 전, 의뢰인과 작업 일정 및 가능 여부를 논의하는 '협의기간'에는 100% 환불가능합니다.
                                       </li>
                                       <li> - 사전 협의된 광고기간(노출 기간)에는 작업건수/노출기간에 따라 환불 금액이 산출됩니다.</li>
                                       <li> (단, 의뢰인의 과실이나 단순 변심, 광고 매체 규제 등으로 인한 불이익은 환불이 불가)</li>
                                       <li class="refund_h">04. 컨설팅·노하우 강의 및 자료, 솔루션 등 서비스 상품을 받은 이후에는 환불이
                                          불가합니다.
                                       </li>
                                       <li class="refund_h">05. 이메일 · 메시지 (솔루션 포함) 발송 이후에는 환불이 불가합니다.</li>
                                    </ul>
                                 </div>
                              </div>
                           </div>
                           <!-- 실적/평가 -->
                           <div class="project n5" id="performanceEvaluation" target="blank">
                              <div class="project__description5">
                                 <h3 class="jua">지존파워동민 님의 실적</h3>
                                 <div>
                                    <p>
                                       누적 주문 건수 : 7건<br> 누적 거래액 : 245,000원
                                    </p>
                                    <h3 class="jua">지존파워동민 님의 평가</h3>
                                    <!-- 댓글 하나 -->
                                    <div class="col-xs-offset-1 col-xs-10 comment">
                                       <div class="row">
                                          <div class="col-xs-4">
                                             <span>
                                                <div id="commentStar1" class="starSpacing">
                                                                <i class="fas fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                      </div>
                                             </span>
                                          </div>
                                          <div class="starLocation2">
                                             <input type="text" value="1" class="star2" id="star1">
                                          </div>
                                          <div class="pull-right">
                                             <span>찐유니짱이다 20.10.16</span>
                                          </div>
                                       </div>
                                       <textarea class="col-xs-12 youComment" disabled>지존파워동민님에게 웹 개발을 맡기니 파이널 프로젝트를 쉽게 끝낼 수가 있었습니다.
                                                        </textarea>
                                    </div>
                                    <div class="col-xs-offset-1 col-xs-10 reply">
                                       <p class=" user_title_text"><img src="resources/img/cdm5.jpg"
                                          class="main_rank_index"> 지존파워동민
                                          <span class="pull-right fs13">20.10.17</span>
                                       </p>
                                       <textarea class="col-xs-12 youComment1" disabled>찐유니짱님 말씀 감사합니다. 다음에 또 맡기시면 엄청나게 저렴한 가격에 해드리겠습니다.
                                                        </textarea>
                                       <br>
                                    </div>
                                    <!-- 댓글 하나 -->
                                    <div class="col-xs-offset-1 col-xs-10 comment">
                                       <div class="row">
                                          <div class="col-xs-4">
                                             <span>
                                                <div id="commentStar2" class="starSpacing">
                                                                <i class="fas fa-star"></i>
                                                                <i class="fas fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                                <i class="far fa-star"></i>
                                                            </div>
                                             </span>
                                          </div>
                                          <div class="starLocation2">
                                             <input type="text" value="2" class="star2" id="star2">
                                          </div>
                                          <div class="pull-right">
                                             <span>찐유니짱이다 20.10.16</span>
                                          </div>
                                       </div>
                                       <textarea class="col-xs-12 youComment" disabled>지존파워동민님에게 웹 개발을 맡기니 파이널 프로젝트를 쉽게 끝낼 수가 있었습니다.
                                                        </textarea>
                                    </div>
                                    <div class="col-xs-offset-1 col-xs-10 reply">
                                       <p class=" user_title_text"><img src="resources/img/cdm5.jpg"
                                          class="main_rank_index"> 지존파워동민
                                          <span class="pull-right fs13">20.10.17</span>
                                       </p>
                                       <textarea class="col-xs-12 youComment1" disabled>찐유니짱님 말씀 감사합니다. 다음에 또 맡기시면 엄청나게 저렴한 가격에 해드리겠습니다.
                                                        </textarea>
                                       <br>
                                    </div>
                                    <!-- 댓글 하나 -->
                                    <div class="col-xs-offset-1 col-xs-10 comment">
                                       <div class="row">
                                          <div class="col-xs-4">
                                             <span>
                                                <div id="commentStar3" class="starSpacing">
                                                	<i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="far fa-star"></i>
                                                </div>
                                             </span>
                                          </div>
                                          <div class="starLocation2">
                                             <input type="text" value="4" class="star2" id="star3">
                                          </div>
                                          <div class="pull-right">
                                             <span>찐유니짱이다 20.10.16</span>
                                          </div>
                                       </div>
                                       <textarea class="col-xs-12 youComment" disabled>지존파워동민님에게 웹 개발을 맡기니 파이널 프로젝트를 쉽게 끝낼 수가 있었습니다.
                                                        </textarea>
                                    </div>
                                    <div class="col-xs-offset-1 col-xs-10 reply">
                                       <p class=" user_title_text"><img src="resources/img/cdm5.jpg"
                                          class="main_rank_index"> 지존파워동민
                                          <span class="pull-right fs13">20.10.17</span>
                                       </p>
                                       <textarea class="col-xs-12 youComment1" disabled>찐유니짱님 말씀 감사합니다. 다음에 또 맡기시면 엄청나게 저렴한 가격에 해드리겠습니다.
                                                        </textarea>
                                       <br>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </section>
                  </div>
               </div>
            </div>
            <!-- 우측 가격 -->
            <div class="col-xs-3 buy_div_detail">
               <div class="row">
                  <!-- 시간당 요금 -->
                  <div class="buy_option_detail">
                     <br>
                     <p class="buy_text_detail">시간당 요금</p>
                     <span class="price_font_detail" id="price1"></span>
                     <span class="won">원</span>
                  </div>
                  <!-- 구매 시간 -->
                  <div class="buy_option_detail">
                     <p class="buy_text_detail">구매 시간</p>
                     <span id="buy_timebutton_down_detail" class="buy_button">
                     <img src="resources/img/left_button_sgm.png" class="buy_button1">
                     </span>
                     <span class="buy_number_detail">
                     <input type="text" value="1" class="inputValue" id="buy_time_detail"></input>
                     </span>
                     <span id="buy_timebutton_up_detail" class="buy_button">
                     <img src="resources/img/right_button_sgm.png" class="buy_button1">
                     </span>
                     <p class="buy_text_detail time">시간</p>
                  </div>
                  <!-- 구매 기간 -->
                  <div class="buy_option_detail">
                     <p class="buy_text_detail">구매 기간</p>
                     <span id="buy_daybutton_down_detail" class="buy_button">
                     <img src="resources/img/left_button_sgm.png" class="buy_button1">
                     </span>
                     <span class="buy_number_detail bnd">
                     <input type="text" value="1" class="inputValue" id="buy_day_detail"></input>
                     </span>
                     <span id="buy_daybutton_up_detail" class="buy_button">
                     <img src=" resources/img/right_button_sgm.png" class="buy_button1">
                     </span>
                     <p class="buy_text_detail day">일</p>
                  </div>
                  <div class="col-xs-12 buy_button2_detail">
                     <!-- Button trigger modal -->
                     <button type="button" class="btn button1 btn-block impu" data-toggle="modal" id="click1"
                        data-target="#myModal">
                     바로 구매
                     </button>
                     <br>
                     <button type="button" class="button1 chatting mr12">채팅</button>
                     <button type="button" class="button1 zzim ovhi">
                     <i class="far fa-heart"></i>
                     <i class="fas fa-heart"></i> 찜</button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <br>
      <!-- Modal -->
      <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog modal-lg mdl">
            <div class="modal-content">
               <form>
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
                     <h4 class="modal-title mt fs2rem" id="myModalLabel" href="">주문/ 결제하기</h4>
                  </div>
                  <div class="modal-body mb">
                     <div class="col-xs-offset-1">
                        주문 합계 : <span class="sum"></span><span>원</span><br><br>
                        지시사항<br>
                        <input id="order" type="text" class="pm"></input><br><br>
                        결제수단<br>
                        <input id="card" type="radio" name="check" value="creaditCard"> <label for="card">
                        신용카드</label><br>
                        <input id="money" type="radio" name="check" value="dwb"> <label for="money"> 무통장
                        입금</label><br>
                        <input id="kakao" type="radio" name="check" value="kakaoPay"> <label for="kakao">
                        카카오페이</label><br>
                     </div>
                  </div>
                  <div class="modal-footer">
                     <input type="checkbox" id="promiseCheck"> 약관에 동의 합니다
                     <button type="button" class="button1 buy">결제하기</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
      <!-- 화살표 -->
      <button class="arrow-up">
      <i class="fas fa-arrow-up"></i>
      </button>
      <!-- 채팅아이콘 -->
      <div class="chatIcon font_jua">
         <img src="./resources/img/chat-icon.png" class="iconImg">
      </div>
      <!-- 위치 -->
      <div class="location"></div>
      <!-- 임시 풋터 아이프레임 -->
      <%@ include file="../../common/footer.jsp" %>
      <script>
         // 상수
         const workBtnContainer = document.querySelector('.work__categories');
         const ProjectContainer = document.querySelector('.work__projects');
         const Projects = document.querySelectorAll('.project');
         const upup = document.querySelector('.category_detail');
         const upHeight = upup.getBoundingClientRect().height;
     
         // 스크롤
         workBtnContainer.addEventListener('click', (event) => {
             const target = event.target;
             const link = target.dataset.link;
             if (link == null) {
                 return;
             }
             workBtnContainer.classList.remove('open');
             console.log(event.target.dataset.link);
             scrollIntoView(link);
         });
         
         // 화살표 보이기
         const arrowUp = document.querySelector('.arrow-up');
         document.addEventListener('scroll', () => {
             if (window.scrollY > upHeight / 2) {
                 arrowUp.classList.add('visible');
             } else {
                 arrowUp.classList.remove('visible');
             }
         });
         
         // 화살표 버튼
         arrowUp.addEventListener('click', () => {
             scrollIntoView('.location');
         });
         
         // 스크롤 부드럽게 움직이는 함수
         function scrollIntoView(selector) {
             const scrollTo = document.querySelector(selector);
             scrollTo.scrollIntoView({ behavior: 'smooth' });
         }
         
         // 별표
         /*          $("#rateYo").rateYo({
                 rating: $(".star1").val(),
                 ratedFill: "#FABE00",
                 readOnly: true
                     });  */
         
         (function () {
             // 인증
             var iden = [$(".identified1").val(),
             $(".identified2").val(),
             $(".identified3").val(),
             $(".identified4").val(),
             $(".identified5").val()]
         
             for (i = 0; i < iden.length; i++) {
                 var name = ".i" + (i + 1);
                 if (iden[i] == 1) {
                     $(name).css("color", "var(--color-orange)");
                 }
             }
         
             // 소셜 미디어 보이기
             var social = [$(".social1").val(),
             $(".social2").val(),
             $(".social3").val(),
             $(".social4").val(),
             $(".social5").val(),
             $(".social6").val(),
             $(".social7").val()]
         
             for (i = 0; i < social.length; i++) {
                 var name = ".s" + (i + 1);
                 if (social[i] == 1) {
                     $(name).css("display", "inline");
                 }
             }
         
             // 반복문으로 별 만들어보기
             for (var i = 0; i < 3; i++) {
                 var mDiv = document.createElement("div");
                 var iValue = document.getElementById("star" + (i + 1)).value;
                 mDiv.id = "commentStar" + i;
                 // mDiv.className = "starStar";
                 // $(".star").append(mDiv);
                 console.log(mDiv);
                 console.log(iValue);
             }
             console.log("---------------------------------------------------------")
             console.log(iValue.length);
         
         /*             for (var i = 0; i < iValue.length; i++) {
                 var starRate = $("#commentStar" + (i + 1)).rateYo({
                     rating: $("#star" + (i + 1)).val(),
                     ratedFill: "#FABE00",
                     starWidth: "20px",
                     readOnly: true
                 });
             }
         */
         
         
             // $("#commentStar1").rateYo({
             //     rating: $("#star1").val(),
             //     ratedFill: "#FABE00",
             //     starWidth: "20px",
             //     readOnly: true
             // });
         
             // $("#commentStar2").rateYo({
             //     rating: $("#star2").val(),
             //     ratedFill: "#FABE00",
             //     starWidth: "20px",
             //     readOnly: true
             // });
         
             // $("#commentStar3").rateYo({
             //     rating: $("#star3").val(),
             //     ratedFill: "#FABE00",
             //     starWidth: "20px",
             //     readOnly: true
             // });
         
             // https://rateyo.fundoocode.ninja/#
         
             // 구매 시간
             $('#buy_timebutton_down_detail').click(function () {
                 var num = $('#buy_time_detail').val();
         
                 if (num > 1) {
                     num--;
                     $('#buy_time_detail').val(num);
                 }
             });
         
             $('#buy_timebutton_up_detail').click(function () {
                 var num = $('#buy_time_detail').val();
         
                 if (num < 99) {
                     num++;
                     $('#buy_time_detail').val(num);
                 }
             });
         
             // 구매 기간
             $('#buy_daybutton_down_detail').click(function () {
                 var num = $('#buy_day_detail').val();
         
                 if (num > 1) {
                     num--;
                     $('#buy_day_detail').val(num);
                 }
             });
         
             $('#buy_daybutton_up_detail').click(function () {
                 var num = $('#buy_day_detail').val();
                 if (num < 99) {
                     num++;
                     $('#buy_day_detail').val(num);
                 }
             });
         }());
         
         // 콤마 찍기
         function addComma(num) {
             var regexp = /\B(?=(\d{3})+(?!\d))/g;
             return num.toString().replace(regexp, ',');
         }
         
         var num = $('.price1').val();
         $('#price').text(addComma(num));
         $('#price1').text(addComma(num));
         
         // 합계
         $('#click1').click(function () {
             var sum = ($('.price1').val() * $('#buy_time_detail').val()) * $('#buy_day_detail').val();
             $('.sum').text(addComma(sum));
         });
         
         // 채팅, 찜, 결제
         const chatting = document.querySelector('.chatting');
         const zzim = document.querySelector('.zzim');
         
         chatting.addEventListener('click', (e) => {
             alert("채팅 기능 구현 중입니다.");
         });
         
         var number = 1;
         $('.fas.fa-heart').css("display", "none");
         
         zzim.addEventListener('click', (e) => {
             if (number == 1) {
                 $('.fas.fa-heart').css("color", "var(--color-dark-pink)");
                 $('.zzim').css("color", "var(--color-dark-pink)");
                 $('.far.fa-heart').css("display", "none");
                 $('.fas.fa-heart').css("display", "inline");
         
                 number = 0;
                 alert("찜 되었습니다.");
         
             } else if (number == 0) {
         
                 alert("찜 해제 되었습니다.");
                 $('.far.fa-heart').css("color", "var(--color-black)");
                 $('.zzim').css("color", "var(--color-black)");
                 $('.fas.fa-heart').css("display", "none");
                 $('.far.fa-heart').css("display", "inline");
         
                 number = 1;
             };
         });
         
         // 결제 선택
         $(".buy").click(function () {
             if ($("#promiseCheck").is(":checked")) {
                 alert($('.sum').text());
         
                 // 지시사항
                 alert($("#order").val());
         
                 // 신용카드
                 if ($("#card").is(":checked")) {
                     alert("신용카드 선택되었습니다.");
                 }
         
                 // 무통장 입금
                 if ($("#money").is(":checked")) {
                     alert("무통장입금 선택되었습니다.")
                 }
         
                 //kakao
                 if ($("#kakao").is(":checked")) {
                     window.open("https://mockup-pg-web.kakao.com/v1/52c79c185c00b85b4a5e7fc28c64783ce29020633be8d2457a4f87f692f147d9/info", "_blank", "top=0", "left=200", "window.outerWidth=30", "window.outerHeight=30");
                 }
             } else {
                 alert("체크해주세요");
             }
         });
      </script>
   </body>
</html>