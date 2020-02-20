<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="ko">

		<tiles:insertAttribute name="head" ignore="true" />

	<body>
	
		<tiles:insertAttribute name="header" ignore="true" />
		
		<tiles:insertAttribute name="content" ignore="true" />
	
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
        <script>
			function showStartPopup(){
				$('#strat_layer').show();
				$('#arrive_layer').hide();
				$('#depAllAirportF').hide();
			}

			function hidePopup(){
				$('#strat_layer').hide();
				$('#arrive_layer').hide();
			}
			function showAirportLayer(){
				$('#strat_layer').hide();
				$('#depAllAirportF').show();
			}
			function hideAirportLayer(){
				$('#depAllAirportF').hide();
			}
			function showSearchAirResult(){
				$('#searchDepArrResult').show();
				$('#depAllAirportF').hide();
			}
			
			function showArrivePopup(){
				$('#arrive_layer').show();
				$('#strat_layer').hide();
				$('#depAllAirportF').hide();
			}

			//예약조회-예약조회
			function searchReser(){
				$('#searchReser').show();
			}
			
			//체크인-예약조회
			function searchCheckin(){
				$('#searchCheckin').show();
			}

			</script>        
	</body>
</html>