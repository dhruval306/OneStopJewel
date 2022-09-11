<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<security:authorize access="isAuthenticated()">
<security:authentication property="principal.username" var="u"/> 
</security:authorize>

<%-- <c:if test="${u eq null}">
<c:redirect url="welcome.com"/>
</c:if> --%>
<!DOCTYPE html>
<html lang="en">
    <head>
        
        <title><tiles:insertAttribute name="title"/></title>
        <title>One Stop Jewel</title>
        <!-- App favicon -->
        
        <script src="assets/js/jquery.mim.js"></script>
        
		
        <!-- Animation css -->
        <link href="assets/libs/animate/animate.min.css" rel="stylesheet" type="text/css" />

		<!-- Footable css -->
        <link href="assets/libs/footable/footable.core.min.css" rel="stylesheet" type="text/css" />

		  <link href="assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css" />
		  
        <!-- Plugins css -->
        <link href="assets/libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/clockpicker/bootstrap-clockpicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/dropzone/dropzone.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/dropify/dropify.min.css" rel="stylesheet" type="text/css" />
        
         <link href="assets/libs/jquery-toast/jquery.toast.min.css" rel="stylesheet" type="text/css" />
         <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Raleway&display=swap" rel="stylesheet">
         
         <!-- Plugins css -->
        <link href="assets/libs/jquery-nice-select/nice-select.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/switchery/switchery.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/multiselect/multi-select.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/select2/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.css" rel="stylesheet" type="text/css" />

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />

		<!-- Custom box css -->
        <link href="assets/libs/custombox/custombox.min.css" rel="stylesheet">
        
        <style type="text/css">
        *{
        font-family: 'Raleway', sans-serif !important;
        }
        	.subcat {
        cursor: pointer;
       
        transition: 0.5s;
        z-index: 1
    }

    .subcat:hover {
       box-shadow: 1px 1px 17px 0px #11111161;
        transform: scale(1.1);
        border-color: #3f6ad8;
        transition: 0.5s;
    }
    .click {
        cursor: pointer;
       
        transition: 0.5s;
        z-index: 1
    }

    .click:hover {
         box-shadow: 1px 1px 17px 0px #11111161;
        transform: scale(1.1);
        border-color: #3f6ad8;
        transition: 0.5s;
    }
    .rad{
    	border-radius: 16px;
    }
        </style>
		

    </head>
		<body>
    
			<!-- <----------------toast---------------------> 
			
			
			<div class="container-fluid d-none">

               <div class="wrapper">
            <div class="container-fluid">

                <!-- start page title -->
                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Admin UI</a></li>
                                    <li class="breadcrumb-item active">Sweet Alerts</li>
                                </ol>
                            </div>
                            <h4 class="page-title">Sweet Alerts</h4>
                        </div>
                    </div>
                </div>     
                <!-- end page title --> 
				<div class="row">
                    <div class="col-12">
                        <div class="card-box">

                            <table class="table table-borderless table-centered mb-0">
                                <thead class="thead-light">
                                <tr>
                                    <th style="min-width:50%;">Jquery Toast</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Info Example</td>
                                    <td>
                                        <button type="button" class="btn btn-info waves-effect waves-light btn-sm" id="toastr-one">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Warning Example</td>
                                    <td>
                                        <button type="button" class="btn btn-warning waves-effect waves-light btn-sm" id="toastr-two">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Success Example</td>
                                    <td>
                                        <button type="button" class="btn btn-success waves-effect waves-light btn-sm" id="toastr-three">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Danger Example</td>
                                    <td>
                                        <button type="button" class="btn btn-danger waves-light waves-effect btn-sm" id="toastr-four">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>The text can be an array</td>
                                    <td>
                                        <button type="button" class="btn btn-light waves-effect btn-sm" id="toastr-five">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Put some HTML in the text</td>
                                    <td>
                                        <button type="button" class="btn btn-light waves-effect btn-sm" id="toastr-six">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Making them sticky</td>
                                    <td>
                                        <button type="button" class="btn btn-light waves-effect btn-sm" id="toastr-seven">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Fade transitions</td>
                                    <td>
                                        <button type="button" class="btn btn-light waves-effect btn-sm" id="toastr-eight">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Slide up and down transitions</td>
                                    <td>
                                        <button type="button" class="btn btn-light waves-effect btn-sm" id="toastr-nine">Click me</button>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Simple show from and hide to corner transition</td>
                                    <td>
                                        <button type="button" class="btn btn-light waves-effect btn-sm" id="toastr-ten">Click me</button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </div> <!-- end card-box-->
                    </div> <!-- end col -->
                </div>
                <!-- end row --> 
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                    <h4 class="header-title">Examples</h4>

                                    <p class="sub-header">
                                        A beautiful, responsive, customizable, accessible (WAI-ARIA) replacement for JavaScript's popup boxes
                                    </p>

                                <table class="table table-borderless table-centered mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th style="width:50%;">Alert Type</th>
                                            <th>Example</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>A basic message</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-basic">Click me</button>
                                        </td>
                                    </tr>
    
                                    <tr>
                                        <td>A title with a text under</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-title">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>A success message!</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-success">Click me</button>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>A modal window with a long content inside:</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-long-content">Click me</button>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>A custom positioned dialog</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-custom-position">Click me</button>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>A modal with a title, an error icon, a text, and a footer</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-error">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>A confirm dialog, with a function attached to the "Confirm"-button...</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-warning">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>By passing a parameter, you can execute something else for "Cancel".</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-params">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>A message with custom Image Header</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-image">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>A message with auto close timer</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="sa-close">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Custom HTML description and buttons</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="custom-html-alert">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>A message with custom width, padding and background</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="custom-padding-width-alert">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Ajax request example</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="ajax-alert">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Chaining modals (queue) example</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="chaining-alert">Click me</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Dynamic queue example</td>
                                        <td>
                                            <button type="button" class="btn btn-info btn-xs" id="dynamic-alert">Click me</button>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
    
                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->
            </div>

		<div class="container-fluid d-none">
				<div class="row">
                    <div class="col-12">

                        <div class="card-box">
                            <h4 class="header-title">CSS3 Animation</h4>

                            <p class="sub-header">
                                Just-add-water CSS animations.
                            </p>

                            

                            <form class="mt-5">
                                <div class="row justify-content-center">
                                    <div class="col-sm-8">
                                        <div class="input-group">

                                            <select id="animate" class="form-control js--animations">
                                                <!-- <optgroup label="Attention Seekers">
                                                    <option value="bounce">bounce</option>
                                                    <option value="flash">flash</option>
                                                    <option value="pulse">pulse</option>
                                                    <option value="rubberBand">rubberBand</option>
                                                    <option value="shake">shake</option>
                                                    <option value="swing">swing</option>
                                                    <option value="tada">tada</option>
                                                    <option value="wobble">wobble</option>
                                                    <option value="jello">jello</option>
                                                </optgroup>

                                                <optgroup label="Bouncing Entrances">
                                                    <option value="bounceIn">bounceIn</option>
                                                    <option value="bounceInDown">bounceInDown</option>
                                                    <option value="bounceInLeft">bounceInLeft</option>
                                                    <option value="bounceInRight">bounceInRight</option>
                                                    <option value="bounceInUp">bounceInUp</option>
                                                </optgroup>

                                                <optgroup label="Bouncing Exits">
                                                    <option value="bounceOut">bounceOut</option>
                                                    <option value="bounceOutDown">bounceOutDown</option>
                                                    <option value="bounceOutLeft">bounceOutLeft</option>
                                                    <option value="bounceOutRight">bounceOutRight</option>
                                                    <option value="bounceOutUp">bounceOutUp</option>
                                                </optgroup>

                                                <optgroup label="Fading Entrances">
                                                    <option value="fadeIn">fadeIn</option>
                                                    <option value="fadeInDown">fadeInDown</option>
                                                    <option value="fadeInDownBig">fadeInDownBig</option>
                                                    <option value="fadeInLeft">fadeInLeft</option>
                                                    <option value="fadeInLeftBig">fadeInLeftBig</option>
                                                    <option value="fadeInRight">fadeInRight</option>
                                                    <option value="fadeInRightBig">fadeInRightBig</option>
                                                    <option value="fadeInUp">fadeInUp</option>
                                                    <option value="fadeInUpBig">fadeInUpBig</option>
                                                </optgroup>

                                                <optgroup label="Fading Exits">
                                                    <option value="fadeOut">fadeOut</option>
                                                    <option value="fadeOutDown">fadeOutDown</option>
                                                    <option value="fadeOutDownBig">fadeOutDownBig</option>
                                                    <option value="fadeOutLeft">fadeOutLeft</option>
                                                    <option value="fadeOutLeftBig">fadeOutLeftBig</option>
                                                    <option value="fadeOutRight">fadeOutRight</option>
                                                    <option value="fadeOutRightBig">fadeOutRightBig
                                                    </option>
                                                    <option value="fadeOutUp">fadeOutUp</option>
                                                    <option value="fadeOutUpBig">fadeOutUpBig</option>
                                                </optgroup>

                                                <optgroup label="Flippers">
                                                    <option value="flip">flip</option>
                                                    <option value="flipInX">flipInX</option>
                                                    <option value="flipInY">flipInY</option>
                                                    <option value="flipOutX">flipOutX</option>
                                                    <option value="flipOutY">flipOutY</option>
                                                </optgroup>

                                                <optgroup label="Lightspeed">
                                                    <option value="lightSpeedIn">lightSpeedIn</option>
                                                    <option value="lightSpeedOut">lightSpeedOut</option>
                                                </optgroup>

                                                <optgroup label="Rotating Entrances">
                                                    <option value="rotateIn">rotateIn</option>
                                                    <option value="rotateInDownLeft">rotateInDownLeft
                                                    </option>
                                                    <option value="rotateInDownRight">rotateInDownRight
                                                    </option>
                                                    <option value="rotateInUpLeft">rotateInUpLeft</option>
                                                    <option value="rotateInUpRight">rotateInUpRight
                                                    </option>
                                                </optgroup>

                                                <optgroup label="Rotating Exits">
                                                    <option value="rotateOut">rotateOut</option>
                                                    <option value="rotateOutDownLeft">rotateOutDownLeft
                                                    </option>
                                                    <option value="rotateOutDownRight">
                                                        rotateOutDownRight
                                                    </option>
                                                    <option value="rotateOutUpLeft">rotateOutUpLeft
                                                    </option>
                                                    <option value="rotateOutUpRight">rotateOutUpRight
                                                    </option>
                                                </optgroup>

                                                <optgroup label="Sliding Entrances">
                                                    <option value="slideInUp">slideInUp</option>
                                                    <option value="slideInDown">slideInDown</option>
                                                    <option value="slideInLeft">slideInLeft</option>
                                                    <option value="slideInRight">slideInRight</option>

                                                </optgroup>
                                                <optgroup label="Sliding Exits">
                                                    <option value="slideOutUp">slideOutUp</option>
                                                    <option value="slideOutDown">slideOutDown</option>
                                                    <option value="slideOutLeft">slideOutLeft</option>
                                                    <option value="slideOutRight">slideOutRight</option>

                                                </optgroup>
 -->
                                                <optgroup label="Zoom Entrances">
                                                    <option value="fadeInDownBig">zoomIn</option>
                                                    <!-- <option value="zoomInDown">zoomInDown</option>
                                                    <option value="zoomInLeft">zoomInLeft</option>
                                                    <option value="zoomInRight">zoomInRight</option>
                                                    <option value="zoomInUp">zoomInUp</option> -->
                                                </optgroup>

                                               <!--  <optgroup label="Zoom Exits">
                                                    <option value="zoomOut">zoomOut</option>
                                                    <option value="zoomOutDown">zoomOutDown</option>
                                                    <option value="zoomOutLeft">zoomOutLeft</option>
                                                    <option value="zoomOutRight">zoomOutRight</option>
                                                    <option value="zoomOutUp">zoomOutUp</option>
                                                </optgroup>

                                                <optgroup label="Specials">
                                                    <option value="hinge">hinge</option>
                                                    <option value="rollIn">rollIn</option>
                                                    <option value="rollOut">rollOut</option>
                                                </optgroup> -->
                                            </select>

                                                <span class="input-group-append">
                                                <button id="cilickme" class="btn btn-primary waves-light waves-effect js--triggerAnimation"
                                                        type="button">Animate Me !
                                                </button>
                                                </span>
                                        </div>
                                        <!-- /input-group -->

                                    </div> <!-- end col-->
                                </div> <!-- end row-->

                            </form>
                        </div> <!-- end card-box -->

                    </div> <!-- end col -->
                </div>
                <!-- end row-->
			</div>

        <!-- Navigation Bar-->
        <header id="topnav">

            <!-- Topbar Start -->
            <div class="navbar-custom">
                <div class="container-fluid">
                    <ul class="list-unstyled topnav-menu float-right mb-0">

                        <li class="dropdown notification-list">
                            <!-- Mobile menu toggle-->
                            <a class="navbar-toggle nav-link">
                                <div class="lines">
                                    <span>aaa</span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                            <!-- End mobile menu toggle-->
                        </li>
    
                        
                        <!-- <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="fas fa-envelope-square" style="font-size: 20px; padding-top: 25px" ></i>
                                <span class="badge badge-danger rounded-circle noti-icon-badge">1</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-lg">
    
                                item
                                <div class="dropdown-item noti-title">
                                    <h5 class="m-0">
                                        <span class="float-right">
                                            <a href="" class="text-dark">
                                                <small>Clear All</small>
                                            </a>
                                        </span>Notification
                                    </h5>
                                </div>
    
                                
    
                                All
                                <a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item notify-all">
                                    View all
                                    <i class="fi-arrow-right"></i>
                                </a>
    
                            </div>
                        </li> -->
    
                        <li class="dropdown notification-list">
                            <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                <img src="upload/${sessionScope.image}" alt="user-image" class="rounded-circle">
                                <span class="pro-user-name ml-1">
                                
                                    ${sessionScope.username} 
                                </span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                <!-- item-->
                                <div class="dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">One Stop Jewel</h6>
                                </div>
    
                                <!-- item-->
                                <a href="profile.com" class="dropdown-item notify-item">
                                   <i class="fas fa-user"></i>
                                    <span>My Account</span>
                                </a>
    
                                <div class="dropdown-divider"></div>
    
                                <!-- item-->
                                <a href="<c:url value="/logout"/>" class="dropdown-item notify-item">
                                   <i class="fas fa-sign-out-alt"></i>
                                    <span>Logout</span>
                                </a>
    
                            </div>
                        </li>
    
                        <li class="dropdown notification-list">
                            <a href="javascript:void(0);" class="nav-link right-bar-toggle waves-effect">
                                <i  class="far fa-list-alt"></i>
                            </a>
                        </li>
    
                    </ul>
    
                    <!-- LOGO -->
                    <div class="logo-box">
                        <a href="" class="logo text-center">
                            <span class="logo-lg">
                                <img src="assets/images/background/abcd.png" alt="" width="230" height="60">
                                <!-- <span class="logo-lg-text-light">UBold</span> -->
                            </span>
                            <span class="logo-sm">
                                <!-- <span class="logo-sm-text-dark">U</span> -->
                                <img src="assets/images/logo-sm.png" alt="" height="24">
                            </span>
                        </a>
                    </div>
                </div> <!-- end container-fluid-->
            </div>
            <!-- end Topbar -->

            <div class="topbar-menu">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                             <a href="dashboard.com?a=0"> Home </a>
                            </li>

                            <li class="has-submenu">
                                <a class="" href="#">ACM <div class="arrow-down"></div></a>
                                <ul class="submenu click">
                                            <li >
                                                <a href="mas.com?a=0">Role</a>
                                            </li>
                                            <!-- <li>
                                                <a href="privilege.com?a=0">Privilege</a>
                                            </li>-->
                                           <li>
                                                <a href="privilegecomp.com">Privilege Component</a>
                                            </li> 
                                            <!--<li>
                                                <a href="AssignPrivilegetoRole.com">Assign Priviledge to Role</a>
                                            </li>
                                            <li>
                                                <a href="AssignPrivilegetouser.com">Assign Priviledge to User</a>
                                            </li> -->
                                            <li>
                                                <a href="emp.com?a=0">Employee</a>
                                            </li>
                                             <li>
                                                <a href="company.com?a=0">Company</a>
                                                
                                            </li>
                                </ul>
                            </li>
                            
                            <li class="has-submenu">
                                <a href="#">Master <div class="arrow-down"></div></a>
                                <ul class="submenu click">
                                			<li>
                                                <a href="type.com?a=0">Add Type</a>
                                            </li>
                                            <li >
                                                <a href="typerate.com?a=0">Add Type Rate</a>
                                            </li>
                                            <li >
                                                <a href="cat.com?a=0">Add Category</a>
                                            </li>
                                            <li>
                                                <a href="pay.com?a=0">Add payment Method</a>
                                            </li>
                                            
                                </ul>
                            </li>

                            
                            <li class="has-submenu">
                                <a href="#">
                                   Sales <div class="arrow-down"></div></a>
                                <ul class="submenu click">
                                            <li >
                                                <a href="addsalesparty.com?a=0">Add Sales Party</a>
                                            </li>
                                            <li>
                                                <a href="saleitem.com?a=0&&b=0">Sales Item</a>
                                            </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"> Item <div class="arrow-down"></div></a>
                                <ul class="submenu click megamenu">
                                            <li>
                                                <a href="item.com?a=0">Item Master</a>
                                            </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"> Purchase <div class="arrow-down"></div></a>
                                <ul class="submenu click ">
                                            <li >
                                                <a href="#">Add Purchase Party</a>
                                            </li>
                                            <li>
                                                <a href="#"> Purchase Item</a>
                                            </li>
                                            <li>
                                                <a href="#">After Purchase</a>
                                            </li>
                                </ul>
                            </li>
                            
                            <li class="has-submenu">
                                <a href="#"></i>Location <div class="arrow-down"></div></a>
                                <ul class="submenu megamenu click ">
                                            <li>
                                                <a href="country.com?a=0">Country</a>
                                            </li>
                                            <li>
                                                <a href="state.com?a=0">State</a>
                                            </li>
                                            <li>
                                                <a href="city.com?a=0">City</a>
                                            </li>
                                      
                                </ul>
                            </li>

                            
                            

                            <li class="has-submenu">
                                <a href="#"> Account <div class="arrow-down"></div></a>
                                <ul class="submenu click">
                                            <li >
                                                <a href="#"> Purchase Party Account</a>
                                            </li>
                                            <li>
                                                <a href="#"> Sale Party Account</a>
                                            </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"> Opening Stock<div class="arrow-down"></div></a>
                                <ul class="submenu click">
                                            <li >
                                                <a href="#"> Opening stock type</a>
                                            </li>
                                            <li>
                                                <a href="#"> Opening Stock Category</a>
                                            </li>
                                </ul>
                            </li>
                            
                            

                        </ul>
                        <!-- End navigation menu -->

                        <div class="clearfix"></div>
                    </div>
                    <!-- end #navigation -->
                </div>
                <!-- end container -->
            </div>
            <!-- end navbar-custom -->

        </header>
		
         <div class="d-none" id="animationSandbox">
        <div style="padding-top: 80px" id="aa">
        
        <tiles:insertAttribute name="content" />
        </div>
        </div>
		
<!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6">
                         
                    </div>
                    <div class="col-md-6">
                        <div class="text-md-right footer-links d-none d-sm-block">
                            <a href="javascript:void(0);">About Us</a>
                            <a href="javascript:void(0);">Help</a>
                            <a href="javascript:void(0);">Contact Us</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->

<!-- Right Sidebar -->
        <div class="right-bar">
            <div class="rightbar-title">
                <a href="javascript:void(0);" class="right-bar-toggle float-right">
                    <i class="dripicons-cross noti-icon"></i>
                </a>
                <h5 class="m-0 text-white">Settings</h5>
            </div>
            <div class="slimscroll-menu rightbar-content">
                <!-- User box -->
                <div class="user-box">
                    <div class="user-img">
                        <img src="upload/${sessionScope.image}" alt="user-img"  class="rounded-circle img-fluid">
                        
                    </div>
            
                    <h5><a href="javascript: void(0);">${sessionScope.username}</a> </h5>
                    <p class="text-muted mb-0"><small>${sessionScope.role}</small></p>
                </div>

                <!-- Settings -->
                <hr class="mt-0" />
                <h5 class="pl-3">Basic Settings</h5>
                <hr class="mb-0" />

                

                <!-- Timeline -->
                <hr class="mt-0" />
                <h5 class="pl-3 pr-3">Messages <span class="float-right badge badge-pill badge-danger">0</span></h5>
                <hr class="mb-0" />
                
            </div> <!-- end slimscroll-menu-->
        </div>
        
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>
        

        <!-- Vendor js -->
        <script src="assets/js/vendor.min.js"></script>
        
        
        
        <!-- demo animation-->
        <script src="assets/js/pages/animation.init.js"></script>
        
        <!-- Modal-Effect -->
        <script src="assets/libs/custombox/custombox.min.js"></script>
        
        <!-- Footable js -->
        <script src="assets/libs/footable/footable.all.min.js"></script>
        
        
        <!-- Plugins js-->
        <script src="assets/libs/twitter-bootstrap-wizard/jquery.bootstrap.wizard.min.js"></script>
        <script src="assets/libs/flatpickr/flatpickr.min.js"></script>
        <script src="assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
        <script src="assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
        <script src="assets/libs/dropzone/dropzone.min.js"></script>
        <script src="assets/libs/dropify/dropify.min.js"></script>
        <script src="assets/libs/jquery-mask-plugin/jquery.mask.min.js"></script>
        <script src="assets/libs/autonumeric/autoNumeric-min.js"></script>


        <!-- Init js-->
        <script src="assets/js/pages/form-wizard.init.js"></script>
        <script src="assets/js/pages/form-pickers.init.js"></script>
        <script src="assets/js/pages/form-fileuploads.init.js"></script>
        <script src="assets/js/pages/foo-tables.init.js"></script>
        <script src="assets/js/pages/form-masks.init.js"></script>
        
        <script src="assets/libs/tippy-js/tippy.all.min.js"></script>
        
         <!-- Sweet Alerts js -->
        <script src="assets/libs/sweetalert2/sweetalert2.min.js"></script>

        <!-- Sweet alert init js-->
        <script src="assets/js/pages/sweet-alerts.init.js"></script>
        
        <!-- Tost-->
        <script src="assets/libs/jquery-toast/jquery.toast.min.js"></script>

        <!-- toastr init js-->
        <script src="assets/js/pages/toastr.init.js"></script>
        <script src="assets/libs/jquery-nice-select/jquery.nice-select.min.js"></script>
        <script src="assets/libs/switchery/switchery.min.js"></script>
        
        <script src="assets/libs/select2/select2.min.js"></script>
        <script src="assets/libs/jquery-mockjax/jquery.mockjax.min.js"></script>
        <script src="assets/libs/autocomplete/jquery.autocomplete.min.js"></script>
        <script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
        <script src="assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
        <script src="assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>

        <!-- Init js-->
        <script src="assets/js/pages/form-advanced.init.js"></script>

        <!-- App js-->
        <script src="assets/js/app.min.js"></script>
        
        
        <script type="text/javascript">
        $(document).ready(function () {
            
        	$("#cilickme").click();
        	
        });
    	
        </script>
        
        
        
        
      </body>  
    </html>
    