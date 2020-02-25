<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	예약-항공권예약
<div style="height: 695px; overflow-x: auto;">
		<div style="margin: 80px; margin-bottom: 20px;">
			<div>
				<h1 class="page-header">고객센터</h1>				
			</div>	
		</div>
		
			<div class="container" role="main" style="height: 700px;">

			<h2>수현아나 문의하기</h2>

			<form name="form" id="form" role="form" method="post" action="">
				<div class="mb-3">
					<label for="title">글 번호</label>
					<input type="text" class="form-control" name="title" id="title" placeholder="NO">
				</div>
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
				<button type="button" class="btn btn-sm btn-warning" id="btnSave">수정</button>
				<button type="button" class="btn btn-sm btn-danger" id="btnSave">삭제</button>
			</div>

		
		

			<!-- Reply Form {s} -->

			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">

				<form name="form" id="form" role="form" modelAttribute="replyVO" method="post">

				<hidden path="bid" id="bid"/>

				<div>
					<div style="padding-top: 41px;">
						<input type="text" class="form-control" name="tag" id="tag" placeholder="댓글 작성자">
						<textarea id="content" class="form-control" rows="3" placeholder="댓글을 입력해 주세요"></textarea>
					
					<div>						
						<button type="button" class="btn btn-sm btn-primary" id="btnReplySave" style="float: right; margin-top: 10px;"> 저 장 </button>
					</div>
					</div>
				</div>

				</form>

			</div>

			<!-- Reply Form {e} -->
			
		</div>
</div>

