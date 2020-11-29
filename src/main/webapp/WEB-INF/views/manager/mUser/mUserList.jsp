<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- JUA 폰트-->
      <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
           <!-- 합쳐지고 최소화된 최신 CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
      <!-- 부가적인 테마 -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<!-- css -->
	  <link rel="stylesheet" type="text/css" href="resources/css/mUserList.css">
   </head>
   <body>
      <div class="header">
         <%@ include file="../common/mheader.jsp" %>
      </div>
      <div class="left-bar">
         <%@ include file="../common/mLeftBar.jsp" %>
      </div>
      <div class="section">
         <!-- 내용 안의 헤더 부분 -->
         <div class="mainheader_mUserList">
            <div class="cate_Managerheader">회원 관리 > <U>회원 리스트</U></div>
            <div class="title_Managerheader">회원 리스트</div>
         </div>
         
         <form action="mUserList.do" method="POST">
         <div class="mainsection_mUserList">
            <div class="searchhbox_mUserList">
            
               <!-- 검색 테이블 -->
               <table class="searchhbox_table_mUserList">
                  <tr>
                     <!-- 검색어 -->
                     <td class="searchtable_title_mUserList">검색어</td>
                     <td class="searchtable_content_mUserList">
                        <div class="select_mybuylist">
                        
                           <select class="bdbox_mUserList" name="search_way">
                               <option value="email">이메일</option>
                              <option value="rank">등급</option>
                              <option value="name">이름</option>
                              <option value="nickname">닉네임</option>
                           </select>

                           <input type="text" class="searchtext_mUserList" name="search_box"></input>
                        </div>
                     </td>
                  </tr>
                  <!-- 회원구분 -->
                  <tr>
                     <td class="searchtable_title_mUserList">회원구분</td>
                     <td>
                        <span class="checkbox_mUserList">
                        <input class="checkboxes_mUserList" name="chk_user" type="checkbox"value="1">
                        <span>일반회원</span>
                        <input class="checkboxes_mUserList" name="chk_user" type="checkbox"value="2">
                        <span>능력자</span>
                        <input class="checkboxes_mUserList" name="chk_user" type="checkbox"value="3">
                        <span>탈퇴회원</span>
                        </span>
                     </td>
                  </tr>
                  <!-- 회원가입일 -->
                  <tr>
                     <td class="searchtable_title_mUserList">회원가입일</td>
                     <td>
                        <div class="input_date_mUserList">
                           <input type="date" name="preday" class="datepre_wdetail"> ~ <input type="date" name="postday" class="datepost_wdetail">
                        </div>
                     </td>
                  </tr>
                  <!-- 회원등급 -->
                  <tr>
                     <td class="searchtable_title_mUserList">회원등급</td>
                     <td> 
                        <span class="checkbox_mUserList">
                        <input class="checkboxes_mUserList1" type="checkbox" value="흙손">
                        <span>흙손</span>
                        <input class="checkboxes_mUserList1" type="checkbox" value="동손">
                        <span>동손</span>
                        <input class="checkboxes_mUserList1" type="checkbox" value="은손">
                        <span>은손</span>
                        <input class="checkboxes_mUserList1" type="checkbox" value="금손">
                        <span>금손</span>
                        <input class="checkboxes_mUserList1" type="checkbox" value="다이아손">
                        <span>다이아손</span>
                        <input class="checkboxes_mUserList1" type="checkbox" value="타노스">
                        <span>타노스</span>
                        </span>
                     </td>
                  </tr>
               </table>
            </div>
            <input type="text" style="visibility: hidden;" name="buttonday" value="" id="buttonday"/>
                     
            <div class="Admin_grant_Managerheader ">
               <button class="seaerch_button_PersnalAccess" onclick="return buttonclick();">검색</button>
              <!--  <button class="manager_button_PersnalAccess">관리자 권한 부여</button> -->
            </div>
            <!-- 검색결과 -->
            <div class="layoutSubbox_mUserList">
               <table class="type07">
                  <caption class="caption_mUserList"> 검색
                     <span class="caption_text_mUserList">${ pi.listCount }</span>건 / 전체 <span class="caption_text_mUserList">
                  ${ listAllCount } </span>명
                  </caption>
                  <thead>
                     <tr>
                      <!--   <th scope="cols">체크</th> -->
                        <th scope="cols">번호</th>
                        <th scope="cols">구분</th>
                        <th scope="cols">이메일</th>
                        <th scope="cols">닉네임</th>
                        <th scope="cols">이름</th>
                        <th scope="cols">등급</th>
                        <th scope="cols">회원가입일</th>
                        <th scope="cols">최종로그인</th>
                     </tr>
                  </thead>
                  <tbody>
                  
                  <c:if test="${empty ul}">
                   		<tr>
                           		<td colspan="9" style="width: 1400px;">검색 내역이 없습니다.</td>
                   		</tr>
                   </c:if>
                  
                  
                  <c:if test="${!empty ul}">
                   <c:set var="num" value="${pi.listCount - ((pi.currentPage-1) * 5) }"/>
                      <c:forEach var="UserList" items="${ ul }" varStatus="status">
	                     <tr>
	                      <!--   <td id="shot_table_mUserList"><input type="checkbox" value="1"></td> -->
	                        <td id="shot_table_mUserList">${ num }</td>
	                        <td id="midle_table_mUserList">
	                        	<c:if test="${ empty UserList.userMaster.mNickname and UserList.user.status == 'N'}">일반회원</c:if>
								<c:if test="${ !empty UserList.userMaster.mNickname and UserList.user.status == 'N'}">능력자</c:if>
								<span id="red"><c:if test="${ UserList.user.status == 'Y'}">탈퇴회원</c:if></span>
	                        </td>
	                        <td id="long_table_mUserList">${ UserList.user.email }</td>
	                        <td id="long_table_mUserList">${ UserList.userMaster.mNickname }</td>
	                        <td id="midle_table_mUserList">${ UserList.user.name }</td>
	                        <td id="midle_table_mUserList"> ${ UserList.userMaster.mRankname }</td>
	                        <td>${ UserList.user.enrollDate }</td>
	                        <td>${ UserList.userAccess.uAccessDate }</td>
	                     </tr>
	                     <c:set var="num" value="${ num-1 }"></c:set>
	                  </c:forEach> 
	                 </c:if>
	                </table>  
	                  
	                  
	                  
	      <table class="center">           
	                  
     <tr align="center" height="20">
		<td colspan="5" class="pagination">
			
				<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
					<a style="cursor:default;">«</a>
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="mUserList.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
						<c:param name="buttonday" value="${buttonday}"/>
						<c:param name="preday" value="${preday}"/>
						<c:param name="postday" value="${postday}"/>
						<c:param name="search_way" value="${search_way}"/>
						<c:param name="search_box" value="${search_box}"/>
						<c:param name="check1" value="${check1}"/>
						<c:param name="check2" value="${check2}"/>
					</c:url>
					<a href="${ before }">«</a>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage}">
					<c:if test="${ p eq pi.currentPage }">
						<a style="background-color: #FABE00; color: white; cursor:default;">${ p }</a>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="mUserList" value="mUserList.do">
							<c:param name="currentPage" value="${ p }"/>
							<c:param name="buttonday" value="${buttonday}"/>
							<c:param name="preday" value="${preday}"/>
							<c:param name="postday" value="${postday}"/>
							<c:param name="search_way" value="${search_way}"/>
							<c:param name="search_box" value="${search_box}"/>
							<c:param name="check1" value="${check1}"/>
							<c:param name="check2" value="${check2}"/>
						</c:url>
						<a href="${ mUserList }">${ p }</a>
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
					<a style="cursor:default;">»</a>
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="mUserList.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
							<c:param name="buttonday" value="${buttonday}"/>
							<c:param name="preday" value="${preday}"/>
							<c:param name="postday" value="${postday}"/>
							<c:param name="search_way" value="${search_way}"/>
							<c:param name="search_box" value="${search_box}"/>
							<c:param name="check1" value="${check1}"/>
							<c:param name="check2" value="${check2}"/>
					</c:url> 
					<a href="${ after }" >»</a>
				</c:if>
			</td>
		</tr>
		</table> 
		
                  </tbody>
           <!--     </table> -->
            </div>
         </div>
               <input type="hidden" id="check1" name="check1">
               <input type="hidden" id="check2" name="check2">
         </form>
      </div>

       <script>

     
       
         $('.datepre_wdetail, .datepost_wdetail').click(function(){
        	 $('.choice_wdetail').css('background-color',"#ddd");
        	 $("#buttonday").val("");
         });
        
         function buttonclick(){
        	 
        	  var check1 = Array();
              var check_count1 = 0;
              var chkbox = $(".checkboxes_mUserList");
              
              for(i=0;i<chkbox.length;i++) {
                  if (chkbox[i].checked == true){
                	  check1[check_count1] = chkbox[i].value;
                	  check_count1++;
                  }
              }
              $("#check1").val(check1);
              
              var check2 = Array();
              var check_count2 = 0;
              var chkbox2 = $(".checkboxes_mUserList1");
              
              for(i=0;i<chkbox2.length;i++) {
                  if (chkbox2[i].checked == true){
                	  check2[check_count2] = chkbox2[i].value;
                	  check_count2++;
                  }
              }
              $("#check2").val(check2);
              
              
              
              
        	 
/*  			 var size = document.getElementsByName("chk_user").length;
			    for(var i = 0; i < size; i++){
			        if(document.getElementsByName("chk_user")[i].checked == true){
			            console.log(document.getElementsByName("chk_user")[i].value);
			            check1[check_count] += document.getElementsByName("chk_user")[i].value;
			            alert(check1);
			            check_count++;
			        }
			    } */
			    
			   

        	 	console.log($("#buttonday").val());
        		if($(".bdbox_mUserList").val()!=null&&$("#buttonday").val()==""&&$('.datepre_wdetail').val()==""&&$('.datepost_wdetail').val()==""){
        			return true;
        	 	}else if($("#buttonday").val()!=""){
        	 		return true;
        	 	}
        		
    			if($(".bdbox_mUserList").val()!=null&&$(".datepre_wdetail").val()==""){
   				 alert("날짜 정보가 잘못 되었습니다.")
           		 return false;
   				}
        		
        		if($("#buttonday").val()==""){
	        		if($(".datepre_wdetail").val()>$('.datepost_wdetail').val() || $(".datepre_wdetail").val()=="" || $('.datepost_wdetail').val()==""){
	        	 		 alert("날짜 정보가 잘못 되었습니다.")
	            		 return false;
	        	 	}
        		}else{
        			return true;
        		}
         }
         
        
      </script>
      
      
   </body>
</html>