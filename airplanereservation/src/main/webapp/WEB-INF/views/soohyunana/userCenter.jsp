<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div style="height: 738px; overflow-x: auto;">
		<div style="margin: 80px;">
			<div>
				<h1 class="page-header">고객센터</h1>
				<p>Total: <span id="count">${total},${searchCount}</span></p>
			</div>	
		</div>

		<div style="width: 91%; margin: 0 auto;">
				<form  id="searchForm" name="searchForm" method="post">
				
					<input type="hidden" id="pageNo" name="pageNo">					
					
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
						<input type="text" class="form-control form-control-sm" name="searchInput" id="searchInput" style="height: 21px">
					</div>
					<!--  button은 form태그 안에 넣으면 이벤트를 한번 더 타서 클릭을 두번한것처럼 실행된다. 그래서 보통은 a태그를 사용하며 button을 사용할 경우 type="button"을 주면 된다-->
					<button class="btn btn-primary" type="button" style="background-color: black; color: white; margin-right: 0px;" id="search" onclick="javascript:selectBannerListAction(1);">검색</button>		
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
			<tbody id="">
				<c:choose>
					<c:when test="${fn:length(userCenterList) > 0}">
					 	<c:forEach var="list" items="${userCenterList}">
							<tr>
								<td>${list.serNum}</td>
								<td>${list.serName}</td>
								<td>${list.serTitle}</td>
								<td>${list.serContent}</td>
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
</div>

<!-- 페이징_start -->
		<div class="com_table_board-no" style="text-align: center;">
			<span class="com_table_board-no-btn">
				<a href="javascript:void(0);" style="color:white;" onclick="javascript:goToPage(1);" title="처음">
					<<
				</a>
				
					<c:if test="${startPage != 1}">
						<a href="javascript:void(0);" onclick="javascript:goToPage(${startPage}-1);" style="color:white;" title="이전">
							<
						</a>
					</c:if>

			</span>
			<span class="com_table_board-no-sum">
			<c:if test="${countSearch ==  searchCount}">
				<c:forEach var="i" begin="${startPage}" end="${endPage}+1" step="1">
					<c:choose>
						<c:when test="${i == pageNo}">
							<a href="javascript:void(0);" class="board-em" style="color:white;">${i}</a>
						</c:when>
						<c:otherwise>
							<a href="javascript:void(0);" style="color:white;" onclick="javascript:goToPage(${i});" >${i}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:if>
				<!-- href에 #을 쓰면 페이지 최상단으로 이동, void(0)을 하게 되면 undifined가 리턴되어 무효화 처리가 된다. -->
			</span>
			<span class="com_table_board-no-btn">
			<c:if test="${endPage != totalPage}">
					<c:if test="${totalPage > countPage}">
						<c:if test="${pageNo < totalPage}">
							<a href="javascript:void(0);"  style="color:white;" onclick="javascript:goToPage(${endPage}+1);" title="다음">
								>
							</a>
						</c:if>
					</c:if>					
			</c:if>
				<a href="javascript:void(0);" style="color:white;" onclick="javascript:goToPage(${totalPage});" title="마지막">
					>>
				</a>
			</span>
		</div>
		<!-- 페이징_end -->

<script>
function goToPage(pageNo) {
	selectBannerListAction(pageNo);
}

function selectBannerListAction(pageNo) {
	var url		= "${pageContext.request.contextPath}/soohyunana/userCenter";

	$(".loading").show();

	$('#pageNo').val(pageNo);
	$('#searchForm').attr("action", url);
	$('#searchForm').submit();
}
</script>