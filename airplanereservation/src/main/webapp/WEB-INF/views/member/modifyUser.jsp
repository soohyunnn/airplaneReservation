<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

<div class="container" style="height: 937px;">
   <div style="width: 91%; margin: 0 auto; padding-top: 173px;">
		<!-- 회원 정보 수정 -->
		<div class="panel panel-default" id="insertDiv" style="margin: 0 auto; background: #e0e0e0; border-radius: 19px; border: 1px solid;">
			<div class="panel-heading" style="padding: 10px; background: #e0e0e0; border-top-left-radius: 17px; border-top-right-radius: 17px; border: 1px solid;">회원 정보 입력</div>
			<div class="panel-body" style="padding: 20px; background: white; border-bottom-left-radius: 17px; border-bottom-right-radius: 17px; border: 1px solid;">
			    
			    <!-- action="확장자 방식의 서블릿요청주소 -->
			    <!-- 회원수정 form Start -->
				<form id="userUpdateForm" name="userUpdateForm" action="" method="post">
					<div class="form-group" style="color: black;">
						<!-- name="" 속성은 JSP 프로그램 진행시 필수 속성 -->
						<!-- 식별자는 자료형 클래스의 멤버명으로 작성할 것 -->
						<!-- 동일 자료 동일 식별자 원칙 -->	
						<label for="name">이름:</label>
						<input type="text" class="form-control" id="userName" name="userName"  value="${list.userName}"required>
					</div>
					<div class="form-group" style="color: black;">
						<label for="phone">ID:</label>
						<input type="text" class="form-control" id="userId" name="userId" value="${list.userId}" required>
					</div>
					<div class="form-group" style="color: black;">
						<label for="phone">PW:</label> 
						<input type="text" class="form-control" id="userPw" name="userPw" value="${list.userPw}" required>
					</div>
					<div class="form-group" style="color: black;">
						<label for="phone">전화번호:</label> 
						<input type="text" class="form-control" id="userPhone" name="userPhone" value="${list.userPhone}" required>
					</div>
					<div class="form-group" style="color: black;">
						<label for="email">이메일:</label> 
						<input type="text" class="form-control" id="userEmail" name="userEmail" value="${list.userEmail}" required>
					</div>
					
					<!-- submit 버튼은 JSP 프로그램 진행시 필수 요소 -->
					<!-- 폼 태그 범위 안에 위치해야 한다. -->
					<button type="button" class="btn btn-sm btn-primary" style="" id="btnUpdateUser">수정</button>
					<button type="button" class="btn btn-sm btn-primary" style="" id="btnDeleteUser">회원탈퇴</button>					
				</form>
				<!-- 회원수정 form End -->
			</div>
		</div>
	</div>
</div>
<script>
//회원정보 수정
$("#btnUpdateUser").click(function(){
	//alert('1');
	
	var updateCon = confirm("회원정보를 수정하시겠습니까?");

	if (updateCon == true) {
		$.ajax({
			url : '/updateUserProcess',
			type : 'POST',
			data : $('#userUpdateForm').serialize(),
				success : function(data) {
					console.log('successs');
					alert('수정을 완료하였습니다.');
					location.href = 'http://localhost:8080';
				},
				error : function() {
					alert("수정을 실패하였습니다.");
				}
			});
		}
	});


//회원탈퇴
$("#btnDeleteUser").click(function(){
	//alert('1');
	var deleteCon = confirm("회원탈퇴를 하시겠습니까?");

	if (deleteCon == true) {
		$.ajax({
			url : '/deleteUserProcess',
			type : 'POST',
			data : $('#userUpdateForm').serialize(),
				success : function(data) {
					console.log('successs');
					alert('회원탈퇴가 완료되었습니다. 이용해주셔서 감사합니다');
					location.href = 'http://localhost:8080';
				},
				error : function() {
					alert("회원탈퇴를 실패하였습니다. 잠시 후에 다시 시도해주세요");
				}
			});
		}
	});
</script>
