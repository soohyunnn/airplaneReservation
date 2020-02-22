<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800">사용자 관리 > 회원정보</h1>
	</div>

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
					<tr>
						<td>${list.no}</td>
						<td>${list.userName}</td>
						<td>${list.userId}</td>
						<td>${list.userPw}</td>
						<td>${list.userPhone}</td>
						<td>${list.userEmail}</td>
					</tr>				
				</c:forEach>
			</tbody>
		</table>

</div>
<!-- /.container-fluid -->