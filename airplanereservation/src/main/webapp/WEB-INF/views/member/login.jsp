<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

<div class="container" style="height: 937px;">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3" style="width: 500px; margin: 100px auto 0 auto;">
            <form id="loginForm" name="loginForm" action="" method="POST" role="form" style="width: 500px;">
                <fieldset style="background: white;padding:10px;">
                    <h2 style="color:black;">로그인</h2>
                    <hr class="colorgraph">
                    <p style="color: red;">${msg}</p>
                    <div class="form-group inputst">
                        <input type="text" name="userId" id="userId" class="form-control input-lg" placeholder="아이디" value="admin">
                    </div>
                    <div class="form-group inputst">
                        <input type="password" name="userPw" id="userPw" class="form-control input-lg" placeholder="비밀번호" value="admin">
                    </div>
                    <span class="button-checkbox">
					<button type="button" class="btn" data-color="info">ID 기억하기</button>
                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
					<a href="" class="btn btn-link pull-right">비밀번호를 잃어버렸나요?</a>
				</span>
                    <hr class="colorgraph">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <!-- <input type="submit" class="btn btn-lg btn-success btn-block" style="margin-left: 29px; width: 500px;" value="로그인"> -->
                            <button type="button" id="btnLogin" class="btn btn-lg btn-success btn-block" style="margin-left: 29px; width: 500px;" >로그인</button>
                        </div>
                    </div>
                    <div class="row" style="padding-top:15px; padding-left: 28px;">
                        <div class="col-xs-4 col-sm-4 col-md-4" style="display: inline-block;">
                            <a href="#"><img src="/resources/images/ico/kakao.png"></a>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4" style="display: inline-block;">
                            <a href="#"><img src="/resources/images/ico/facebook.png"></a>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4" style="display: inline-block;">
                            <a href="#"><img src="/resources/images/ico/naver.png"></a>
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<script>
	var result='${result}';
	if(result == true){
		alert('${msg}');
	}
	
	//로그인 처리
    $("#btnLogin").click(function() {
		//alert('a');
		//입력 값 체크
		if($.trim($('#userId').val()) == ''){
			alert("아이디를 입력해 주세요.");
			$('#userId').focus();
			return;
		}else if($.trim($('#userPw').val()) == ''){
			alert("패스워드를 입력해 주세요.");
			$('#userPw').focus();
			return;
		} 

        //비동기 ajax 방식으로 데이터 주고 받기 방법
        
        $.ajax({
        	url : "/loginProcess",
            type : "post",
            dataType:'JSON',
            data :$('#loginForm').serialize(),           
            success : function(data) {
/*             	console.log(data.loginCheck);
            	console.log(data.loginCheck.loginCheck);
            	console.log(data.loginCheck.result); */
            	//
            	if(data.result === "success"){
            		alert("로그인에 성공하였습니다.");
        			location.href ="http://localhost:8080/";
            	}else if(data.result === "nopassword"){
            		alert("비밀번호가 틀립니다.");
            		location.href ="http://localhost:8080/member/login";
            	}else if(data.result === "noid"){
            		alert("아이디가 틀립니다.");
            		location.href ="http://localhost:8080/member/login";
            	}
            	            	
            },error : function(){ 
              	alert("로그인에 실패하였습니다.");  
            }

        });

    });
</script>
