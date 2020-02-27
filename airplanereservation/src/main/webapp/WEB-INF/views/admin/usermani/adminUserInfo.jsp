<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">사용자 관리 > 회원정보</h1>		
	</div>
		<p style="color:black;">Total: <span id="count"></span></p>
	
	<div style="width: 91%; margin: 0 auto; padding-top: 20px;">
		<!-- 회원 정보 등록 -->
		<div class="panel panel-default" id="insertDiv" style="margin: 0 auto; background: #e0e0e0; border-radius: 19px; border: 1px solid;">
			<div class="panel-heading" style="padding: 10px; background: #e0e0e0; border-top-left-radius: 17px; border-top-right-radius: 17px; border: 1px solid;">회원 정보 입력</div>
			<div class="panel-body" style="padding: 20px; background: white; border-bottom-left-radius: 17px; border-bottom-right-radius: 17px; border: 1px solid;">
			    
			    <!-- action="확장자 방식의 서블릿요청주소 -->
			    <!-- 회원등록 form Start -->
				<form id="adminUserInsertForm" name="adminUserInsertForm" action="" method="post">
					<div class="form-group">
						<!-- name="" 속성은 JSP 프로그램 진행시 필수 속성 -->
						<!-- 식별자는 자료형 클래스의 멤버명으로 작성할 것 -->
						<!-- 동일 자료 동일 식별자 원칙 -->	
						<label for="name">이름:</label>
						<input type="text" class="form-control" id="userName" name="userName" required>
					</div>
					<div class="form-group">
						<label for="phone">ID:</label>
						<input type="text" class="form-control" id="userId" name="userId" required>
					</div>
					<div class="form-group">
						<label for="phone">PW:</label> 
						<input type="text" class="form-control" id="userPw" name="userPw" required>
					</div>
					<div class="form-group">
						<label for="phone">전화번호:</label> 
						<input type="text" class="form-control" id="userPhone" name="userPhone" required>
					</div>
					<div class="form-group">
						<label for="email">이메일:</label> 
						<input type="text" class="form-control" id="userEmail" name="userEmail" required>
					</div>
					
					<!-- submit 버튼은 JSP 프로그램 진행시 필수 요소 -->
					<!-- 폼 태그 범위 안에 위치해야 한다. -->
					<button type="button" class="btn btn-default" style="background: black;" id="btnInsertAdminUserInfo">등록</button>					
				</form>
				<!-- 회원등록 form End -->
			</div>
		</div>
				
				
		<!-- 회원 정보 수정 -->					
		<div class="panel panel-default" id="changeDiv" style="margin: 0 auto; background: #e0e0e0; border-radius: 19px; border: 1px solid; display: none">
			<div class="panel-heading" style="padding: 10px; background: #e0e0e0; border-top-left-radius: 17px; border-top-right-radius: 17px; border: 1px solid;">회원 정보 수정</div>
			<div class="panel-body" style="padding: 20px; background: white; border-bottom-left-radius: 17px; border-bottom-right-radius: 17px; border: 1px solid;">
				<!-- 회원수정 form Start -->
				<form id="adminUserchangeForm" name="adminUserchangeForm" action="" method="post">
					<div class="form-group">
						<label for="phone">회원번호:</label> 
						<input type="text" class="form-control No" id="No" name="No" required readonly>
					</div>				
					<div class="form-group">
						<!-- name="" 속성은 JSP 프로그램 진행시 필수 속성 -->
						<!-- 식별자는 자료형 클래스의 멤버명으로 작성할 것 -->
						<!-- 동일 자료 동일 식별자 원칙 -->	
						<label for="name">이름:</label> 
						<input type="text" class="form-control userName" id="userName" name="userName" required>
					</div>
					<div class="form-group">
						<label for="phone">ID:</label> 
						<input type="text" class="form-control userId" id="userId" name="userId" required readonly>
					</div>
					<div class="form-group">
						<label for="phone">PW:</label> 
						<input type="text" class="form-control userPw" id="userPw" name="userPw" required>
					</div>
					<div class="form-group">
						<label for="phone">전화번호:</label> 
						<input type="text" class="form-control userPhone" id="userPhone" name="userPhone" required>
					</div>
					<div class="form-group">
						<label for="email">이메일:</label>
						<input type="text" class="form-control userEmail" id="userEmail" name="userEmail" required>
					</div>
					
					<!-- submit 버튼은 JSP 프로그램 진행시 필수 요소 -->
					<!-- 폼 태그 범위 안에 위치해야 한다. -->
					<button type="button" class="btn btn-default" style="background: black;" id="btnUpdateAdminUserInfo">수정</button>					
				</form>
				<!-- 회원수정 form End -->	
			</div>
		</div>			
							
			
		
	</div>
		<br><br><br>
	<!-- Content Row -->
	<div style="width: 91%; margin: 0 auto;">
				<form  id="tableForm" name="tableForm" method="post" style="margin: 10px;">

					<input type="hidden" name="pageNo" id="pageNo">
					
					<div style="float:left">
					
						<select class="form-control form-control-sm" name="search" id="search">
							<option value="Everything">전체</option>
							<option value="NAME">이름</option>
							<option value="ID">ID</option>
							<option value="EMAIL">이메일</option>
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
					<th scope="col">이름</th>
					<th scope="col">ID</th>
					<th scope="col">PW</th>
					<th scope="col">Phone</th>
					<th scope="col">Email</th>
				</tr>
			</thead>
			<tbody id="userList" style="background: #ffffff;">
			 	<c:forEach var="list" items="${userlist}">
					<%-- <tr>
						<td>${list.no}</td>
						<td>${list.userName}</td>
						<td>${list.userId}</td>
						<td>${list.userPw}</td>
						<td>${list.userPhone}</td>
						<td>${list.userEmail}</td>
					</tr>			 --%>	
				</c:forEach>
			</tbody>
		</table>
		
		<!-- PaginBox Start -->
		<div style="text-align: center; margin-bottom: 200px;" id="PagingBox">
			<%-- <a href="#" class="Pbox" onclick="show(1)"> << </a>
			
			<c:if test="${startPage ne 1}">
				<a href="#" class = "Pbox"   onclick= "show(${startPage}-1)"> 이전 </a>
			</c:if>
			
			<c:if test="${countSearch eq searchCount}">
				<c:forEach var="i" items="" begin="${startPage }" end="${endPage }" step=1>
					<c:if test="${i eq pageNo}">
						<a href="#"  class="PPbox"   class="Pbox">i</a>
					</c:if>
						<a href="#" class="Pbox"  onclick= "show(i)">i</a>			
				</c:forEach>
			</c:if>
			
			<c:if test="${endPage ne totalPage}">
				<c:if test="${totalPage > countPage}">
					<c:if test="${pageNo < totalPage }">
						<a href="#" class="Pbox" onclick="show(${endPage}+1)">다음</a>
					</c:if>
				</c:if>
			</c:if>
			
			<a href="#" class="Pbox" onclick="show(${totalPage})"> >> </a> --%>
		</div>
</div>
<br><br><br>
<!-- /.container-fluid -->
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
function show(pageNo){

    var tableForm = document.getElementById('tableForm');
    var searchCount = $('#searchCount option:selected').val();
    var search = $('#search option:selected').val();
    var searchInput = $('#searchInput').val();

    tableForm.pageNo.value = pageNo;
    tableForm.searchCount.value = searchCount;
    tableForm.search.value = search;
    tableForm.searchInput.value = searchInput;
    
    console.log(searchCount);
    console.log(search);
    console.log(searchInput); 
    
 $.ajax({
    url : '/userinformation',
    type : 'POST',
    dataType:'JSON',
    data : $('#tableForm').serialize() ,
       success : function(data){
          
          console.log(data);
          var tab ='';
                           
          for(var i=0; i<data.list.length; i++){

             tab += '<tr onclick="modalBtn(this)" id="selectBox" data-target="#modal" data-toggle="modal" >';
             tab += '<td>'+data.list[i].no+'</td>';
             tab += '<td >'+data.list[i].userName+'</td>';
             tab += '<td>'+data.list[i].userId+'</td>';
             tab += '<td>'+data.list[i].userPw+'</td>';
             tab += '<td>'+data.list[i].userPhone+'</td>';
             tab += '<td>'+data.list[i].userEmail+'</td>';           
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
	function modalBtn(target) {
		$('#insertDiv').hide();
		$('#changeDiv').show();
	   
	   var tr = $(target)
	   var td = tr.children();
	
	   var No = td.eq(0).text();
	   var userName = td.eq(1).text();
	   var userId = td.eq(2).text();
	   var userPw = td.eq(3).text();
	   var userPhone = td.eq(4).text();
	   var userEmail = td.eq(5).text();
			
	   		 $('.No').val(No);
	         $('.userName').val(userName);
	         $('.userId').val(userId);
	         $('.userPw').val(userPw);
	         $('.userPhone').val(userPhone);
	         $('.userEmail').val(userEmail);     
	   }

	//admin - 회원등록
	$("#btnInsertAdminUserInfo").click(function(){
		//alert('1');
		var insertCon = confirm("회원정보를 등록하시겠습니까?");

		if (insertCon == true) {
			$.ajax({
				url : '/admin/usermani/insertUserInfo',
				type : 'POST',
				data : $('#adminUserInsertForm').serialize(),
					success : function(data) {
						console.log('successs');
						alert('등록을 완료하였습니다.');
						location.href = 'http://localhost:8080/admin/usermani/adminUserInfo.admin';
					},
					error : function() {
						alert("등록을 실패하였습니다.");
					}
				});
			}
		});
	
	
	//admin - 회원수정
	$("#btnUpdateAdminUserInfo").click(function(){
		//alert('1');
		var updateCon = confirm("회원정보를 수정하시겠습니까?");

		if (updateCon == true) {
			$.ajax({
				url : '/admin/usermani/updateUserInfo',
				type : 'POST',
				data : $('#adminUserchangeForm').serialize(),
					success : function(data) {
						console.log('successs');
						alert('수정을 완료하였습니다.');
						location.href = 'http://localhost:8080/admin/usermani/adminUserInfo.admin';
					},
					error : function() {
						alert("수정을 실패하였습니다.");
					}
				});
			}
		});
</script>









