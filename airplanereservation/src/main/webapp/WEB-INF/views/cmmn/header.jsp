<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String userSessionId = (String)session.getAttribute("userId");
%>    
<script>
function moveToPage(page){
	  
	  var f = $("#pageForm");	  
	  console.log("f : " + $("#pageForm").serialize());
	  f.action = page;
	  $("#pageForm").attr("action",page);
	  console.log( $("#pageForm").attr("action"));
	  //debugger;
	  f.submit();
	}

</script>    
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
			    			<a href="/reservation/airReser" style="padding-right:80px;">항공권 예약</a>
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
					<div class="dropdown">
	                	<a class="dropbtn firstmenu" href="javascript:void(0);">수현아나클럽</a>
			    		<div class="dropdown-content">
							<a href="/soohyunana/notice" style="padding-right:30px;">공지사항</a>
							<a href="/soohyunana/userCenter" style="padding-right:30px;" >고객센터</a>
						</div>		
					</div>
					
				</div>
				
				<div style="display: inline-block; padding:16px; position: relative; float: right;">
					
					<% if(userSessionId == null) { %>
						<a href="/member/login" style="color:white; ">로그인&nbsp;&nbsp;&nbsp;|</a>
						<a href="/member/register" style="color:white; padding:16px;">회원가입</a>
					<% } else { %>
						<label style="float: left; padding-top: 1px; padding-right: 5px; font-size: 16px;"><%=userSessionId %> 님 &nbsp;&nbsp;&nbsp;|</label>
						<% if(userSessionId.equals("admin")){%>					
							<a href="/admin/index" style="color:white; padding:16px;">admin&nbsp;&nbsp;&nbsp;|</a>
							<a href="/logoutProcess" style="color:white; padding:16px; padding-left: 1px;">로그아웃</a>
						<%}else { %>
							<a href="#" onclick="moveToPage('/modifyUsePage')" style="color:white; padding:16px;">정보수정&nbsp;&nbsp;&nbsp;|</a>
							<a href="/logoutProcess" style="color:white; padding:16px; ">로그아웃</a>
						<%} %>
					<% } %>
				</div>
			
    	</header>
    	
    		<form id="pageForm" method="POST">>
    			<input type="hidden" id="userId" name="userId" value=<%=userSessionId %> >
 
    		</form>