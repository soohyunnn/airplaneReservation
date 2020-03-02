<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">SH Admin <sup>2</sup></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="/">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>SH Airplane</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

	  <li class="nav-item">
        <a class="nav-link collapsed" href="/admin/index">
          <i class="fas fa-fw fa-cog"></i>
          <span>HOME</span>
        </a>    
      </li>
	  
	  <!-- Divider -->
      <hr class="sidebar-divider">
      
      <!-- Heading -->
      <div class="sidebar-heading">
        User
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>사용자관리</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">User Management:</h6>
            <a class="collapse-item" href="/admin/usermani/adminUserInfo">회원정보</a>
            <a class="collapse-item" href="/admin/usermani/adminReser">예약내역</a>
            <a class="collapse-item" href="/admin/usermani/adminAirTicket">항공권 구매 내역</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>시스템관리</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">System Management:</h6>
            <a class="collapse-item" href="/admin/systemmani/adminAirSelect">항공권 조회(출도착 조회)</a>
            <a class="collapse-item" href="/admin/systemmani/adminBanner">배너이미지</a>
            <a class="collapse-item" href="/admin/systemmani/adminEvent">이벤트</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        UserPage
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>여행지</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Destination:</h6>
            <a class="collapse-item" href="/admin/admindestination/adminDomestic">국내 목록</a>
            <a class="collapse-item" href="/admin/admindestination/adminOverseas">해외 목록</a>
          </div>
        </div>
      </li>


	<li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages1" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>여행</span>
        </a>
        <div id="collapsePages1" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">travel:</h6>
            <a class="collapse-item" href="/admin/travel/adminAtTheAirport">공항에서</a>
            <a class="collapse-item" href="/admin/travel/adminInTheAirplane">기내에서</a>
            <a class="collapse-item" href="/admin/travel/adminPaidAddService">유료 부가서비스</a>
          </div>
        </div>
      </li>
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages2" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>수현아나클럽</span>
        </a>
        <div id="collapsePages2" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">travel:</h6>
            <a class="collapse-item" href="/admin/soohyunanaclub/adminNotice">공지사항</a>
            <a class="collapse-item" href="/admin/soohyunanaclub/adminUserCenter">고객센터</a>
          </div>
        </div>
      </li>

    </ul>
    <!-- End of Sidebar -->