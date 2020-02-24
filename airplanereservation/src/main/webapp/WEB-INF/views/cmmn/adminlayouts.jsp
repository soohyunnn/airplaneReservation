<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="ko">

		<tiles:insertAttribute name="head" ignore="true" />
	<body id="page-top">
		<div id="wrapper">
	
			<tiles:insertAttribute name="header" ignore="true" />
		<!-- Content Wrapper -->
   		 <div id="content-wrapper" class="d-flex flex-column">
   		 
   		 		<!-- Main Content -->
     		 	<div id="content">
   		 	
   		 			<tiles:insertAttribute name="topbar" ignore="true" />
   		 	
					<tiles:insertAttribute name="content" ignore="true" />
				
					<tiles:insertAttribute name="footer" ignore="true" />
				</div><!-- End of Main Content -->
			</div><!-- End of Content Wrapper -->
      	</div><!-- End of Page Wrapper -->	
      	
      	<!-- Bootstrap core JavaScript-->
		  <script src="/resources/admin/vendor/jquery/jquery.min.js"></script>
		  <script src="/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		
		  <!-- Core plugin JavaScript-->
		  <script src="/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
		
		  <!-- Custom scripts for all pages-->
		  <script src="/resources/admin/js/sb-admin-2.min.js"></script>
		
		  <!-- Page level plugins -->
		  <script src="/resources/admin/vendor/chart.js/Chart.min.js"></script>
		
		  <!-- Page level custom scripts -->
		  <script src="/resources/admin/js/demo/chart-area-demo.js"></script>
		  <script src="/resources/admin/js/demo/chart-pie-demo.js"></script>
  
	</body>
</html>