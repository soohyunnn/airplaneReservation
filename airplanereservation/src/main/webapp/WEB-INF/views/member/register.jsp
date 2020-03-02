<%--
  Created by IntelliJ IDEA.
  User: soo
  Date: 2020-02-03
  Time: 오후 4:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <title>회원가입</title>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="/resources/js/register.js"></script>


<div class="container" style="height: 937px;">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3" style="width: 500px; margin: 100px auto 0 auto;">
            <form id="registerForm" name="registerForm" action="/registerProcess" Method="POST" role="form" style="width: 500px;">
                <fieldset style="background: white;padding:10px;">
                    <h2 style="color:black;">회원가입</h2>
                    <h3><small>회원으로 가입하시면 예약,발권,탑승,마일리지 조회 등 다양한 서비스와 함께 정기 이벤트 뉴스와 할인항공권 소식을 이메일로 받아보실 수도 있습니다.</small></h3>
                    <hr class="colorgraph">
                    <div class="form-group inputst">
                        <input type="text" name="userName" id="userName" class="form-control input-lg" placeholder="이름">
                    </div>
                    <div class="form-group inputst">
                        <input type="text" name="userId" id="userId" class="form-control input-lg" placeholder="아이디">
                        <button type="button" id="btnIdCheck" class="btn btn-sm btn-warning" style="margin-bottom: 10px;">ID 중복 체크</button>
                    </div>
                    <div class="form-group inputst">
                        <input type="password" name="userPw" id="userPw" class="form-control input-lg" placeholder="비밀번호">
                    </div>
                    <div class="form-group inputst">
                        <input type="password" name="userPhone" id="userPhone" class="form-control input-lg" placeholder="핸드폰 번호">
                    </div>
                    <div class="form-group inputst">
                        <input type="text" name="userEmail" id="userEmail" class="form-control input-lg" placeholder="이메일">
                    </div>
                    
                    <hr class="colorgraph">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <input type="submit" class="btn btn-primary btn-block btn-lg" style="margin-left: 27px; width: 500px;" value="회원가입">
                        </div>
                    </div>
                    
                </fieldset>
            </form>
        </div>
    </div>
</div>


<script>
$("#btnIdCheck").click(function(){
	//var userId =$('#userId').val();
	
	//alert('1');
	$.ajax({
		url : '/duplicateIdCheck',
		type : 'POST',
		data : $('#registerForm').serialize() ,
		dataType:'JSON',
		success : function(data){
				console.log('통신성공');
				console.log(data.result);

				if(data.result == 1){
					alert('이미 사용중인 ID입니다.');	
				}else{
					alert('사용가능한 ID입니다.');
				}											
			},
			error : function() {
				alert("ID중복 체크 통신 실패");
				
			}									
		});
	
});
</script>


