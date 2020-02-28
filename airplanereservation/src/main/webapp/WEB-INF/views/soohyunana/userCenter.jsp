<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
.pagination {
  display: -ms-flexbox;
  display: flex;
  padding-left: 0;
  list-style: none;
  border-radius: 0.25rem;
}
.pagination {
  display: -ms-flexbox;
  display: flex;
  padding-left: 0;
  list-style: none;
  border-radius: 0.25rem;
}

.page-link {
  position: relative;
  display: block;
  padding: 0.5rem 0.75rem;
  margin-left: -1px;
  line-height: 1.25;
  color: #007bff;
  background-color: #fff;
  border: 1px solid #dee2e6;
}

.page-link:hover {
  z-index: 2;
  color: #0056b3;
  text-decoration: none;
  background-color: #e9ecef;
  border-color: #dee2e6;
}

.page-link:focus {
  z-index: 2;
  outline: 0;
  box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
}

.page-item:first-child .page-link {
  margin-left: 0;
  border-top-left-radius: 0.25rem;
  border-bottom-left-radius: 0.25rem;
}

.page-item:last-child .page-link {
  border-top-right-radius: 0.25rem;
  border-bottom-right-radius: 0.25rem;
}

.page-item.active .page-link {
  z-index: 1;
  color: #fff;
  background-color: #007bff;
  border-color: #007bff;
}

.page-item.disabled .page-link {
  color: #6c757d;
  pointer-events: none;
  cursor: auto;
  background-color: #fff;
  border-color: #dee2e6;
}

.pagination-lg .page-link {
  padding: 0.75rem 1.5rem;
  font-size: 1.25rem;
  line-height: 1.5;
}

.pagination-lg .page-item:first-child .page-link {
  border-top-left-radius: 0.3rem;
  border-bottom-left-radius: 0.3rem;
}

.pagination-lg .page-item:last-child .page-link {
  border-top-right-radius: 0.3rem;
  border-bottom-right-radius: 0.3rem;
}

.pagination-sm .page-link {
  padding: 0.25rem 0.5rem;
  font-size: 0.875rem;
  line-height: 1.5;
}

.pagination-sm .page-item:first-child .page-link {
  border-top-left-radius: 0.2rem;
  border-bottom-left-radius: 0.2rem;
}

.pagination-sm .page-item:last-child .page-link {
  border-top-right-radius: 0.2rem;
  border-bottom-right-radius: 0.2rem;
}
</style>

<div style="">
		<div style="margin: 80px;">
			<div>
				<h1 class="page-header">고객센터</h1>
				<p>Total: <span id="count">${total}</span></p>
			</div>	
		</div>

		
		<!-- search{s} -->
		<div style="width: 91%; margin: 0 auto;">
				<form  id="searchForm" name="searchForm" method="post">
				
<%-- 					<input type="hidden" id="pageNo" name="pageNo" value="${pageNo }">	
					<input type="hidden" id="searchCount" name="searchCount" value="10"> --%>				
					
					<div style="float:left">
					
						<select class="form-control form-control-sm" name="searchType" id="searchType">
							<option value="Everything">전체</option>
							<option value="ID">작성자</option>
							<option value="TITLE">제목</option>
							<option value="CONTENT">내용</option>
						</select>
					</div>
					<div style="float:left; padding-left:5px;"  >
					<!-- <select class="form-control form-control-sm" name="searchCount" id="searchCount">
							<option value="5">5 개씩</option>
							<option value="10">10 개씩</option>
							<option value="15">15 개씩</option>
						</select> -->
					</div>
					<div style="padding-right: 10px; padding-left: 5px; float: left;">
						<input type="text" class="form-control form-control-sm" name="keyword" id="keyword" style="height: 21px">
					</div>
					<!--  button은 form태그 안에 넣으면 이벤트를 한번 더 타서 클릭을 두번한것처럼 실행된다. 그래서 보통은 a태그를 사용하며 button을 사용할 경우 type="button"을 주면 된다-->
					<button class="btn btn-primary" style="background-color: black; color: white; margin-right: 0px;" name="btnSearch" id="btnSearch" >검색</button>		
				</form>
			</div>
			<!-- search{e} -->
		
			
			
		<table class="table" id="usertable" style="margin: 0 auto; margin-bottom: 30px; width: 91%; background: #929090; color:#000000;">
			<thead>
				<tr>
					<th scope="col">NO</th>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
					<!-- <th scope="col">내용</th> -->
					<th scope="col">작성날짜</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody id="">
				<c:choose>
					<c:when test="${fn:length(userCenterList) > 0}">
					 	<c:forEach var="list" items="${userCenterList}">
							<tr>
								<td>${list.serNum}</td>
								<td>${list.serId}</td>
								<td style = "cursor:pointer;" onClick = " location.href='http://localhost:8080/soohyunana/detail?seq=${list.serNum }' ">${list.serTitle}</td>
								<%-- <td>${list.serContent}</td> --%>
								<td>${list.serDay}</td>
								<td>${list.serViews}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="6" class="com_table_board-info">
								검색결과가 없습니다.
							</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		
		<a href="/soohyunana/wirteNotice" style="float:right; margin-right:94px;" class="btn btn-sm btn-primary"  >글쓰기</a>
</div>


<!-- pagination{s} -->
			<div id="paginationBox" style="padding-left: 140px">
				<ul class="pagination">
					<c:if test="${pagination.prev}">
						<li class="page-item"><a class="page-link"
							style="background: " href="#"
							onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
						</li>
					</c:if>
					<c:forEach begin="${pagination.startPage}"
						end="${pagination.endPage}" var="idx">
						<li
							class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
							<a class="page-link" style="background: " href="#"
							onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
								${idx} </a>
						</li>
					</c:forEach>
					<c:if test="${pagination.next}">
						<li class="page-item"><a class="page-link" href="#"
							style="background: "
							onClick="fn_next('${pagination.range}', 
						'${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
					</c:if>
				</ul>
			</div>
<!--pagination{e}  -->

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
//이전 버튼 이벤트

function fn_prev(page, range, rangeSize) {	//현재 목록의 페이지 번호,각 페이지의 시작 번호,페이지당 게시글 갯수 =10으로 초기화
	var page = ((range - 2) * rangeSize) + 1;
	var range = range - 1;
	var url = "${pageContext.request.contextPath}/soohyunana/userCenter";

	url = url + "?page=" + page;
	url = url + "&range=" + range;

	location.href = url;
}
//페이지 번호 클릭

function fn_pagination(page, range, rangeSize, searchType, keyword) { 	//현재 목록의 페이지 번호,각 페이지의 시작 번호,페이지당 게시글 갯수 =10으로 초기화,게시글 검색 시 검색 타입 목록,검색 단어
	var url = "${pageContext.request.contextPath}/soohyunana/userCenter";
	url = url + "?page=" + page;
	url = url + "&range=" + range;
	location.href = url;	
}

//다음 버튼 이벤트
function fn_next(page, range, rangeSize) {	//현재 목록의 페이지 번호,각 페이지의 시작 번호,페이지당 게시글 갯수 =10으로 초기화
	var page = parseInt((range * rangeSize)) + 1;
	var range = parseInt(range) + 1;
	var url = "${pageContext.request.contextPath}/soohyunana/userCenter";

	url = url + "?page=" + page;
	url = url + "&range=" + range;
	
	location.href = url;
}

$(document).on('click', '#btnSearch', function(e){

	e.preventDefault();

	var url = "${pageContext.request.contextPath}/soohyunana/userCenter";
	url = url + "?searchType=" + $('#searchType').val();
	url = url + "&keyword=" + $('#keyword').val();
	location.href = url;
	console.log(url);

});

//페이지 이동(아직 사용안함)
function moveToPage(page){
	  //alert('1');
	  var f = $("#listvlaue");
	  console.log("f : " + $("#listvlaue").serialize());
	  f.action = page;
	  $("#listvlaue").attr("action",page);
	  console.log( $("#listvlaue").attr("action"));
	  //debugger;
	  f.submit();
	}


</script>