<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- JQUERY-->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- 폰트 어썸 -->
<script src="https://kit.fontawesome.com/fef720d792.js"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"
	href="resources/css/productDetail.css">

<title>Document</title>
</head>

<body class="product_body">
	<%@ include file="../../common/header.jsp"%>
	<!-- 전체를 감싸고 있는 div -->
	<div class="all_wrapper">

		<!-- 스크롤 시 나타나는 상단 메뉴 네비게이션 -->
		<div class="p2p_class_nav">
			<ul>
				<li><a href="javascript:;">포트폴리오</a></li>
				<li><a href="javascript:;">상품소개</a></li>
				<li><a href="javascript:;">SNS & 유튜브</a></li>
				<li><a href="javascript:;">환불규정</a></li>
				<li><a href="javascript:;">상품 구매자 리얼 댓글</a></li>
			</ul>
		</div>
		<!-- ************************************* -->
		<!-- 왼쪽 영역 -->
		<div class="product_container">
			<!-- 상품명, 능력자이름, 별점 -->
			<section class="product_info">
				<ul class="product_tag" id="tag">
				</ul>
				<h1 class="product_title">${ product.title }</h1>

				<div class="master_info">
					<div class="master_img">
						<img src="resources/masterImg/${ master.mProPicRe }">
					</div>
					<div class="short_info">
						<em class="master_nickname">${ master.mNickname }</em> <span
							class="master_star"> <i class="star_img"> <img
								src="resources/img/star.png">
						</i> <i class="grade_total"><span id="starPoint"></span>&nbsp;<sapn>(${replyCount})</sapn>
						</i>
						</span>
					</div>
					<div class="iclass1">
						<span class="i1"> <i class="far fa-address-card"></i>
						</span> <span class="i2"> <i class="fas fa-graduation-cap"></i>
						</span> <span class="i3"> <i class="fas fa-medal"></i>
						</span>
					</div>
				</div>
			</section>
			<!-- // 상품명, 능력자이름, 별점 -->

			<!-- 상품 이미지 -->
			<section class="p2p_class_img">
				<!-- Swiper -->
				<div class="img_area">
					<img src="resources/pUploadFiles/${ product.renamePic }">
				</div>
			</section>
			<!-- // 상품 이미지 -->

			<!-- 포트폴리오 -->
			<section class="idx sec_common p2p_class_intro">
				<div class="p_col_left">
					<p class="col_title">마스터 포트폴리오</p>
				</div>
				<div class="p_col_right">
					<div>
						<p class="text_area">${ product.portfolio }</p>
					</div>
				</div>
			</section>
			<!-- // 포트폴리오 -->

			<!-- 상품소개 -->
			<section class="idx sec_common p2p_class_detail">
				<div class="p_col_left">
					<p class="col_title">상품 소개</p>
				</div>
				<!--//p_col_left-->
				<div class="p_col_right">
					<div>
						<p class="text_area">${ product.introduce }</p>
					</div>
				</div>
			</section>
			<!-- // 상품소개 -->

			<!-- 마스터 SNS 및 유튜브 -->
			<section class="idx sec_common p2p_class_detail">
				<div class="p_col_left">
					<p class="col_title">마스터 SNS & 유튜브</p>
				</div>
				<!--//p_col_left-->
				<div class="p_col_right">
					<div class="sns_flex_container">
						<div class="sns_img_container">
							<a href=""> <img src="resources/img/git.png">
							</a>
						</div>
						<div class="sns_img_container">
							<a href="${ sns.snsBlog }"> <img src="resources/img/blog.png">
							</a>
						</div>
						<div class="sns_img_container">
							<a href="${ sns.snsTwit }"> <img
								src="resources/img/twitter.png">
							</a>
						</div>
						<div class="sns_img_container">
							<a href="${ sns.snsInsta }"> <img
								src="resources/img/instagram.png">
							</a>
						</div>
					</div>

					<hr class="hr_sns">

					<div>
						<div>
							<input class="youtube_show" type="hidden"
								value="${ sns.snsYou1 }">
							<div></div>
						</div>
						<div>
							<input class="youtube_show" type="hidden"
								value="${ sns.snsYou2 }">
							<div></div>
						</div>
						<div>
							<input class="youtube_show" type="hidden"
								value="${ sns.snsYou3 }">
							<div></div>
						</div>
					</div>
			</section>
			<!-- // 마스터 SNS 및 유튜브 -->

			<!-- 환불규정 -->
			<section class="idx sec_common p2p_class_detail">
				<div class="p_col_left">
					<p class="col_title">환불규정</p>
				</div>
				<!--//p_col_left-->
				<div class="p_col_right">
					<div>
						<p class="text_area">
						<ul class="refund">
							<li class="refund_h">01. 작업 시작 전 100% 환불 가능합니다.</li>
							<li>(작업 시작 후에도 결과물이 완성되지 않았을 경우에는 100% 환불 가능합니다.)</li>
							<li class="refund_h">02. 판매자의 사정으로 작업이 약속했던 일자보다 지연되거나 그에
								상응하는 사안이 발생하였을 경우</li>
							<li class="refund_h">진행한 작업 건수 또는 작업 노출 일수를 계산하여 제외한 금액을 환불
								가능합니다.</li>
							<li>(1) 작업 건수 환불금액 = 결제금액 - (진행한 작업 건수 × 건단가)</li>
							<li>(2) 작업 노출 기간 환불금액 = 결제금액 ÷ 30일 × 작업 노출되지 않은 일수</li>
							<li class="refund_h">03. 협의기간, 작업 기간, 광고기간에 따른 환불 규정</li>
							<li>- 전문가가 작업을 시작하기 전, 의뢰인과 작업 일정 및 가능 여부를 논의하는 '협의기간'에는
								100% 환불가능합니다.</li>
							<li>- 사전 협의된 광고기간(노출 기간)에는 작업건수/노출기간에 따라 환불 금액이 산출됩니다.</li>
							<li>(단, 의뢰인의 과실이나 단순 변심, 광고 매체 규제 등으로 인한 불이익은 환불이 불가)</li>
							<li class="refund_h">04. 컨설팅·노하우 강의 및 자료, 솔루션 등 서비스 상품을 받은
								이후에는 환불이 불가합니다.</li>
							<li class="refund_h">05. 이메일 · 메시지 (솔루션 포함) 발송 이후에는 환불이
								불가합니다.</li>
						</ul>
						</p>
					</div>
				</div>
			</section>
			<!-- // 환불규정 -->
		

			<section class="idx sec_common p2p_class_cmt" id="review">
				<div class="p_col_left">
					<p class="col_title">상품 구매자 리얼 댓글</p>
				</div>
				<div class="p_col_right">
					<div class="review_sum">
						<ul class="review_list">
							<li>평균 별점<span class="avg">5.0</span></li>
						</ul>
					</div>
					<div class="inputReview">
						<textarea placeholder="상품을 구매한 회원만 댓글을 작성 할 수 있습니다." rows="3" id="rContent"></textarea>
						<input type="hidden" value="0" id="firstno"/>
						<input type="hidden" value="1" id="firstlevel"/>
						<button id="cmt_btn">
							댓글<br>작성
						</button>
					</div>
					<!-- 댓글 영역 -->
					<div id="innerReviewDiv">
						<ul class="cmt_wrap">
							<li class="list">
								<div class="tutee_info">
									<span class="img"> <img src="resources/img/동민_PIC.jpg">
									</span>
									<div class="tutee">
										<span class="name">천동민</span>
										<div class="date">
											<p>2020-11-05 22:35:49</p>
										</div>
									</div>
								</div>
								<div class="cmt">
									<p class="hide">오늘 강의들었는데 너무 좋았어요</p>
								</div>
							</li>
							<hr>
						</ul>
					</div>
					<!--// 댓글영역 -->
				</div>
			</section>
		</div>
		<!-- // 왼쪽 영역 -->

		<!-- 오른쪽 가격 영역 -->
		<div class="sticky_area" id="sticky">
			<div class="sticky_navi">
				<h2>상품 가격</h2>
				<ul class="p_flex day_list">
					<li>월</li>
					<li>화</li>
					<li>수</li>
					<li>목</li>
					<li>금</li>
					<li>토</li>
					<li>일</li>
				</ul>
				<ul class="p_flex job_where">
					<li>자택(온라인)</li>
					<li>출장</li>
					<li class="dayOn">asd</li>
				</ul>
				<hr>
				<ul class="p_flex">
					<li>시간당 요금</li>
					<li><span>${ product.price }&nbsp;원</span></li>
				</ul>
				<ul class="p_flex">
					<li>구매 시간</li>
					<li class="number_change"><i
						class="fas fa-angle-left detail_btn"></i> <span>1</span> <i
						class="fas fa-angle-right detail_btn"></i></li>
					<li>시간</li>
				</ul>
				<ul class="p_flex">
					<li>구매 기간</li>
					<li class="number_change"><i
						class="fas fa-angle-left detail_btn"></i> <span>1</span> <i
						class="fas fa-angle-right detail_btn"></i></li>
					<li>일간</li>
				</ul>
				<ul class="btn_area btn_m">
					<li class="wish"><a href="#" onclick="heart();">
						<c:if test="${wishList.no != product.no }">
							<i class="fa-heart far"></i>
						</c:if>	
						<c:if test="${wishList.no == product.no }">
							<i class="fa-heart fas"></i>
						</c:if>	
					</a></li>
					<li class="apply"><a href="#" onclick="alert('로그인이 필요합니다');">
							바로 구매하기 </a></li>
				</ul>
				<ul class="btn_area">
					<li class="apply-2"><a href="#" onclick="alert('로그인이 필요합니다');">
							채팅하기 </a></li>
				</ul>
			</div>
		</div>
		<!-- // 오른쪽 가격 영역 -->

	</div>
	<!-- 전체를 감싸고 있는 div -->

	<!-- 댓글 별점 모달 -->
	<div class="modal_container">
		<div class="cmt_modal">
			<div class="modal_title">별점주기</div>
			<div class="modal_star">
				<!-- far = 빈 별 / fas = 꽉 찬 별 -->
				<i class="fa-star far"></i> <i class="fa-star far"></i> <i
					class="fa-star far"></i> <i class="fa-star far"></i> <i
					class="fa-star far"></i>
			</div>
			<div>
				<button class="star_btn" id="addReply">별점 등록</button>
			</div>
		</div>
	</div>
	<input type="hidden" value="${ loginUser.email }" name="email" class="wishEmail"/>
	<input type="hidden" value="${ product.no }" name="no" class="wishProduct"/>
	<input type="hidden" value="${ wishList.no }" name="wNo" class="wishList"/>
	<script>
	    // 댓글창 enter 키 이벤트
	    $(document).on('keydown', '#rContent', function(e){
	        if(e.keyCode == 13 && !e.shiftKey) {
	            e.preventDefault(); // 엔터키가 입력되는 것을 막아준다.
	            $(".modal_container").css("display", "block"); // 모달팝업 열기
	        }
	    });
	
		// 댓글 등록 AJAX
		$(function(){
			
			// 댓글 조회 ajax
			getReplyList();
			
			// 사용자 댓글 등록 ajax
			$("#addReply").on("click",function(){
				
				var pNo = "${ product.no }";	// 상품 번호
				var rContent = $("#rContent").val(); // 댓글 내용
				var rStar = $(".modal_star").find(".fas").length; // 꽉찬 별 갯수당 숫자로 치환
				var rName = "${ sessionScope.loginUser.name }"; // 댓글 작성자
				var refRno = $("#firstno").val(); // 댓글 참조 번호
				var rLevel = $("#firstlevel").val(); // 댓글 레벨
				
	 			$.ajax({
					url:"addReply.do",
					data:{
						pNo:pNo,
						rContent:rContent,
						rStar:rStar,
						rName:rName,
						refRno:refRno,
						rLevel:rLevel
					},
					type:"post",
					success:function(data){
						if(data == "success"){
							getReplyList();
							
							$("#rContent").val(""); // 댓글 초기화
							$(".modal_container").css("display", "none"); // 모달 팝업 닫기
						    $(".modal_star i").addClass('far');	// 별 바꾸기
						    $(".modal_star i").removeClass('fas'); // 별 비우기
						}
					},error:function(request,status,errorData){
						console.log(request.status + ":" + errorData);
					}
				});
			});
		});
		
		// 댓글 목록 AJAX
		function getReplyList(){
			
			var pNo = "${ product.no }";
			
			$.ajax({
				url:"rList.do",
				data:{pNo:pNo},
				dataType:"json",
				success:function(data){
					
					console.log(data);
 					$cmtWrap = $(".cmt_wrap");
					$cmtWrap.html("");
 					
					
					var $li; // 1단계
					
					var $divInfo; // 2단계
					
					var $divCmt; // 2-1단계
					
					var $span; // 3단계
					var $divTutee; // 3단계
					
					var $pCon; // 3-1단계
					
					var $img;	// 4-1 단계
					
					var $spanName; // 4-2단계
					var $divDate; // 4-2단계
					
					var $pDate; // 5단계
					var $hr; // 구분선
					
					if(data.length > 0){ // 댓글이 있을 경우
						for(var i in data){
							
							$li = $("<li class='list'>"); // 1단계
							
							$divInfo = $("<div class='tutee_info'>"); // 2단계
							
							$divCmt = $("<div class='cmt'>"); // 2-1단계
							
							$span = $("<span class='img'>"); // 3단계
							$divTutee = $("<div class='tutee'>"); // 3단계
							
							$pCon = $("<p class='hide'>").text(data[i].rContent); // 3-1단계
							
							$img = $("<img src='resources/img/동민_PIC.jpg'>"); // 4-1 단계
							
							$spanName = $("<span class='name'>").text(data[i].rName); //4-2단계
							$divDate  = $("<div class='date'>"); // 4-2단계
							
							$pDate = $("<p>").text(data[i].rCreateDate); // 5단계
							
							$hr = $("<hr>"); // 구분선
							
							$divDate.append($pDate); // 5단계 추가

							$span.append($img);	// 4-1 단계 추가
							
							$divTutee.append($spanName); // 4-2단계 추가
							$divTutee.append($divDate);	// 4-2단계 추가
							
							$divInfo.append($span); // 3단계 추가
							$divInfo.append($divTutee); // 3단계 추가
							
							$divCmt.append($pCon); // 3-1단계 추가 추가
							
							$li.append($divInfo); // 2단계 추가
							$li.append($divCmt); // 2-1단계 추가
							
							$cmtWrap.append($li); // ul태그에 1단계 추가
							$cmtWrap.append($hr); // 구분선 추가!!
						}
					}
				},error:function(request,status,errorData){
					console.log(request.status + ":" + errorData);
				}
			});
		}
	
	    // 별찍기
	    $(".modal_star i").click(function(){
	      // 빈 별일 때
	      if($(this).hasClass('far')){
	        // 자신과 뒤의 형제 빈 별 지우고
	        $(this).removeClass('far').prevAll('i').removeClass('far');
	        // 자신과 뒤의 형제 꽉찬 별 그리기.
	        $(this).addClass('fas').prevAll('i').addClass('fas');
	      }
	      // 꽉찬 별일 때
	      else{
	        // 자신 앞의 형제 꽉찬 별 지우고 빈 별 그리기.
	        $(this).nextAll('i').removeClass('fas').addClass('far');
	      }
	    })

	    // 댓글 작성 클릭 시 별점 모달 팝업 
	    $("#cmt_btn").click(function () {
	      $(".modal_container").css("display", "block");
	    });
	    // 모달 팝업 배경 클릭 시 닫기
	    $(".modal_container").click(function (e) {
	      // 모달 닫고
	      $(".modal_container").css("display", "none");
	      // 찍은 별 초기화
	      $(".modal_star i").addClass('far');
	      $(".modal_star i").removeClass('fas');
	    });
	    //  모달 팝업 클릭 시 부모 요소 이벤트 버블링 차단
	    $(".cmt_modal").click(function (e) {
	      e.stopPropagation();
	    });
	    
	</script>

	<script>
		// 찜하기
		let wNum = $('.wishList').val();      // ${wishList.no} 벨류값
		let pNum = $('.wishProduct').val();   // ${product.no} 벨류값
		if(wNum != pNum){      // insert값이 없으면 heart()실행 (찜등록하기위함)
		function heart(){
 				let email = $(".wishEmail").val();
				let no = $(".wishProduct").val();
				
				   var data = {
						   email : email,
						     no : no
						     };
				   
				$.ajax({
				    url : "wishInsert.do",
				    type : "post",
				    data : data,
				    success : function(result){
				    	if(result == "ok"){
				    		alert("찜 성공");
				    		location.reload();
				    	}
				    },
				    error : function(result){
				    	if(result == "fail"){
				    		alert("이미 찜등록한 상품입니다.");
				    	}
				    }
				   });
		}
		}
		
		if(wNum == pNum){  		// insert값이 있으면 heart()실행 (찜해제하기위함)
			function heart(){
				  let result = confirm('찜해제 하시겠습니까?');       // 확인창
				  let pNo = $('.wishProduct').val(); 			// pNo 벨류값
				  
				  if(result){
					$.ajax({
						url:"wishDelete.do",
						data:{no: pNo},
						type:"post",
						success:function(data){
							if(data == "ok"){
								alert('찜해제 완료');
								location.reload();				// 삭제된걸 보여주기위해 새로고침을 해준다.
							}
						},error:function(request,status,errorData){
							console.log(request.status + ":" + errorData);
						}
					})
				  }
			}
			}
	
		// 별 넣기
		let star = "${master.mStar}";
		$("#starPoint").html(star.substring(0,3));
		
		// 시간 CSS 변화
		let starttime = "${master.mStartTime}";
		let endtime = "${master.mEndTime}";
		$(".job_where li:last-child").html(starttime + " ~ " + endtime);
		
		// 자택 / 출징 CSS 변화
		let goho = "${master.mWorkStyle}";
		let gohoDay = goho.split(",");
		let goholist = $(".job_where li");
		for(var i = 0; i < 2; i++){
			for(var j = 0; j < 2; j++){
 				if(goholist[j].innerText.match(goho[i]) != null){
					goholist[j].classList.add('dayOn');
				}
			}
		}
		
		// 요일 유무에 따른 CSS 변화
		let recDay = "${master.mWorkDay}";
		let arrDay = recDay.split(",");
		let daylist = $(".day_list li");
		for(var i = 0; i < arrDay.length; i++ ){
			for(var j = 0; j < daylist.length; j++ ){
				if(arrDay[i] === daylist[j].innerText){
					daylist[j].classList.add('dayOn');
				}
			}
		}
	
		// youtube 유무에 따른 css 변화
		let youLink = $(".youtube_show");
		for(var i = 0; i < youLink.length; i++){
			if(youLink[i].getAttribute("value") == "https://"){
				youLink[i].parentNode.removeChild(youLink[i]);
			}
		}
	
		// sns 클릭 및 유무에 따른 css 변경
       	let snsLink = $(".sns_img_container a");
       	for(var i = 0; i < snsLink.length; i++){
       		if(snsLink[i].getAttribute("href") == ""){
       			snsLink[i].parentNode.classList.add('snsNone');
       			snsLink[i].removeAttribute("href");
       			snsLink[i].onclick = function(){
       				alert("능력자가 등록하지 않았어요ㅠㅠ");
       			}
       		}
       	}
       	
      </script>

	<script>
  		// tag 추가
		let list = "${ product.category }";
		let splitarr = list.split(",");
		for(var i = 0; i < splitarr.length; i++){
			$("#tag").append("<li>#" + splitarr[i] + "</li>");
		}
	</script>

	<script>
    // 숫자 올리기
    $(".number_change .fa-angle-right").click(function(){
      let a = $(this).prev().html();
      a++;
      $(this).prev().html(a);
    });
    $(".number_change .fa-angle-left").click(function(){
      let a = $(this).next().html();
      if(a == 1){
        return;
      }
      a--;
      $(this).next().html(a);
    });
  </script>

	<script>
    // 상단 메뉴바 보이기
    const upNav = document.querySelector('.p2p_class_nav');
    const rightNav = document.querySelector('.sticky_area');
    document.addEventListener('scroll', () => {
      if (window.scrollY > 700) {
        upNav.classList.add('fixed');
        rightNav.classList.add('fixed');
      } else {
        upNav.classList.remove('fixed');
        rightNav.classList.remove('fixed');
      }
    });

    // 상단 메뉴바 클릭시 이동   
    var p2pGnb = $('.p2p_class_nav ul li')
    var p2pCont = $('.product_container > .idx')
    p2pGnb.on('click', function (e) {
      e.preventDefault();
      var target = $(this);
      var index = target.index();
      var section = p2pCont.eq(index);
      var offset = section.offset().top - 100;
      $('html, body').animate({ scrollTop: offset }, 800);
    });
  </script>

	<script>
    // 유튜브 iframe 생성
    let youtube = function (input) {
      var videoId = $(input).val();
      var myId = getId(videoId);

      function getId(url) {
        var regExp = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
        var match = url.match(regExp);

        if (match && match[2].length == 11) {
          return match[2];
        } else {
          return 'error';
        }
      }

      $(input).next().html('<iframe src="//www.youtube.com/embed/' + myId + '" frameborder="0"></iframe>');
    };

    (function () {
      let a = document.getElementsByClassName("youtube_show");
      let obj = { 1: a[0], 2: a[1], 3: a[2] }

      let all = document.getElementsByTagName("input");
      $(all).attr("readonly", true);

      for (link in obj) {
        youtube(obj[link]);
      }
    })();
  </script>
	<%@ include file="../../common/footer.jsp"%>
</body>
</html>