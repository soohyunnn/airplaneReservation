<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header>
    			<div style="float:left; display: inline-block;">
	    			<a href="/" class="brand">
	                        <img src="/resources/images/logo.png" width="120" height="40" alt="Logo" style="padding: 5px; margin-left: 15px;"/>
	                        <!-- This is website logo -->
	                </a>
                </div>
                <div class="menubar">
                <div class="dropdown">
                	<a class="dropbtn firstmenu" href="javascript:void(0);">예약</a>
		    		<div class="dropdown-content">
						<a href="/reservation/reserHistory" style="padding-right:80px;">예약 내역</a>
						<a href="/reservation/airPurchaseHistory" style="padding-right:80px;">항공권 구매 내역</a>
					</div>		
				</div>
				<div class="dropdown">
                	<a class="dropbtn firstmenu" href="javascript:void(0);">여행지</a>
		    		<div class="dropdown-content">
						<a href="/destination/domestic">국내</a>
						<a href="/destination/overseas">해외</a>
					</div>		
				</div>
				<div class="dropdown">
                	<a class="dropbtn firstmenu" href="javascript:void(0);">여행</a>
		    		<div class="dropdown-content">
						<a href="/travel/atTheAirport" style="padding-right:80px;">공항에서</a>
						<a href="/travel/inTheAirplane" style="padding-right:80px;">기내에서</a>
						<a href="/travel/paidAdditionalService" style="padding-right:80px;">유료 부가서비스</a>
					</div>		
				</div>
					
				</div>
				
				<div style="display: inline-block; padding:16px; position: relative; float: right;">
					<a href="/member/login" onclick="" style="color:white; ">로그인</a>
					<a href="/member/register" onclick="" style="color:white; padding:16px;">회원가입</a>
					<a href="/admin/index" style="color:white; padding:16px;">admin</a>
				</div>
			
    	</header>