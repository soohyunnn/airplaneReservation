<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--
 * A Design by GraphBerry
 * Author: GraphBerry
 * Author URL: http://graphberry.com
 * License: http://graphberry.com/pages/license
-->
<html lang="ko">
    
    <head>
        <meta charset=utf-8>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>항공 예매 사이트</title>
        <!-- Load Roboto font -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- Load css styles -->
        <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-responsive.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/style1.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/pluton.css" />
        <!--[if IE 7]>
            <link rel="stylesheet" type="text/css" href="/resources/css/pluton-ie7.css" />
        <![endif]-->
        <link rel="stylesheet" type="text/css" href="/resources/css/jquery.cslider.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/jquery.bxslider.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/animate.css" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/resources/images/ico/apple-touch-icon-144.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/resources/images/ico/apple-touch-icon-114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/resources/images/apple-touch-icon-72.png">
        <link rel="apple-touch-icon-precomposed" href="/resources/images/ico/apple-touch-icon-57.png">
        <link rel="shortcut icon" href="/resources/images/ico/favicon.ico">

    </head>
    <style>
    header{ 
    	height: 50px; 
    	background-color: black;
		position:fixed;
		top:0;
		width:100%;
		z-index:1;
	 }
	 .navbar {
	    background: #181A1C;
	    margin-bottom: 0px;
	    min-height:0px;
	}
	.navul{
		padding-right:50px;
	}
	.reserva {
		margin-top: 15px;
   	 	margin-bottom: 15px;
    	border-bottom: 1px solid #FECE1A;
	}	
	.reserva h3{
		margin-top: 0;
    	padding: 0;
    	width: 80%;
    	color: #FECE1A;
    	padding-left: 50px;
	}
    </style>
    <body>
    	<header>
    			<div style="float:left; display: inline-block;">
	    			<a href="#" class="brand">
	                        <img src="/resources/images/logo.png" width="120" height="40" alt="Logo" style="padding: 5px; margin-left: 15px;"/>
	                        <!-- This is website logo -->
	                </a>
                </div>
	    		<div style="display: inline-block; width: 400px; padding:16px; position: absolute; left:38%;">
					<a href="javascript:void(0);" onclick="moveToPage('/infomani');" style="color:white; padding-right:80px;">예약</a>
					<a href="javascript:void(0);" onclick="moveToPage2('/systemmani');" style="color:white; padding:16px; padding-right: 80px;">여행지</a>
					<a href="javascript:void(0);" onclick="moveToPage2('/systemmani');" style="color:white; padding:16px;">여행</a>
				</div>
				<div style="display: inline-block; padding:16px; position: relative; float: right;">
					<a href="javascript:void(0);" onclick="moveToPage('/infomani');" style="color:white; ">로그인</a>
					<a href="javascript:void(0);" onclick="moveToPage2('/systemmani');" style="color:white; padding:16px;">회원가입</a>
					<a href="/admin/index" style="color:white; padding:16px;">admin</a>
				</div>
			
    	</header>
    	
    	<%-- <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">

				<div style="display: inline-block; width: 800px; padding:16px; position: relative; left: 185px;">
				<a href="javascript:void(0);" onclick="moveToPage('/infomani');" style="color:white; ">사용자관리</a>
				<a href="javascript:void(0);" onclick="moveToPage2('/systemmani');" style="color:white; padding:16px;">시스템관리</a>
				</div>
				
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-envelope"></em><span
							class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">3 mins ago</small> <a href="#"><strong>John
												Doe</strong> commented on <strong>your photo</strong>.</a> <br /> <small
											class="text-muted">1:24 pm - 25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box">
									<a href="profile.html" class="pull-left"> <img alt="image"
										class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body">
										<small class="pull-right">1 hour ago</small> <a href="#">New
											message from <strong>Jane Doe</strong>.
										</a> <br /> <small class="text-muted">12:27 pm -
											25/03/2015</small>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="all-button">
									<a href="#"> <em class="fa fa-inbox"></em> <strong>All
											Messages</strong>
									</a>
								</div>
							</li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle count-info"
						data-toggle="dropdown" href="#"> <em class="fa fa-bell"></em><span
							class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
									<div>
										<form  id="userIdForm" method="POST">
											<input type="hidden" id="loginUserId" name="loginUserId" value="${id}">					
										</form>
																			
										 <c:set var="id" value="${id}" />
											<c:if test="${id == null}">
									          <em class="fa fa-heart"></em><a href="/login" style="color:black;">로그인</a>
									          <li class="divider"></li>
									          <em class="fa fa-heart"></em><a href="/register" style="color:black;">회원가입</a>
									        </c:if>
									        <c:if test="${id != null }">
												<p style="padding-left:10px; color:black;">${id}님</p>
												<em class="fa fa-heart"></em><a href="javascript:void(0);" onclick="moveToPage6('/myInfo');" style="color:black;">정보수정</a>	
												<em class="fa fa-heart"></em><a href="/logout" style="color:black">로그아웃</a>
											</c:if>
									</div>
							</a></li>					
						</ul></li>
				</ul>
			</div>
		</div>
	</nav> --%>
    
        <div class="navbar" style="position:fixed; bottom:0px; background-color:black; right:0; left:0; z-index:1; ">
            <div class="navbar-inner">
                <div class="container1">
                    
                    <!-- Navigation button, visible on small resolution -->
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <i class="icon-menu"></i>
                    </button>
                    <!-- Main navigation -->
                    <div class="nav-collapse collapse pull-right">
                        <ul class="nav" id="top-navigation">
                            <li class="active navul"><a href="#airReservation">항공권 예약</a></li>
                            <li class="navul"><a href="#searchReservation">예약 조회</a></li>
                            <li class="navul"><a href="#checkin">체크인</a></li>
                            <li class="navul"><a href="#searchArrival">출도착 조회</a></li>
                            <li class="navul"><a href="#event">이벤트</a></li>                           
                        </ul>
                    </div>
                    <!-- End main navigation -->
                </div>
            </div>
        </div>
        <!-- Start home section -->
        <div id="home">
            <!-- Start cSlider -->
            <div id="da-slider" class="da-slider">
                <!-- <div class="triangle"></div> -->
                <!-- mask elemet use for masking background image -->
                <div class="mask"></div>
                <!-- All slides centred in container element -->
                <div class="container">
                    <!-- Start first slide -->
                    <div class="da-slide">
                        <h2 class="fittext2">Welcome to pluton theme</h2>
                        <h4>Clean & responsive</h4>
                        <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>
                        <a href="#" class="da-link button">Read more</a>
                        <div class="da-img">
                            <img src="/resources/images/Slider01.png" alt="image01" width="320">
                        </div>
                    </div>
                    <!-- End first slide -->
                    <!-- Start second slide -->
                    <div class="da-slide">
                        <h2>Easy management</h2>
                        <h4>Easy to use</h4>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                        <a href="#" class="da-link button">Read more</a>
                        <div class="da-img">
                            <img src="/resources/images/Slider02.png" width="320" alt="image02">
                        </div>
                    </div>
                    <!-- End second slide -->
                    <!-- Start third slide -->
                    <div class="da-slide">
                        <h2>Revolution</h2>
                        <h4>Customizable</h4>
                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                        <a href="#" class="da-link button">Read more</a>
                        <div class="da-img">
                            <img src="/resources/images/Slider03.png" width="320" alt="image03">
                        </div>
                    </div>
                    <!-- Start third slide -->
                    <!-- Start cSlide navigation arrows -->
                    <div class="da-arrows">
                        <span class="da-arrows-prev"></span>
                        <span class="da-arrows-next"></span>
                    </div>
                    <!-- End cSlide navigation arrows -->
                </div>
            </div>
        </div>
        <!-- End home section -->
        <!-- airReservation section start -->
        <div class="section primary-section" id="airReservation" style="">
            <div class="container">
                <!-- Start title section -->
                <div class="title">
                    <h1>항공권 예약</h1>
                    <!-- Section's title goes here -->
                    <p>Duis mollis placerat quam, eget laoreet tellus tempor eu. Quisque dapibus in purus in dignissim.</p>
                    <!--Simple description for section goes here. -->
                </div>
                
                
                
                <!-- <div class="row-fluid">
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="/resources/images/Service1.png" alt="service 1">
                            </div>
                            <h3>Modern Design</h3>
                            <p>We Create Modern And Clean Theme For Your Business Company.</p>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="/resources/images/Service2.png" alt="service 2" />
                            </div>
                            <h3>Powerfull Theme</h3>
                            <p>We Create Modern And Powerful Theme With Lots Animation And Features</p>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="/resources/images/Service3.png" alt="service 3">
                            </div>
                            <h3>Clean Code</h3>
                            <p>We Create Modern And Powerful Html5 And CSS3 Code Easy For Read And Customize.</p>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
        <div class="section third-section">
            <div class="container centered">
                <div class="sub-section">
                    <div class="title clearfix">
                        <div class="pull-left">
                            <h3>Our Clients</h3>
                        </div>
                        <ul class="client-nav pull-right">
                            <li id="client-prev"></li>
                            <li id="client-next"></li>
                        </ul>
                    </div>
                    <ul class="row client-slider" id="clint-slider">
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo01.png" alt="client logo 1">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo02.png" alt="client logo 2">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo03.png" alt="client logo 3">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo04.png" alt="client logo 4">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo05.png" alt="client logo 5">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo02.png" alt="client logo 6">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo04.png" alt="client logo 7">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- airReservation section end -->
        <!-- searchReservation section start -->
        <div class="section secondary-section " id="searchReservation">
            <div class="triangle"></div>
            <div class="container">
                <div class=" title">
                    <h1>예약 조회</h1>
                    <p>예약하신 항공권의 여정을 편리하게 확인하실 수 있습니다.</p>
                </div>
                <!-- Start details for Reservation -->
                <div id="">
                    <div id="" class=" row-fluid single-project">
                    	<div align="center">
	                    	<div style="padding:10px; padding-top:20px">
	                    		<input type="text" id="reservationId" maxlength="8" style="width:172px; ime-mode: disabled;" placeholder="예약번호">
	                    		<button type="button" id="" class="btn btn-light" onclick="" style="margin: 0 0 10px 5px;">예약 조회</button>
	                    	</div>
                        </div>
	                        <div class="span6" style="margin-left: 25.127659574468085%;">
	                            <div class="project-description" style="text-align: center;">
	                                <div class="reserva">
	                                    <h3>예약 내역</h3>
	                                </div>
	                                <div class="project-info" >
	                                    <div>
	                                        <span>이름</span>Some Client Name</div>
	                                    <div>
	                                        <span>나이</span>July 2013</div>
	                                    <div>
	                                        <span>전화번호</span>http://examplecomp.com</div>
	                                    <div>
	                                        <span>항공편명</span>HTML5, CSS3, JavaScript</div>
	                                    <div>
	                                        <span>출발 시간</span>http://examplecomp.com</div>
	                                    <div>
	                                        <span>도착 시간</span>http://examplecomp.com</div>
	                                    
	                                </div>
	                                <p>Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.</p>
	                            </div>
	                        </div><!-- span6 END -->                        
                    </div>
                    <!-- End details for Reservation -->
                </div>
            </div>
        </div>
        <!-- searchReservation section end -->
        <!-- checkin section start -->
        <div class="section primary-section" id="checkin">
            <div class="triangle"></div>
            <div class="container">
                <div class="title">
                    <h1>체크인</h1>
                    <p>원하시는 좌석의 탑승권을 미리 발급받고 공항에서 대기시간을 줄이세요.</p>
                </div>
                <div id=""> 
                    <div id="" class=" row-fluid single-project" style="background-color:#302640;">
                    	<div align="center">
	                    	<div style="padding:10px; padding-top:20px">
	                    		<select style="width:140px;" name="" id="">
	                    			<option value="예약번호">예약번호</option>
	                    			<option value="항공권번호">항공권번호</option>
	                    		</select>
	                    		<input type="text" id="reservationId" maxlength="8" style="width:210px; ime-mode: disabled; margin-left: 10px;" placeholder="8자리 숫자 또는 6자리 영문/숫자">
	                    		<input type="date" id="departDate" maxlength="8" style="width:172px; ime-mode: disabled; margin-left: 10px;" placeholder="탑승일">
	                    		<button type="button" id="" class="btn btn-light" onclick="" style="margin: 0 0 10px 5px;">예약 조회</button>
	                    	</div>
                        </div>
	                        <div class="span6" style="margin-left: 25.127659574468085%;">
	                            <div class="project-description" style="text-align: center;">
	                                <div class="reserva">
	                                    <h3>예약 내역</h3>
	                                </div>
	                                <div class="project-info" >
	                                    <div>
	                                        <span>이름</span>Some Client Name</div>
	                                    <div>
	                                        <span>나이</span>July 2013</div>
	                                    <div>
	                                        <span>전화번호</span>http://examplecomp.com</div>
	                                    <div>
	                                        <span>항공편명</span>HTML5, CSS3, JavaScript</div>
	                                    <div>
	                                        <span>출발 시간</span>http://examplecomp.com</div>
	                                    <div>
	                                        <span>도착 시간</span>http://examplecomp.com</div>
	                                    
	                                </div>
	                                <p>Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.</p>
	                            </div>
	                        </div><!-- span6 END -->                        
                    </div>
                    <!-- End details for Reservation -->
                </div>
                
                <div class="about-text centered">
                    <h3>About Us</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>
                </div>
                <h3>Skills</h3>
                <div class="row-fluid">
                    <div class="span6">
                        <ul class="skills">
                            <li>
                                <span class="bar" data-width="80%"></span>
                                <h3>Graphic Design</h3>
                            </li>
                            <li>
                                <span class="bar" data-width="95%"></span>
                                <h3>Html & Css</h3>
                            </li>
                            <li>
                                <span class="bar" data-width="68%"></span>
                                <h3>jQuery</h3>
                            </li>
                            <li>
                                <span class="bar" data-width="70%"></span>
                                <h3>Wordpress</h3>
                            </li>
                        </ul>
                    </div>
                    <div class="span6">
                        <div class="highlighted-box center">
                            <h1>We're Hiring</h1>
                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, ullamcorper suscipit lobortis nisl ut aliquip consequat. I learned that we can do anything, but we can't do everything...</p>
                            <button class="button button-sp">Join Us</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- checkin section end -->
        <div class="section secondary-section">
            <div class="triangle"></div>
            <div class="container centered">
                <p class="large-text">Elegance is not the abundance of simplicity. It is the absence of complexity.</p>
                <a href="#" class="button">Purshase now</a>
            </div>
        </div>

        <!-- searchArrival section start -->
        <div id="searchArrival">
            <div class="section primary-section">
                <div class="triangle"></div>
                <div class="container">
                    <div class="title">
                        <h1>출도착 조회</h1>
                        <p>취항지 출도착 스케줄을 상세하게 확인하실 수 있습니다.</p>
                    </div>
                    <div class="row">
                        <div class="span4">
                            <div class="testimonial">
                                <p>"I've worked too hard and too long to let anything stand in the way of my goals. I will not let my teammates down and I will not let myself down."</p>
                                <div class="whopic">
                                    <div class="arrow"></div>
                                    <img src="/resources/images/Client1.png" class="centered" alt="client 1">
                                    <strong>John Doe
                                        <small>Client</small>
                                    </strong>
                                </div>
                            </div>
                        </div>
                        <div class="span4">
                            <div class="testimonial">
                                <p>"In motivating people, you've got to engage their minds and their hearts. I motivate people, I hope, by example - and perhaps by excitement, by having productive ideas to make others feel involved."</p>
                                <div class="whopic">
                                    <div class="arrow"></div>
                                    <img src="/resources/images/Client2.png" class="centered" alt="client 2">
                                    <strong>John Doe
                                        <small>Client</small>
                                    </strong>
                                </div>
                            </div>
                        </div>
                        <div class="span4">
                            <div class="testimonial">
                                <p>"Determine never to be idle. No person will have occasion to complain of the want of time who never loses any. It is wonderful how much may be done if we are always doing."</p>
                                <div class="whopic">
                                    <div class="arrow"></div>
                                    <img src="/resources/images/Client3.png" class="centered" alt="client 3">
                                    <strong>John Doe
                                        <small>Client</small>
                                    </strong>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p class="testimonial-text">
                        "Perfection is Achieved Not When There Is Nothing More to Add, But When There Is Nothing Left to Take Away"
                    </p>
                </div>
            </div>
        </div>
        <!-- <div class="section third-section">
            <div class="container centered">
                <div class="sub-section">
                    <div class="title clearfix">
                        <div class="pull-left">
                            <h3>Our Clients</h3>
                        </div>
                        <ul class="client-nav pull-right">
                            <li id="client-prev"></li>
                            <li id="client-next"></li>
                        </ul>
                    </div>
                    <ul class="row client-slider" id="clint-slider">
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo01.png" alt="client logo 1">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo02.png" alt="client logo 2">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo03.png" alt="client logo 3">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo04.png" alt="client logo 4">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo05.png" alt="client logo 5">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo02.png" alt="client logo 6">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="/resources/images/clients/ClientLogo04.png" alt="client logo 7">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div> -->
        <!-- event section start -->
        <div id="event" class="section secondary-section">
            <div class="container">
                <div class="title">
                    <h1>이벤트</h1>
                    <p>수현아나항공만의 특별한 혜택을 누려보세요.</p>
                </div>
                
                <!-- Start details for portfolio project 1 -->
                <div id="single-project">
                    <div id="slidingDiv" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="/resources/images/Portfolio01.png" alt="project 1" />
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 1 -->
                    <!-- Start details for portfolio project 2 -->
                    <div id="slidingDiv1" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="/resources/images/Portfolio02.png" alt="project 2">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>Life is a song - sing it. Life is a game - play it. Life is a challenge - meet it. Life is a dream - realize it. Life is a sacrifice - offer it. Life is love - enjoy it.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 2 -->
                    <!-- Start details for portfolio project 3 -->
                    <div id="slidingDiv2" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="/resources/images/Portfolio03.png" alt="project 3">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>How far you go in life depends on your being tender with the young, compassionate with the aged, sympathetic with the striving and tolerant of the weak and strong. Because someday in your life you will have been all of these.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 3 -->
                	<ul id="portfolio-grid" class="thumbnails row">
                        <li class="span4 mix web">
                            <div class="thumbnail">
                                <img src="/resources/images/Portfolio01.png" alt="project 1">
                                <a href="#single-project" class="more show_hide" rel="#slidingDiv">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>Thumbnail label</h3>
                                <p>Thumbnail caption...</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix photo">
                            <div class="thumbnail">
                                <img src="/resources/images/Portfolio02.png" alt="project 2">
                                <a href="#single-project" class="show_hide more" rel="#slidingDiv1">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>Thumbnail label</h3>
                                <p>Thumbnail caption...</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix identity">
                            <div class="thumbnail">
                                <img src="/resources/images/Portfolio03.png" alt="project 3">
                                <a href="#single-project" class="more show_hide" rel="#slidingDiv2">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>Thumbnail label</h3>
                                <p>Thumbnail caption...</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                      </ul>
                
                
                <!-- <div class="price-table row-fluid">
                    <div class="span4 price-column">
                        <h3>Basic</h3>
                        <ul class="list">
                            <li class="price">$19,99</li>
                            <li><strong>Free</strong> Setup</li>
                            <li><strong>24/7</strong> Support</li>
                            <li><strong>5 GB</strong> File Storage</li>
                        </ul>
                        <a href="#" class="button button-ps">BUY</a>
                    </div>
                    <div class="span4 price-column">
                        <h3>Pro</h3>
                        <ul class="list">
                            <li class="price">$39,99</li>
                            <li><strong>Free</strong> Setup</li>
                            <li><strong>24/7</strong> Support</li>
                            <li><strong>25 GB</strong> File Storage</li>
                        </ul>
                        <a href="#" class="button button-ps">BUY</a>
                    </div>
                    <div class="span4 price-column">
                        <h3>Premium</h3>
                        <ul class="list">
                            <li class="price">$79,99</li>
                            <li><strong>Free</strong> Setup</li>
                            <li><strong>24/7</strong> Support</li>
                            <li><strong>50 GB</strong> File Storage</li>
                        </ul>
                        <a href="#" class="button button-ps">BUY</a>
                    </div>
                </div>
                <div class="centered">
                    <p class="price-text">We Offer Custom Plans. Contact Us For More Info.</p>
                    <a href="#contact" class="button">Contact Us</a>
                </div> -->
            </div>
        </div>
        </div>
        <!-- Price section end -->
        <!-- Newsletter section start -->
        <div class="section third-section">
            <div class="container newsletter">
                <div class="sub-section">
                    <div class="title clearfix">
                        <div class="pull-left">
                            <h3>Newsletter</h3>
                        </div>
                    </div>
                </div>
                <div id="success-subscribe" class="alert alert-success invisible">
                    <strong>Well done!</strong>You successfully subscribet to our newsletter.</div>
                <div class="row-fluid">
                    <div class="span5">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                    </div>
                    <div class="span7">
                        <form class="inline-form">
                            <input type="email" name="email" id="nlmail" class="span8" placeholder="Enter your email" required />
                            <button id="subscribe" class="button button-sp">Subscribe</button>
                        </form>
                        <div id="err-subscribe" class="error centered">Please provide valid email address.</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Newsletter section end -->
        
        <!-- Footer section start -->
        <div class="footer">
            <p>&copy; 2013 Theme by <a href="http://www.graphberry.com">GraphBerry</a>, <a href="http://goo.gl/NM84K2">Documentation</a></p>
        </div>
        <!-- Footer section end -->
        <!-- ScrollUp button start -->
        <div class="scrollup" style="bottom: 70px;">
            <a href="#">
                <i class="icon-up-open"></i>
            </a>
        </div>
        <!-- ScrollUp button end -->
        <!-- Include javascript -->
        <script src="/resources/js/jquery.js"></script>
        <script type="text/javascript" src="/resources/js/jquery.mixitup.js"></script>
        <script type="text/javascript" src="/resources/js/bootstrap.js"></script>
        <script type="text/javascript" src="/resources/js/modernizr.custom.js"></script>
        <script type="text/javascript" src="/resources/js/jquery.bxslider.js"></script>
        <script type="text/javascript" src="/resources/js/jquery.cslider.js"></script>
        <script type="text/javascript" src="/resources/js/jquery.placeholder.js"></script>
        <script type="text/javascript" src="/resources/js/jquery.inview.js"></script>
        <!-- Load google maps api and call initializeMap function defined in app.js -->
        <script async="" defer="" type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false&callback=initializeMap"></script>
        <!-- css3-mediaqueries.js for IE8 or older -->
        <!--[if lt IE 9]>
            <script src="/resources/js/respond.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="/resources/js/app.js"></script>
    </body>
</html>