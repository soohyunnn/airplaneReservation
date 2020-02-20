<%--
  Created by IntelliJ IDEA.
  User: soo
  Date: 2020-02-03
  Time: 오후 3:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

<div class="container" style="height: 937px;">
    <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3" style="top: 100px;">
            <form role="form">
                <fieldset>
                    <h2>로그인</h2>
                    <hr class="colorgraph">
                    <div class="form-group inputst">
                        <input type="text" name="userId" id="userId" class="form-control input-lg" placeholder="아이디">
                    </div>
                    <div class="form-group inputst">
                        <input type="password" name="password" id="password" class="form-control input-lg" placeholder="비밀번호">
                    </div>
                    <span class="button-checkbox">
					<button type="button" class="btn" data-color="info">ID 기억하기</button>
                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
					<a href="" class="btn btn-link pull-right">비밀번호를 잃어버렸나요?</a>
				</span>
                    <hr class="colorgraph">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <input type="submit" class="btn btn-lg btn-success btn-block" value="로그인">
                        </div>
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</div>

