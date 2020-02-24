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
      	  
        <div class="navbar" style="position:fixed; bottom:0px; background-color:black; z-index:1; width: 100%;">
            <div class="navbar-inner">
                <div class="container1" style="margin-right:0">

                    <!-- Main navigation -->
                    <div class="" style="width: 720px; margin: 0 auto;">
                        <ul class="nav" id="top-navigation">
                            <li class="active navul"><a href="#home">항공권 예약</a></li>
                            <li class="navul"><a href="#searchReservation">예약 조회</a></li>
                            <li class="navul"><a href="#checkin">체크인</a></li>
                            <li class="navul"><a href="#searchArrival">출도착 조회</a></li>
                            <li class="navul" style="padding-right:0;"><a href="#event">이벤트</a></li>                           
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
            <div class="container">
                <div class=" title">
                    <h1>예약 조회</h1>
                    <p>예약하신 항공권의 여정을 편리하게 확인하실 수 있습니다.</p>
                </div>
                <!-- Start details for Reservation -->
                <div id="">
                    <div id="" class=" row-fluid single-project" style="height: 420px;">
                    	<div align="center">
	                    	<div style="padding:10px; padding-top:20px">
	                    		<input type="text" id="reservationId" maxlength="8" style="width:172px; ime-mode: disabled;" placeholder="예약번호">
	                    		<button type="button" id="" class="btn btn-light" onclick="searchReser();" style="margin: 0 0 10px 5px;">예약 조회</button>
	                    	</div>
                        </div>
	                        <div class="span6" style="margin-left: 25.127659574468085%; display:none;" id="searchReser">
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
            <div class="container">
                <div class="title">
                    <h1>체크인</h1>
                    <p>원하시는 좌석의 탑승권을 미리 발급받고 공항에서 대기시간을 줄이세요.</p>
                </div>
                <div id=""> 
                    <div id="" class=" row-fluid single-project" style="background-color:#302640; height: 420px;">
                    	<div align="center">
	                    	<div style="padding:10px; padding-top:20px">
	                    		<select style="width:140px;" name="" id="">
	                    			<option value="예약번호">예약번호</option>
	                    			<option value="항공권번호">항공권번호</option>
	                    		</select>
	                    		<input type="text" id="reservationId" maxlength="8" style="width:210px; ime-mode: disabled; margin-left: 10px;" placeholder="8자리 숫자 또는 6자리 영문/숫자">
	                    		<input type="date" id="departDate" maxlength="8" style="width:172px; ime-mode: disabled; margin-left: 10px;" placeholder="탑승일">
	                    		<button type="button" id="" class="btn btn-light" onclick="searchCheckin();" style="margin: 0 0 10px 5px;">예약 조회</button>
	                    	</div>
                        </div>
	                        <div class="span6" style="margin-left: 25.127659574468085%; display:none;" id="searchCheckin">
	                            <div class="project-description" style="text-align: center;">
	                                <div class="reserva">
	                                    <h3>체크인</h3>
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
        <!-- checkin section end -->
        
        <div id="searchArrival" class="section secondary-section" style="height:877px;">
            <!-- <div class="triangle"></div> -->
            <div class="container centered">
                <div class="container centered">
                    <div class="title">
                        <h1>출도착 조회</h1>
                        <p>취항지 출도착 스케줄을 상세하게 확인하실 수 있습니다.</p>
                    </div>
                    <div id="" class=" row-fluid single-project">
                    	<div align="center">
	                    	<div style="padding:10px; padding-top:20px">
	                    		<select style="width:140px;" name="" id="">
	                    			<option value="노선조회">노선조회</option>
	                    			<option value="편명조회">편명조회</option>
	                    		</select>
	                    		<div style="display:inline-block;">
	                    			<input type="text" id="" maxlength="8" style="width:210px; ime-mode: disabled; margin-left: 10px;" onclick="showStartPopup();" placeholder="출발지">
		                    			<!-- 출발지 검색창 옵션1 start -->
										<div class="shadow_layer search_flight" name="strat_layer" id="strat_layer" style="position: absolute; display: none; left: 33.8%; top: 330px;">
											<div class="inner" style="">
												<div class="search_layer">
													<div class="search_lately" name="search_lately">
														<p class="title" style="float: left;">최근 검색</p>
									
														<ul style="margin:0 0 10px 0;">
															<li class="return" val="KR,서울 / 김포,GMP,SEL,서울-KR,제주,CJU,CJU,제주,undefined-202002180000,undefined,undefined,undefined,undefined"
																data-itinerary="GMP-CJU">
																<a href="#none">
																	<span>서울/ 김포<var>GMP</var></span>
																	<span>제주<var>CJU</var></span></a>
															<button type="button" class="btn_detlete" name="btn_delete"
																	onclick="javascript:deleteSearchLatelyData(this, 'searchLatelyDatasArrDep_KRKO', 'GMP-CJU', 'dep');">
																	<span class="hidden">삭제</span>
																</button></li>
														</ul>
													</div>
													<div class="route_list search_auto" id="divDepAirportACF"
														name="search_auto" target="txtDepartureAirportF"
														style="display: none;">
														<p class="title">자동 완성</p>
														<div class="empty_box" name="empty_box">매칭되는 공항이 없습니다.</div>
														<ul
															class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content"
															id="ui-id-1" tabindex="0" style="display: none;"></ul>
													</div>
												</div>
												<input type="hidden" name="default" area="" airport="">
												<button type="button" class="btn_popup airport_open" id="btn_depAllAirport1" name="btn_layer1" seg="dep1"
													deparrtype="dep" style="float: left;" onclick="javascript:showAirportLayer(this, 'F');">전체도시보기</button>
											</div>
											<a href="javascript:hidePopup();" class="layer_close"><img src="/resources/images/main/xicon.png" class="" alt="닫기"></a>
										</div>
		                                <!-- 출발지 검색창 옵션1 END -->
	                    		</div>
	                    		
	                    		
	                    		<div style="display:inline-block;">
	                    			<input type="text" id="" maxlength="8" style="width:210px; ime-mode: disabled; margin-left: 10px;" onclick="showArrivePopup()" placeholder="도착지">
	                    			
	                    			<!-- 도착지 검색창 옵션 1 Start -->
	                                <div class="shadow_layer search_flight" name="arrive_layer" id="arrive_layer" style="display: block; display: none; left: 46.4%; top: 330px;">
										<div class="inner">
											<div class="search_layer">
												<div class="search_lately" name="search_lately">
													<p class="title" style="float: left;">최근 검색</p>
								
													<ul style="margin:0 0 10px 0;">
														<li class="return" val="KR,서울 / 김포,GMP,SEL,서울-KR,제주,CJU,CJU,제주,undefined-202002180000,undefined,undefined,undefined,undefined"
															data-itinerary="GMP-CJU">
															<a href="#none">
																<span>서울/ 김포<var>GMP</var></span>
																<span>제주<var>CJU</var></span></a>
														<button type="button" class="btn_detlete" name="btn_delete"
																onclick="javascript:deleteSearchLatelyData(this, 'searchLatelyDatasArrDep_KRKO', 'GMP-CJU', 'dep');">
																<span class="hidden">삭제</span>
															</button></li>
													</ul>
												</div>
												<div class="route_list search_auto" id="divDepAirportACF"
													name="search_auto" target="txtDepartureAirportF"
													style="display: none;">
													<p class="title">자동 완성</p>
													<div class="empty_box" name="empty_box">매칭되는 공항이 없습니다.</div>
													<ul
														class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content"
														id="ui-id-1" tabindex="0" style="display: none;"></ul>
												</div>
											</div>
											<input type="hidden" name="default" area="" airport="">
											<button type="button" class="btn_popup airport_open" id="btn_depAllAirport1" name="btn_layer1" seg="dep1"
												deparrtype="dep" style="float: left;" onclick="javascript:showAirportLayer(this, 'F');">전체도시보기</button>
										</div>
										<a href="javascript:hidePopup();" class="layer_close"><img src="/resources/images/main/xicon.png" class="" alt="닫기"></a>
									</div>
	                                <!-- 도착지 검색창 옵션 1 END -->
	                    		</div>
	                    		
	                    		
	                    		<input type="date" id="" maxlength="8" style="width:172px; ime-mode: disabled; margin-left: 10px;">
	                    		<button type="button" id="" class="btn btn-danger" style="margin: 0 0 10px 5px;" onclick="javascript:showSearchAirResult();">출도착 조회</button>
	                    	</div>
                        </div>
	                        <div class="span6" style="margin-left: 25.127659574468085%;">
	                            <div class="project-description">
									
	                                
	                                
	                                
	                                
	                                <!-- 출발지 선택창 옵션2 Start -->	                                
	                                <%@include file ="/WEB-INF/views/depAllAirportF.jsp" %>	                               
	                                <!-- 출발지 선택창 옵션2 END -->
	                                
	                                <!-- 도착지 선택창 옵션2 Start -->	  
	                                <%@include file ="/WEB-INF/views/arrAllAirportF.jsp" %>
	                                <!-- 도착지 선택창 옵션2 END -->	
	                                
	                               </div>
	                        </div><!-- span6 END -->                        
                    </div>
                    <div>
                    <!-- 출도착조회 출력 창 Start -->
	                   <%@include file ="/WEB-INF/views/searchDepArrResult.jsp" %>
	                <!-- 출도착조회 출력 창 END -->
                    <!-- End details for Reservation -->
                	</div>
                </div><!-- container end -->
            </div>
        </div>

        
        <!-- event section start -->
        <div id="event" class="section secondary-section" style="background:#181A1C;">
            <div class="container">
                <div class="title">
                    <h1 style="color:white;">이벤트</h1>
                    <p style="color:white;">수현아나항공만의 특별한 혜택을 누려보세요.</p>
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
                
            </div>
        </div>
        </div>
        <!-- Event section end -->
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
        
        
    </body>
</html>