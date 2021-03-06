<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<style>
input[type="text"]{
    display: inline-block;
    /* height: 20px; */
    padding: 4px 6px;
    margin-bottom: 10px;
    font-size: 14px;
    line-height: 20px;
    color: #555555;
    vertical-align: middle;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    border-radius: 4px;
}

.form-control {
    /*display: block; */
    width: 100%;
    /* height: calc(2.25rem + 2px); */
    /* padding: .375rem .75rem; */
    /* font-size: 1rem; */
    font-weight: 400;
    /* line-height: 1.5; */
    /* color: #495057; */
    /* background-color: #fff; */
    background-clip: padding-box;
    /* border: 1px solid #ced4da; */
    /* border-radius: .25rem; */
    /* transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out; */
}
</style>
	
<div style="">
		<div style="margin: 80px; margin-bottom: 20px;">
			<div>
				<h1 class="page-header">고객센터</h1>				
			</div>	
		</div>
		
			<div class="container" role="main" style="height: 700px;">

			<h2>수현아나 문의하기</h2>

			<form name="form" id="form" role="form" method="post" action="">
				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="reg_id">작성자</label>
					<input type="text" class="form-control" name="reg_id" id="reg_id" placeholder="이름을 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="content" id="content" style="height: 400px;" placeholder="내용을 입력해 주세요" ></textarea>
				</div>
				<div class="mb-3">
					<label for="tag">연락처</label>
					<input type="text" class="form-control" name="tag" id="tag" placeholder="연락처를 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="tag">이메일</label>
					<input type="text" class="form-control" name="tag" id="tag" placeholder="이메일을 입력해 주세요">
				</div>
			</form>

			<div style="float:right; margin-bottom: 51px;">
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
				<button type="button" class="btn btn-sm btn-success" id="btnSave">저장</button>
			</div>

		
		

			<!-- Reply Form {s} -->
			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
				<form name="form" id="form" role="form" method="post" action="/soohyunana/UserCenter/insertReply">
					<input type="hidden" name="serNum" id="" value="serNum" value="${list.serNum }">
				<div>
					<div style="padding-top: 41px;">
						<input type="text" class="form-control" name="replyId" id="replyId" placeholder="댓글 작성자">
						<textarea id="replyContent" name="replyContent" class="form-control" rows="3" placeholder="댓글을 입력해 주세요"></textarea>					
					<div>						
						<button type="submit" class="btn btn-sm btn-success" id="btnReplySave" style="float: right; margin-top: 10px;"> 저 장 </button>
					</div>
					</div>
				</div>
				</form>
			</div>
			<!-- Reply Form {e} -->
			
			<!-- Reply List {s}-->
			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
				<h4 class="border-bottom pb-2 mb-0">Reply list</h4>
				<hr>
				<c:choose>
				<c:when test="${fn:length(replyList) > 0}">
					<c:forEach var="list" items="${replyList}">
						<div id="replyList">
					
							<div name="reply${list.replyNo}" id="reply${list.replyNo}">																
								<label>작성자 : ${list.replyId}								
									<button type="button" class="btn btn-sm btn-primary" style="padding: 2px 8px; margin-left: 10px;" id="updatereply" onclick="modifyreply('${list.replyNo}');">수정</button>
									<button type="button" class="btn btn-sm btn-danger" style="padding: 2px 8px; margin-left: 3px;" id="deletereply" onclick="DeleteReply('/soohyunana/UserCenter/deleteReply','${list.replyNo}')">삭제</button>
								</label>
								<label style="padding: 5px;">${list.replyContent}</label>
								<label style="padding: 0 5px;"><h5>${list.replyDay}</h5></label>
						</div>
						
					<!-- 댓글 수정 폼 Start -->		
					
							<form action="" method="POST" name="modifyReplyform${list.replyNo}" id="modifyReplyform${list.replyNo}" style="display:none;">
								<div class="mb-3">
									<label for="reg_id">작성자</label>
									<input type="text" class="form-control" name="replyId" id="replyId" placeholder="${list.replyId}" readonly>
								</div>
								<div class="mb-3">
									<input type="text" class="form-control" name="replyContent" id="replyContent" placeholder="${list.replyContent}">
								</div>
								<div style="margin-bottom:10px;">
									<button type="button" class="btn btn-sm btn-success" style="padding: 2px 8px; margin-left: 10px; float: right;" id="btnList">확인</button>
								</div>
								<br>
							</form>
							
					
					<!-- 댓글 수정 폼 END -->
					<hr>					
						</div>
					</c:forEach>
				
				</c:when>
				</c:choose>
			</div> 
			<!-- Reply List {e}-->

			<br><br><br><br><br><br><br><br>
</div>
</div>

<script>
	//댓글 등록결과
	var replyResult = '${replyResult}';
	if(replyResult == 1){
		alert('${msg}');
	}

	//댓글 삭제 결과
	var deleteResult = '${deleteResult}';
	if(deleteResult == 1){
		alert('${msg}');
	}

	//댓글 수정 폼 보이게
	function modifyreply(target){
		//alert(target);
		var t = target;
		var total = ${total};
	
		for(var i = 1 ; i <= total ; i++){
			if(i==target){
				$('#reply'+i).hide();
				$('#modifyReplyform'+i).show();
			}else{
				$('#reply'+i).show();
				$('#modifyReplyform'+i).hide();
			}	
		}
	
		/*  $('#reply'+target).hide();
		 $('#modifyReplyform'+target).show();  */
	}

	//댓글 삭제 함수
	function DeleteReply(page , target){
		  var f = $("#modifyReplyform"+target);
		  console.log("f : " + $("#modifyReplyform"+target).serialize());
		  f.action = page;
		  $("#modifyReplyform"+target).attr("action",page);
		  console.log( $("#modifyReplyform"+target).attr("action"));
		  //debugger;
		  f.submit();
		}
</script>
