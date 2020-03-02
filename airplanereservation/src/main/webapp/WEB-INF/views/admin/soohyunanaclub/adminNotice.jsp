<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="/resources/ckeditor/ckeditor.js"></script>	 -->    
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">수현아나클럽 > 공지사항</h1>		
	</div>
		<p style="color:black;">Total: <span id="count"></span></p>
	
	<div style="width: 91%; margin: 0 auto; padding-top: 20px;">
		<!-- 공지사항 등록 -->
		<div class="panel panel-default" id="noticeInsertDiv" style="margin: 0 auto; background: #e0e0e0; border-radius: 19px; border: 1px solid;">
			<div class="panel-heading" style="padding: 10px; background: #e0e0e0; border-top-left-radius: 17px; border-top-right-radius: 17px; border: 1px solid;">회원 정보 입력</div>
			<div class="panel-body" style="padding: 20px; background: white; border-bottom-left-radius: 17px; border-bottom-right-radius: 17px; border: 1px solid;">
			    
			    <!-- action="확장자 방식의 서블릿요청주소 -->
			    <!-- 공지사항 등록 form Start -->
				<form id="adminNoticeInsertForm" name="adminNoticeInsertForm" action="" method="post">
					<div class="form-group">
						<!-- name="" 속성은 JSP 프로그램 진행시 필수 속성 -->
						<!-- 식별자는 자료형 클래스의 멤버명으로 작성할 것 -->
						<!-- 동일 자료 동일 식별자 원칙 -->	
						<label for="name">작성자:</label>
						<input type="text" class="form-control" id="notiName" name="notiName" value="운영자" required>
					</div>
					<div class="form-group">
						<label for="phone">제목:</label>
						<input type="text" class="form-control" id="notiTitle" name="notiTitle" required>
					</div>
					<div class="form-group">
						<label for="phone">내용:</label> 
						<!-- <input type="text" class="form-control" id="notiContent" name="notiContent" required> -->
						<textarea class="" rows="30" cols="80" name="notiContent" id="notiContent" placeholder="내용을 입력해주세요"></textarea>
					</div>

					
					<!-- submit 버튼은 JSP 프로그램 진행시 필수 요소 -->
					<!-- 폼 태그 범위 안에 위치해야 한다. -->
					<button type="button" class="btn btn-sm btn-primary" style="" id="btnInsertAdminNoticeInfo">등록</button>					
				</form>
				<!-- 공지사항 form End -->
			</div>
		</div>
				
				
		<!-- 공지사항 수정 -->					
		<div class="panel panel-default" id="noticeChangeDiv" style="margin: 0 auto; background: #e0e0e0; border-radius: 19px; border: 1px solid; display: none">
			<div class="panel-heading" style="padding: 10px; background: #e0e0e0; border-top-left-radius: 17px; border-top-right-radius: 17px; border: 1px solid;">회원 정보 수정</div>
			<div class="panel-body" style="padding: 20px; background: white; border-bottom-left-radius: 17px; border-bottom-right-radius: 17px; border: 1px solid;">
				<!-- 공지사항 수정 form Start -->
				<form id="adminNoticeChangeForm" name="adminNoticeChangeForm" action="" method="post">
					<div class="form-group">
						<label for="phone">공지사항 번호:</label> 
						<input type="text" class="form-control notiNo" id="notiNo" name="notiNo" required readonly>
					</div>				
					<div class="form-group">
						<!-- name="" 속성은 JSP 프로그램 진행시 필수 속성 -->
						<!-- 식별자는 자료형 클래스의 멤버명으로 작성할 것 -->
						<!-- 동일 자료 동일 식별자 원칙 -->	
						<label for="name">작성자:</label> 
						<input type="text" class="form-control notiName" id="notiName" name="notiName" required readonly>
					</div>
					<div class="form-group">
						<label for="phone">제목:</label> 
						<input type="text" class="form-control notiTitle" id="notiTitle" name="notiTitle" required>
					</div>
					<div class="form-group">
						<label for="phone">내용:</label> 
						<!-- <input type="text" class="form-control notiContent" id="notiContent" name="notiContent" required> -->
						<textarea class="notiContent1" rows="30" cols="80" name="notiContent1" id="notiContent1" placeholder="내용을 입력해주세요"></textarea>
					</div>
					<div class="form-group">
						<label for="phone">날짜:</label> 
						<input type="text" class="form-control notiDay" id="notiDay" name="notiDay" required>
					</div>

					
					<!-- submit 버튼은 JSP 프로그램 진행시 필수 요소 -->
					<!-- 폼 태그 범위 안에 위치해야 한다. -->
					<button type="button" class="btn btn-sm btn-warning" style="" id="btnUpdateAdminNotice">수정</button>
					<button type="button" class="btn btn-sm btn-danger" style="" id="btnDeleteAdminNotice">삭제</button>					
				</form>
				<!-- 공지사항 수정 form End -->	
			</div>
		</div>			
							
			
		
	</div>
		<br><br><br>
	<!-- Content Row -->
	<div style="width: 91%; margin: 0 auto;">
				<form  id="noticeTableForm" name="noticeTableForm" method="post" style="margin: 10px;">

					<input type="hidden" name="pageNo" id="pageNo">
					
					<div style="float:left">
					
						<select class="form-control form-control-sm" name="search" id="search">
							<option value="Everything">전체</option>
							<option value="TITLE">제목</option>
							<option value="CONTENT">내용</option>
							<option value="DAY">날짜</option>
						</select>
					</div>
					<div style="float:left; padding-left:5px;"  >
					<select class="form-control form-control-sm" name="searchCount" id="searchCount">
							<option value="5">5 개씩</option>
							<option value="10">10 개씩</option>
							<option value="15">15 개씩</option>
						</select>
					</div>
					<div style="padding-right: 10px; padding-left: 5px; float: left;">
						<input type="text" class="form-control form-control-sm" name="searchInput" id="searchInput">
					</div>
					<!--  button은 form태그 안에 넣으면 이벤트를 한번 더 타서 클릭을 두번한것처럼 실행된다. 그래서 보통은 a태그를 사용하며 button을 사용할 경우 type="button"을 주면 된다-->
					<button class="btn btn-primary" type="button" style="background-color: black; color: white; margin-right: 0px;" id="search" onclick="show(1)">검색</button>		
				</form>
			</div>
			
		
			
			
		<table class="table" id="usertable" style="margin: 0 auto; margin-bottom: 100px; width: 91%; color:#000000;">
			<thead style="background: #7297ff;">
				<tr>
					<th scope="col">NO</th>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
					<th scope="col">날짜</th>
					<th scope="col">조회수</th>					
				</tr>
			</thead>
			<tbody id="noticelist" style="background: #ffffff;">

			</tbody>
		</table>
		
		<!-- PaginBox Start -->
		<div style="text-align: center; margin-bottom: 200px;" id="noticePagingBox">

		</div>
</div>
<br><br><br>
<!-- /.container-fluid -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
CKEDITOR.replace("notiContent",{height: 500, customConfig : '/resources/ckeditor/config.js'});
function show(pageNo){

    var noticeTableForm = document.getElementById('noticeTableForm');
    var searchCount = $('#searchCount option:selected').val();
    var search = $('#search option:selected').val();
    var searchInput = $('#searchInput').val();

    noticeTableForm.pageNo.value = pageNo;
    noticeTableForm.searchCount.value = searchCount;
    noticeTableForm.search.value = search;
    noticeTableForm.searchInput.value = searchInput;
    
    console.log(searchCount);
    console.log(search);
    console.log(searchInput); 
    
 $.ajax({
    url : '/noticeinfo',
    type : 'POST',
    dataType:'JSON',
    data : $('#noticeTableForm').serialize() ,
       success : function(data){
          
          console.log(data);
          var tab ='';
                           
          for(var i=0; i<data.list.length; i++){

             tab += '<tr onclick="modalBtn2(this)" id="selectBox" data-target="#modal" data-toggle="modal" >';
             tab += '<td>'+data.list[i].notiNo+'</td>';
             tab += '<td >'+data.list[i].notiName+'</td>';
             tab += '<td>'+data.list[i].notiTitle+'</td>';
             tab += '<td style="display:none;">'+data.list[i].notiContent+'</td>';
             tab += '<td>'+data.list[i].notiDay+'</td>';
             tab += '<td>'+data.list[i].notiViews+'</td>';           
          }
          
          $("#noticelist").html(tab);  

          $('#count').text(data.total); 

          $('#noticePagingBox').append("<a href=\"#\" class=\"Pbox \" onclick=\"show("+ 1 + ")  \"> << </a>");

           
           if ( data.startPage !=1 ){
              $('#noticePagingBox').append("<a href=\"#\" class = \"Pbox \"   onclick= \"show(" + (data.startPage-1) + ") \"> 이전 </a>");
                
           }

          
          if(data.countSearch == searchCount) {
             for(var i=data.startPage; i<=data.endPage; i++) {
                 if (i == data.pageNo) {
                        $('#noticePagingBox').append( "<a href=\"#\"  class=\"PPbox\"   class=\"Pbox\">"+ i +  " </a>");
                    } else {                 
                       $('#noticePagingBox').append("<a href=\"#\" class=\"Pbox \"  onclick= \"show(" + i + ") \">" +i+   "</a>" + "&nbsp");
                    }    
             }
          }

          if(data.endPage!=data.totalPage){ 
             if(data.totalPage>data.countPage){
                if(data.pageNo < data.totalPage){
                      $('#noticePagingBox').append("<a href=\"#\" class=\"Pbox \" onclick=\"show("+ (data.endPage+1) + ")  \">다음</a>");
                   }
             }
           }
                
                $('#noticePagingBox').append("<a href=\"#\" class=\"Pbox \" onclick=\"show("+ data.totalPage + ")  \"> >> </a>");
                
          }   
             
    });      $('#table').empty();
            $('#noticePagingBox').empty();   
 
 }

	//tr줄을 선택하면 모달이 뜨고, 모달안에 정보들이 뜸
	function modalBtn2(target) {
		CKEDITOR.replace("notiContent1",{height: 500, customConfig : '/resources/ckeditor/config.js'});
		$('#noticeInsertDiv').hide();
		$('#noticeChangeDiv').show();
	   
	   var tr = $(target)
	   var td = tr.children();
	
	   var notiNo = td.eq(0).text();
	   var notiName = td.eq(1).text();
	   var notiTitle = td.eq(2).text();
	   var notiContent = td.eq(3).text();
	   var notiDay = td.eq(4).text();
	   //var notiViews = td.eq(5).text();
			
	   		 $('.notiNo').val(notiNo);
	         $('.notiName').val(notiName);
	         $('.notiTitle').val(notiTitle);
	         $('.notiContent1').val(notiContent);
	         $('.notiDay').val(notiDay);
	         //$('.notiViews').val(notiViews);     
	   }

	//admin - 공지사항 등록
	$("#btnInsertAdminNoticeInfo").click(function(){
		//alert('1');
		
		if(CKEDITOR.instances.notiContent.getData().length < 1){
			alert("내용을 입력해 주세요.");
			
		}else{
			CKEDITOR.instances.notiContent.getData()
		}  
		adminNoticeInsertForm.notiContent.value = CKEDITOR.instances.notiContent.getData();
		
		var insertCon = confirm("공지사항을 등록하시겠습니까?");

		if (insertCon == true) {
			$.ajax({
				url : '/admin/soohyunanaclub/insertNotice',
				type : 'POST',
				data : $('#adminNoticeInsertForm').serialize(),
					success : function(data) {
						console.log('successs');
						alert('공지사항 등록을 완료하였습니다.');
						location.href = 'http://localhost:8080/admin/soohyunanaclub/adminNotice.admin';
					},
					error : function() {
						alert("공지사항 등록을 실패하였습니다.");
					}
				});
			}
		});
	
	
	//admin - 공지사항 수정
	$("#btnUpdateAdminNotice").click(function(){
		//alert('1');
		if(CKEDITOR.instances.notiContent1.getData().length < 1){
			alert("내용을 입력해 주세요.");
			
		}else{
			CKEDITOR.instances.notiContent1.getData()
		}
		
		adminNoticeChangeForm.notiContent.value = CKEDITOR.instances.notiContent1.getData();
		var updateCon = confirm("공지사항을 수정하시겠습니까?");

		if (updateCon == true) {
			$.ajax({
				url : '/admin/soohyunanaclub/updateNotice',
				type : 'POST',
				data : $('#adminNoticeChangeForm').serialize(),
					success : function(data) {
						console.log('successs');
						alert('수정을 완료하였습니다.');
						location.href = 'http://localhost:8080/admin/soohyunanaclub/adminNotice.admin';
					},
					error : function() {
						alert("수정을 실패하였습니다.");
					}
				});
			}
		});
	
	
	//admin - 공지사항 삭제
	$("#btnDeleteAdminNotice").click(function(){
		//alert('1');
		var deleteCon = confirm("공지사항을 삭제하시겠습니까?");

		if (deleteCon == true) {
			$.ajax({
				url : '/admin/soohyunanaclub/deleteNotice',
				type : 'POST',
				data : $('#adminNoticeChangeForm').serialize(),
					success : function(data) {
						console.log('successs');
						alert('삭제를 완료하였습니다.');
						location.href = 'http://localhost:8080/admin/soohyunanaclub/adminNotice.admin';
					},
					error : function() {
						alert("삭제를 실패하였습니다.");
					}
				});
			}
		});
</script>
