<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>항공 예매 사이트</title>
        <!-- Load Roboto font -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- Load css styles -->
        <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-responsive.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/style1.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/pluton.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/main.css" />
        <link rel="stylesheet" type="text/css" href="/resources/css/login_resgister.css">

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
    html{
    	background: #181A1C;
    }
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
	.menubar{
		display: inline-block; 
		width: 370px; 
		padding:16px; 
		position: absolute; 
		left:38%;
	}
	.dropbtn {
	    color: white;
	    padding: 16px;
	    font-size: 16px;
	    border: none;
	    cursor: pointer;
	    padding: 15px 40px;
	}
	.dropdown {
		position: relative;
		display: inline-block;
	}
	.dropdown-content {
		top: 34px;
	    display: none;
	    position: absolute;
	    background-color: #f9f9f9;
	    min-width: 160px;
	    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	    z-index: 1;
	}
	.dropdown-content a {
	    color: black;
	    padding: 12px 16px;
	    text-decoration: none;
	    display: block;
	    width: 130px;
	    
	}
	.dropdown-content a:hover {
	    background-color: #ffa72a;
	}
	.dropdown:hover .dropdown-content {
    	display: block;
	}
	.dropdown:hover .dropbtn {
	    background-color: #4e4e4e;
	   /*  width:50px; */
	}
	.firstmenu:link {
		text-decoration: none;
		color: white;
	}
	.firstmenu:visited{
		text-decoration: none;
		color: white;
	}
	.footeradd {
		bottom: 0;
	    position: fixed; 
	    width: 100%;
	    height: 200px;
	}
	.inputst input{
		height:35px;
		width: 97%;
	}
    </style>