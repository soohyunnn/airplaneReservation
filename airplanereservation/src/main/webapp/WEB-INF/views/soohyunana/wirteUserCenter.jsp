<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
"<script type='text/javascript'>
   window.parent.CKEDITOR.tools.callFunction(" + 
      callback + 
      ",'" + fileUrl + "','이미지를 업로드 하였습니다.'" + ")
</script>"


<script src="/resources/ckeditor/config.js"></script>
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
					<textarea rows="5" cols="60" name="serContent" id="serContent" ></textarea>
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
//이미지 업로드
CKEDITOR.on('dialogDefinition', function( ev ){
var dialogName = ev.data.name;
var dialogDefinition = ev.data.definition;

switch (dialogName) {
    case 'image': //Image Properties dialog
        //dialogDefinition.removeContents('info');
        dialogDefinition.removeContents('Link');
        dialogDefinition.removeContents('advanced');
        break;
}
}); 

//CKEditor 추가
CKEDITOR.replace("serContent",{
	height: 500,
	enterMode : CKEDITOR.ENTER_BR , // 엔터키를 <br> 로 적용함. 
	shiftEnterMode : CKEDITOR.ENTER_P , // 쉬프트 + 엔터를 <p> 로 적용함.
	toolbarGroups: [	//필요한 툴바만 나타나도록 함
	  { "name": "basicstyles", "groups": ["basicstyles"]},
	  { "name": "colors"},
      { "name": "links", "groups": ["links"]},
      { "name": "paragraph", "groups": ["list", "blocks"]},
      { "name": "document", "groups": ["mode"]},
      { "name": "insert", "groups": ["insert"]},
      { "name": "styles", "groups": ["styles"]},
      { "name": "about", "groups": ["about"]},
      { "name": "about", "groups": ["about"]}     
    ],
    // Remove the redundant buttons from toolbar groups defined above.
    removeButtons: 'Underline,Strike,Subscript,Superscript,Anchor,Specialchar',
    //filebrowserImageUploadUrl: '/ckeditorImageUpload'		//여기 경로로 파일을 전달하여 업로드 시킴
    filebrowserUploadUrl : "/fileupload"
	});
	
	
	
	$("#btnSave").click(function(){
		
 		if(CKEDITOR.instances.serContent.getData().length < 1){				//CKEditor 입력창에 아무것도 입력하지 않고 저장 버튼 눌렀을 경우
			alert("내용을 입력해 주세요.");
			
		}else{
			CKEDITOR.instances.serContent.getData()							//CKEditor 입력창에 입력을 한 경우 그 값을 가져옴
		}  
		
		console.log(CKEDITOR.instances.serContent.getData());
		insertform.serContent.value = CKEDITOR.instances.serContent.getData();		//CKEditor에서 받아온 값을 insertform에 저장시킴 
		
		
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
