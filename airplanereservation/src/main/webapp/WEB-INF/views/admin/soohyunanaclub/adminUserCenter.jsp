<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
  
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">수현아나클럽 > 고객센터</h1>		
	</div>
		<p style="color:black;">Total: <span id="count"></span></p>
	
	<div style="width: 91%; margin: 0 auto; padding-top: 20px;">
			
		<!-- 고객센터 게시글 수정 -->					
		<div class="panel panel-default" id="centerChangeDiv" style="margin: 0 auto; background: #e0e0e0; border-radius: 19px; border: 1px solid; display: none">
			<div class="panel-heading" style="padding: 10px; background: #e0e0e0; border-top-left-radius: 17px; border-top-right-radius: 17px; border: 1px solid;">고객센터 게시글 수정</div>
			<div class="panel-body" style="padding: 20px; background: white; border-bottom-left-radius: 17px; border-bottom-right-radius: 17px; border: 1px solid;">
				<!-- 고객센터 게시글 수정 form Start -->
				<form id="adminCenterchangeForm" name="adminCenterchangeForm" method="post">
					<div class="form-group">
						<label for="phone">게시글 번호:</label> 
						<input type="text" class="form-control No" id="serNum" name="serNum" required readonly>
					</div>				
					<div class="form-group">
						<!-- name="" 속성은 JSP 프로그램 진행시 필수 속성 -->
						<!-- 식별자는 자료형 클래스의 멤버명으로 작성할 것 -->
						<!-- 동일 자료 동일 식별자 원칙 -->	
						<label for="name">작성자:</label> 
						<input type="text" class="form-control" id="serId" name="serId" required>
					</div>
					<div class="form-group">
						<label for="phone">제목:</label> 
						<input type="text" class="form-control" id="serTitle" name="serTitle" required >
					</div>
					<div class="form-group">
						<label for="phone">내용:</label> 
						<input type="text" class="form-control" id="serContent" name="serContent" required>
					</div>
					<div class="form-group">
						<label for="phone">전화번호:</label> 
						<input type="text" class="form-control" id="serPhone" name="serPhone" required>
					</div>
					<div class="form-group">
						<label for="email">이메일:</label>
						<input type="text" class="form-control" id="serEmail" name="serEmail" required>
					</div>
					<div class="form-group">
						<label for="email">작성날짜:</label>
						<input type="text" class="form-control" id="serDay" name="serDay" required>
					</div>
					<div class="form-group">
						<label for="email">조회수:</label>
						<input type="text" class="form-control" id="serViews" name="serViews" required>
					</div>
					
					<!-- submit 버튼은 JSP 프로그램 진행시 필수 요소 -->
					<!-- 폼 태그 범위 안에 위치해야 한다. -->
					<!-- <button type="button" class="btn btn-sm btn-warning" id="">수정</button> -->
					<button type="button" class="btn btn-sm btn-danger" id="btnDeleteAdminCenterInfo">삭제</button>					
				</form>
				<!-- 고객센터 게시글 수정 form End -->	
			</div>
		</div>	
						
	</div>
		<br><br><br>
	<!-- Content Row -->
	<div style="width: 91%; margin: 0 auto;">
				<form  id="adminCenterTableForm" name="adminCenterTableForm" method="post" style="margin: 10px;">

					<input type="hidden" name="pageNo" id="pageNo">
					
					<div style="float:left">
					
						<select class="form-control form-control-sm" name="search" id="search">
							<option value="Everything">전체</option>
							<option value="ID">작성자</option>
							<option value="TITLE">제목</option>
							<option value="CONTENT">내용</option>
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
					<th scope="col">PHONE</th>
					<th scope="col">EMAIL</th>
					<th scope="col">작성날짜</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody id="userList" style="background: #ffffff;">
			 	<c:forEach var="list" items="${userlist}">

				</c:forEach>
			</tbody>
		</table>
		
		<!-- PaginBox Start -->
		<div style="text-align: center; margin-bottom: 200px;" id="PagingBox">
			
		</div>
</div>
<br><br><br>
<!-- /.container-fluid -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
function show(pageNo){

    var adminCenterTableForm = document.getElementById('adminCenterTableForm');
    var searchCount = $('#searchCount option:selected').val();
    var search = $('#search option:selected').val();
    var searchInput = $('#searchInput').val();

    adminCenterTableForm.pageNo.value = pageNo;
    adminCenterTableForm.searchCount.value = searchCount;
    adminCenterTableForm.search.value = search;
    adminCenterTableForm.searchInput.value = searchInput;
    
    console.log(searchCount);
    console.log(search);
    console.log(searchInput); 
    
 $.ajax({
    url : '/usercenterinfo',
    type : 'POST',
    dataType:'JSON',
    data : $('#adminCenterTableForm').serialize() ,
       success : function(data){
          
          console.log(data);
          var tab ='';
                           
          for(var i=0; i<data.list.length; i++){

             tab += '<tr onclick="modalBtn1(this)" id="selectBox" data-target="#modal" data-toggle="modal" >';
             tab += '<td>'+data.list[i].serNum+'</td>';
             tab += '<td >'+data.list[i].serId+'</td>';
             tab += '<td>'+data.list[i].serTitle+'</td>';
             tab += '<td style="display:none;">'+data.list[i].serContent+'</td>';
             tab += '<td>'+data.list[i].serPhone+'</td>';
             tab += '<td>'+data.list[i].serEmail+'</td>';
             tab += '<td>'+data.list[i].serDay+'</td>';
             tab += '<td>'+data.list[i].serViews+'</td>'; 
          }
          
          $("#userList").html(tab);  

          $('#count').text(data.total); 

          $('#PagingBox').append("<a href=\"#\" class=\"Pbox \" onclick=\"show("+ 1 + ")  \"> << </a>");

           
           if ( data.startPage !=1 ){
              $('#PagingBox').append("<a href=\"#\" class = \"Pbox \"   onclick= \"show(" + (data.startPage-1) + ") \"> 이전 </a>");
                
           }

          
          if(data.countSearch == searchCount) {
             for(var i=data.startPage; i<=data.endPage; i++) {
                 if (i == data.pageNo) {
                        $('#PagingBox').append( "<a href=\"#\"  class=\"PPbox\"   class=\"Pbox\">"+ i +  " </a>");
                    } else {                 
                       $('#PagingBox').append("<a href=\"#\" class=\"Pbox \"  onclick= \"show(" + i + ") \">" +i+   "</a>" + "&nbsp");
                    }    
             }
          }

          if(data.endPage!=data.totalPage){ 
             if(data.totalPage>data.countPage){
                if(data.pageNo < data.totalPage){
                      $('#PagingBox').append("<a href=\"#\" class=\"Pbox \" onclick=\"show("+ (data.endPage+1) + ")  \">다음</a>");
                   }
             }
           }
                
                $('#PagingBox').append("<a href=\"#\" class=\"Pbox \" onclick=\"show("+ data.totalPage + ")  \"> >> </a>");
                
          }   
             
    });      $('#table').empty();
            $('#PagingBox').empty();   
 
 }

	//tr줄을 선택하면 모달이 뜨고, 모달안에 정보들이 뜸
	function modalBtn1(target) {
		//$('#insertDiv').hide();
		$('#centerChangeDiv').show();
	   
	   var tr = $(target)
	   var td = tr.children();
	
	   var serNum = td.eq(0).text();
	   var serId = td.eq(1).text();
	   var serTitle = td.eq(2).text();
	   var serContent = td.eq(3).text();
	   var serPhone = td.eq(4).text();
	   var serEmail = td.eq(5).text();
	   var serDay = td.eq(6).text();
	   var serViews = td.eq(7).text();
			
	   		 $('#serNum').val(serNum);
	         $('#serId').val(serId);
	         $('#serTitle').val(serTitle);
	         $('#serContent').val(serContent);
	         $('#serPhone').val(serPhone);
	         $('#serEmail').val(serEmail);
	         $('#serDay').val(serDay);
	         $('#serViews').val(serViews);

	   }	
	

	
	//admin - 고객센터 게시글 삭제
	$("#btnDeleteAdminCenterInfo").click(function(){
		//alert('1');
		var deleteCon = confirm("게시글을 삭제하시겠습니까?");

		if (deleteCon == true) {
			$.ajax({
				url : '/deleteCenter',
				type : 'POST',
				data : $('#adminCenterchangeForm').serialize(),
					success : function(data) {
						console.log('successs');
						alert('게시글이 삭제되었습니다.');
						location.href = 'http://localhost:8080/admin/soohyunanaclub/adminUserCenter.admin';
					},
					error : function() {
						alert("게시글 삭제를 실패하였습니다.");
					}
				});
			}
		});
</script>
