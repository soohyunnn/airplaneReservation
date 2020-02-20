<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>

<div style="height: 738px; overflow-x: auto;">
		<div style="margin: 80px;">
			<div>
				<h1 class="page-header">고객센터</h1>
				<p>Total: <span id="count"></span></p>
			</div>	
		</div>

		<div style="width: 91%; margin: 0 auto;">
				<form  id="tableForm" name="tableForm" method="post">

					<input type="hidden" name="pageNo" id="pageNo">
					
					<div style="float:left">
					
						<select class="form-control form-control-sm" name="search" id="search">
							<option value="Everything">전체</option>
							<option value="ID">작성자</option>
							<option value="NAME">제목</option>
							<option value="POSITION">내용</option>
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
						<input type="text" class="form-control form-control-sm" name="searchInput" id="searchInput" style="height: 21px">
					</div>
					<!--  button은 form태그 안에 넣으면 이벤트를 한번 더 타서 클릭을 두번한것처럼 실행된다. 그래서 보통은 a태그를 사용하며 button을 사용할 경우 type="button"을 주면 된다-->
					<button class="btn btn-primary" type="button" style="background-color: black; color: white; margin-right: 0px;" id="search" onclick="show(1)">검색</button>		
				</form>
			</div>
			
		
			
			
		<table class="table" id="usertable" style="margin: 0 auto; margin-bottom: 100px; width: 91%; background: #929090; color:#000000;">
			<thead>
				<tr>
					<th scope="col">NO</th>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
					<th scope="col">내용</th>
					<th scope="col">작성날짜</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody id="userList">
			 	<c:forEach var="item" items="${list}">
					<tr>
						<td>1</td>
						<td>soo</td>
						<td>안뇽</td>
						<td>하이룽~~</td>
						<td>2020.02.20</td>
						<td>100</td>
					</tr>
					<tr>
						<td>1</td>
						<td>soo</td>
						<td>안뇽</td>
						<td>하이룽~~</td>
						<td>2020.02.20</td>
						<td>100</td>
					</tr>
					<tr>
						<td>1</td>
						<td>soo</td>
						<td>안뇽</td>
						<td>하이룽~~</td>
						<td>2020.02.20</td>
						<td>100</td>
					</tr>
					<tr>
						<td>1</td>
						<td>soo</td>
						<td>안뇽</td>
						<td>하이룽~~</td>
						<td>2020.02.20</td>
						<td>100</td>
					</tr>
					<tr>
						<td>1</td>
						<td>soo</td>
						<td>안뇽</td>
						<td>하이룽~~</td>
						<td>2020.02.20</td>
						<td>100</td>
					</tr>
					<tr>
						<td>1</td>
						<td>soo</td>
						<td>안뇽</td>
						<td>하이룽~~</td>
						<td>2020.02.20</td>
						<td>100</td>
					</tr>
					<tr>
						<td>1</td>
						<td>soo</td>
						<td>안뇽</td>
						<td>하이룽~~</td>
						<td>2020.02.20</td>
						<td>100</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
</div>