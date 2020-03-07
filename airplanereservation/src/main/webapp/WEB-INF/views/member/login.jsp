<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->   
    
<script>

</script>
<div class="container" style="height: 937px;">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3" style="width: 500px; margin: 100px auto 0 auto;">
            <form id="loginForm" name="loginForm" action="" method="POST" role="form" style="width: 500px;">
                <fieldset style="background: white;padding:10px;">
                    <h2 style="color:black;">로그인</h2>
                    <hr class="colorgraph">
                    <p style="color: red;">${msg}</p>
                    <div class="form-group inputst">
                        <input type="text" name="userId" id="userId" class="form-control input-lg loginId" placeholder="아이디">
                    </div>
                    <div class="form-group inputst">
                        <input type="password" name="userPw" id="userPw" class="form-control input-lg" placeholder="비밀번호">
                    </div>
                    <span class="button-checkbox">
					<button type="button" class="btn" data-color="info">ID 기억하기</button>
                    <input type="checkbox" name="idSaveCheck" id="idSaveCheck">
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
//쿠키 Start
$(document).ready(function(){

	//쿠키에 저장될 id값은 input의 id이름으로 가져오면 값을 가져오기 못하므로 class로 이름을 지정후 가져와야함(주의!!)
    // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
    var key = getCookie("key");
    $(".loginId").val(key); 
     
    if($(".loginId").val() != ""){ // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
        $("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
    }
     
    $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            setCookie("key", $(".loginId").val(), 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("key");
        }
    });
     
    // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
    $(".loginId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기를 체크한 상태라면,
            setCookie("key", $(".loginId").val(), 7); // 7일 동안 쿠키 보관
        }
    });
});
 
function setCookie(cookieName, value, exdays){
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
    document.cookie = cookieName + "=" + cookieValue;
}
 
function deleteCookie(cookieName){
    var expireDate = new Date();
    expireDate.setDate(expireDate.getDate() - 1);
    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}
 
function getCookie(cookieName) {
    cookieName = cookieName + '=';
    var cookieData = document.cookie;
    var start = cookieData.indexOf(cookieName);
    var cookieValue = '';
    if(start != -1){
        start += cookieName.length;
        var end = cookieData.indexOf(';', start);
        if(end == -1)end = cookieData.length;
        cookieValue = cookieData.substring(start, end);
    }
    return unescape(cookieValue);
}

//쿠키 END

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
