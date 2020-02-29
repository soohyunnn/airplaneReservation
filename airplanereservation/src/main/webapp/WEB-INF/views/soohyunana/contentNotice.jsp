<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div>
		<div style="margin: 80px; margin-bottom: 20px;">
			<div>
				<h1 class="page-header">공지사항</h1>				
			</div>	
		</div>
		
			<div class="container" role="main" style="height: 700px;">

			<h2>수현아나 공지사항-자세히보기</h2>
			
			<form name="form" id="form" role="form" method="post" action="">
				<div class="mb-3">
					<label for="reg_id">작성자</label>
					<input type="text" class="form-control" name="notiId" id="notiId" value="${list.notiId }" readonly>
				</div>
				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="notiTitle" id="notiTitle" value="${list.notiTitle }" readonly>
				</div>				
				<div class="mb-3">
					<label for="content">내용</label>
					
					<textarea class="" rows="5" name="notiContent" id="notiContent" style="height: 400px;" readonly>${list.notiContent }</textarea>		
				</div>				
				<div class="mb-3">
					<label for="tag">등록날짜</label>
					<input type="text" class="form-control" name="notiDay" id="notiDay" value="${list.notiDay }" readonly>
				</div>
				<div class="mb-3">
					<label for="tag">조회수</label>
					<input type="text" class="form-control" name="notiViews" id="notiViews" value="${list.notiViews }" readonly>
				</div>
			</form>
			
			<div style="float:right; margin-bottom: 51px;">
				<a href="/soohyunana/notice" onclick="" class="btn btn-sm btn-primary" >목록</a>
			</div>

		

			

			<br><br><br><br><br><br><br><br>
</div>
</div>
<script>
CKEDITOR.replace("notiContent",{height: 500, customConfig : '/resources/ckeditor/config.js'});

	
	
	
</script>
