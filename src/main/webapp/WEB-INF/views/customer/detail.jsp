<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="resources/assets/images/favicon.png">
    <title>AROUNDRY</title>
    <!-- Bootstrap Core CSS -->
    <link href="resources/assets/node_modules/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="resources/assets/node_modules/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
    <!-- This page CSS -->
    <!-- chartist CSS -->
    <link href="resources/assets/node_modules/morrisjs/morris.css" rel="stylesheet">
    <!--c3 CSS -->
    <link href="resources/assets/node_modules/c3-master/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/khj/css/style.css" rel="stylesheet">
    <!-- Dashboard 1 Page CSS -->
    <link href="resources/khj/css/pages/dashboard1.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="resources/khj/css/colors/default.css" id="theme" rel="stylesheet">
    
  
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.20/c3.css'>
	<link rel='stylesheet' href='resources/assets/css/yearpicker.css'>
	<script src='resources/assets/js/yearpicker.js'></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->





<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	animationEnabled: true,

	axisX: {
		interval: 1,
		intervalType: "month",
		valueFormatString: "MMM"
	},
	axisY:{
		title: "",
		includeZero: true,
		valueFormatString: "#00.000.000원"
	},
	data: [{        
		type: "line",
		markerSize: 12,
		xValueFormatString: "MMM",
		yValueFormatString: "#원",
		dataPoints: [        
			{ x: new Date(2022, 00, 1), y: 61, indexLabel: "1월", markerType: "triangle",  markerColor: "#6B8E23" },
			{ x: new Date(2022, 01, 1), y: 71, indexLabel: "2월", markerType: "triangle",  markerColor: "#6B8E23" },
			{ x: new Date(2022, 02, 1) , y: 55, indexLabel: "3월", markerType: "triangle", markerColor: "6B8E23" },
			{ x: new Date(2022, 03, 1) , y: 50, indexLabel: "4월", markerType: "triangle", markerColor: "6B8E23" },
			{ x: new Date(2022, 04, 1) , y: 65, indexLabel: "5월", markerType: "triangle", markerColor: "#6B8E23" },
			{ x: new Date(2022, 05, 1) , y: 85, indexLabel: "6월", markerType: "triangle", markerColor: "#6B8E23" },
			{ x: new Date(2022, 06, 1) , y: 68, indexLabel: "7월", markerType: "triangle", markerColor: "6B8E23" },
			{ x: new Date(2022, 07, 1) , y: 28, indexLabel: "8월", markerType: "triangle", markerColor: "6B8E23" },
			{ x: new Date(2022, 08, 1) , y: 34, indexLabel: "9월", markerType: "triangle", markerColor: "#6B8E23" },
			{ x: new Date(2022, 09, 1) , y: 24, indexLabel: "10월", markerType: "triangle", markerColor: "6B8E23" },
			{ x: new Date(2022, 10, 1) , y: 44, indexLabel: "11월", markerType: "triangle", markerColor: "#6B8E23" },
			{ x: new Date(2022, 11, 1) , y: 34, indexLabel: "12월", markerType: "triangle", markerColor: "6B8E23" }
		]
	}]
});
chart.render();

}

</script>

</head>

<body class="fix-header fix-sidebar card-no-border">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">AROUNDRY</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!--  ============================================================== -->
               <!--  Logo -->
                <!--  ============================================================== -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon --><b>
                            <!-- You can put here icon as well<i class="wi wi-sunset"></i>--> 
                            <!-- Dark Logo icon -->
                            <img src="resources/assets/images/logo-icon1.png" alt="homepage" class="dark-logo" />
                            
                        </b>
           <!--              End Logo icon
                        Logo text<span>
                         dark Logo text
                         <img src="resources/assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                         Light Logo text    
                         <img src="resources/assets/images/logo-light-text.png" class="light-logo" alt="homepage" /></span>  --></a>
                </div>
                <!--  ============================================================== -->
                <!-- End Logo -->
                <!--  ============================================================== -->
                <div class="navbar-collapse">
                    <!--  ============================================================== -->
                   <!--  toggle and nav items -->
                    <!--  ============================================================== -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark" href="javascript:void(0)"><i class="fa fa-bars"></i></a> </li>
                        <!--  ============================================================== -->
                        <!-- Search -->
                        <!--  ============================================================== -->
                        <li class="nav-item hidden-xs-down search-box"> <a class="nav-link hidden-sm-down waves-effect waves-dark" href="javascript:void(0)"><i class="fa fa-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search & enter"> <a class="srh-btn"><i class="fa fa-times"></i></a></form>
                        </li>
                    </ul>
                    <!--  ============================================================== -->
                    <!-- User profile and search -->
                    <!--  ============================================================== -->
                    <ul class="navbar-nav my-lg-0">
                       <!--  ============================================================== -->
                        <!-- Profile -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown u-pro">
                            <a class="nav-link dropdown-toggle waves-effect waves-dark profile-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="hidden-md-down">서구청점 &nbsp;</span> </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll -->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation -->
                <nav class="sidebar-nav">								
                    <ul id="sidebarnav">
                        <li> <a class="waves-effect waves-dark" href="index.html" aria-expanded="false"><img src="resources/assets/images/iconplus.png"/><span class="hide-menu">매장추가</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="table-basic.html" aria-expanded="false"><img src="resources/assets/images/iconmodify.png"/><span class="hide-menu">매장수정</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="pages-profile.html" aria-expanded="false"><img src="resources/assets/images/iconsdelete.png"/><span class="hide-menu">매장삭제</span></a>
                        </li>
                        <li> <a class="waves-effect waves-dark" href="pages-profile.html" aria-expanded="false"><img src="resources/assets/images/iconperson.png"/><span class="hide-menu">프로필</span></a>
                        </li>
                        
                  
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll -->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <div class="row page-titles">
                    <div class="col-md-5 align-self-center">
                        <h3 class="text-themecolor">매출차트</h3>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Sales Chart and browser state-->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex no-block">
                                    <div>
                                        <h5 class="card-title m-b-0">월간매출</h5>
                                    </div>
                                  <!--   <div class="ml-auto">
                                        <ul class="list-inline text-center font-12">
                                            <li><i class="fa fa-circle text-success"></i> SITE A</li>
                                            <li><i class="fa fa-circle text-info"></i> SITE B</li>
                                            <li><i class="fa fa-circle text-primary"></i> SITE C</li>
                                        </ul>
                                    </div> -->
                                </div>
                                            
                                <div class="" id="chartContainer" style="height: 355px; width: 100%; "></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- End Sales Chart -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Projects of the Month -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex">
                                    <div>
                                        <h5 class="card-title">오늘 이용자</h5>
                                    </div>
                             <!--        <div class="ml-auto">
                                        <select class="custom-select b-0">
                                            <option selected="">1월</option>
                                            <option value="1">2월</option>
                                            <option value="2">3월</option>
                                            <option value="3">4월</option>
                                            <option value="3">5월</option>
                                            <option value="3">6월</option>
                                            <option value="3">7월</option>
                                            <option value="3">8월</option>
                                            <option value="3">9월</option>
                                            <option value="3">10월</option>
                                            <option value="3">11월</option>
                                            <option value="3">12월</option>
                                        </select>
                                    </div> -->
                                </div>
                                <div class="table-responsive m-t-20 no-wrap">
                                    <table class="table vm no-th-brd pro-of-month">
                                    <colgroup>                                    	
										<col width="50px">
										<col width="100px">
										<col width="150px">
										<col width="200px">
									</colgroup>                                                                       
                                            <tr><th></th>
                                            	<th>아이디</th>
                                                <th>이용날짜</th>
                                                <th>이용금액</th>                                            	
                                            </tr>                                               
                                       
                                        	<c:forEach items="${detail}" var="detail"> 
                                            <tr style="width:50px"class="active";><td><span class="round">S</span></td>
                                                <td><h6>${detail.userid}</h6></td>
                                                <td><fmt:formatDate value="${detail.costdate}" pattern="yy-MM-dd"/></td>
                                                <td>${detail.cost}원</td>
                                            </tr>
                                            </c:forEach>
                                   
                                    </table>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-4">
                        <div class="card">
                            <%-- <div class="up-img" style="background-image:url(${info.imageurl})"></div> --%>
                            <div class="card-body">
                            	<div items="${info}" var="info">
                                <div><h5 class=" card-title">${info.location}</h5></div>
                                <span class="label label-info label-rounded">Technology</span>
                                <p class="m-b-0 m-t-20">주소 : ${info.address}</p>
                                <div class="d-flex m-t-20">
                         
                                    <div class="ml-auto align-self-center">
                                        <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-heart-o"></i></a>
                                        <a href="javascript:void(0)" class="link m-r-10"><i class="fa fa-share-alt"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                
                         
                
                <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
               <script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script> 
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

                
<script src='https://cdnjs.cloudflare.com/ajax/libs/c3/0.7.20/c3.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/d3/5.16.0/d3.min.js'></script>                

                <!-- ============================================================== -->
                <!-- End Notification And Feeds -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- End Page Content -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer"> © 2018 Adminwrap by wrappixel.com </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="resources/assets/node_modules/jquery/jquery.min.js"></script>
    <!-- Bootstrap popper Core JavaScript -->
    <script src="resources/assets/node_modules/bootstrap/js/popper.min.js"></script>
    <script src="resources/assets/node_modules/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="resources/khj/js/perfect-scrollbar.jquery.min.js"></script>
    <!--Wave Effects -->
    <script src="resources/khj/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="resources/khj/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="resources/khj/js/custom.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <!--morris JavaScript -->
    <script src="resources/assets/node_modules/raphael/raphael-min.js"></script>
    <script src="resources/assets/node_modules/morrisjs/morris.min.js"></script>
    <!--c3 JavaScript -->
    <script src="resources/assets/node_modules/d3/d3.min.js"></script>
    <script src="resources/assets/node_modules/c3-master/c3.min.js"></script>
    <!-- Chart JS -->
    <script src="resources/khj/js/das<input type="hidden" name="storeid" value="29">hboard1.js"></script>
    
    
</body>

</html>