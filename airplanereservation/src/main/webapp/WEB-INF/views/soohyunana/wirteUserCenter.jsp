<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!-- <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="/resources/ckeditor/ckeditor.js"></script>	 -->
<div>
		<div style="margin: 80px; margin-bottom: 20px;">
			<div>
				<h1 class="page-header">고객센터</h1>				
			</div>	
		</div>
		
			<div class="container" role="main" style="height: 700px;">

			<h2>수현아나 문의하기</h2>

			<form name="insertform" id="insertform" role="form" method="post" action="">
				<div class="mb-3">
					<label for="title">제목</label>
					<input type="text" class="form-control" name="serTitle" id="serTitle" placeholder="제목을 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="reg_id">작성자</label>
					<input type="text" class="form-control" name="serId" id="serId" placeholder="이름을 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="" rows="30" cols="80" name="serContent" id="serContent" placeholder="내용을 입력해주세요"></textarea>
				</div>
				<div class="mb-3">
					<label for="tag">연락처</label>
					<input type="text" class="form-control" name="serPhone" id="serPhone" placeholder="연락처를 입력해 주세요">
				</div>
				<div class="mb-3">
					<label for="tag">이메일</label>
					<input type="text" class="form-control" name="serEmail" id="serEmail" placeholder="이메일을 입력해 주세요">
				</div>
			

			<div style="float:right; margin-bottom: 51px;">
				<a href="/soohyunana/userCenter" onclick="" class="btn btn-sm btn-primary" >목록</a>
				<button type="button" class="btn btn-sm btn-success" id="btnSave">저장</button>				
			</div>

			</form>
<!-- <form id="listvlaue" name="listvlaue" method="post">
	<input type="hidden" id="page" name="page" value="1">
	<input type="hidden" id="range" name="range" value="1">
	<input type="hidden" id="searchType" name="searchType" value="Everything">
	<input type="hidden" id="keyword" name="keyword" value="">
</form>	 -->	

			<br><br><br><br><br><br><br><br><br>
			
		</div>
</div>

<script>
CKEDITOR.replace("serContent",{height: 500, customConfig : '/resources/ckeditor/config.js'});

	$("#btnSave").click(function(){
		
 		if(CKEDITOR.instances.serContent.getData().length < 1){
			alert("내용을 입력해 주세요.");
			
		}else{
			CKEDITOR.instances.serContent.getData()
		}  
		
		console.log(CKEDITOR.instances.serContent.getData());
		insertform.serContent.value = CKEDITOR.instances.serContent.getData();
		
		//alert('1');
		$.ajax({
			url : '/soohyunana/insertUserCenter',
			type : 'POST',
			data : $('#insertform').serialize() ,
				success : function(data){
					console.log('게시글 등록 성공');
					alert('등록을 완료하였습니다.');
					
					 var f = $("#insertform");
					  
					  f.action = '/soohyunana/userCenter';
					  $("#insertform").attr("action","/soohyunana/userCenter");
					  					 
					  f.submit();
									
				},
				error : function() {
					alert("등록을 실패하였습니다.");
				}
					
						
			});
		
	});


</script>
