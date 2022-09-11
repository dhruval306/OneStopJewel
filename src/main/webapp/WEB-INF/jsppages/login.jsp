<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<security:authorize access="isAuthenticated()">
<security:authentication property="principal.username" var="u"/> 
</security:authorize>


<c:if test="${u ne null}">
<c:redirect url="mas.com?a=0"/>
</c:if>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>One Stop Jewel</title>
        
       
		<!-- Animation css -->
        <link href="assets/libs/animate/animate.min.css" rel="stylesheet" type="text/css" />
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body class="authentication-bg authentication-bg-pattern" style=" background-image:url(assets/images/background/login.jpg ); background-repeat: no-repeat;
  background-size: 100% 100%;  
  background-size: cover;">
	
	<div class="container-fluid d-none">
				<div class="row">
                    <div class="col-12">

                        <div class="card-box">
                            <h4 class="header-title">CSS3 Animation</h4>

                            <p class="sub-header">
                                Just-add-water CSS animations.
                            </p>

                           

                            <form class="mt-5">
                                <div class="row ">
                                    <div class="col-4">
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
                                                    <option value="bounceInLeft">zoomIn</option>
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
	
         <div class="account-pages mt-5 mb-5">
            <div class="container" style="margin-right: -500px;">
            <div class="d-none" id="animationSandbox">
                <div class="row ">
                    <div class="col-md-4 col-lg-6 col-xl-5">
                        <div class="card bg-light">

                            <div class="card-body p-4">
                                
                                <div class="text-center w-75 m-auto">
                                    
                                        <span> <img src="assets/images/background/abcd.png" alt="" width="200" height="60"></span>
                                   
                                    <p class="text-muted mb-4 mt-3"></p>
                                </div>

                                <form action='<c:url value="/login" />' method="post">
									<c:if test="${msg ne null}">
								<center><div class="alert alert-danger" role="alert">
                                <i class="fas fa-exclamation-triangle"></i> ${msg }
                            </div></center>
									
									</c:if>
                                    <div class="form-group mb-3">
                                        <label >UserName</label>
                                        <input class="form-control"  name="username" required="required" placeholder="Enter your username">
                                    </div>

                                    <div class="form-group mb-3">
                                        <label for="password">Password</label>
                                        <input class="form-control" name="password" type="password" required="required"   placeholder="Enter your password">
                                    </div>
									
									<input type = "hidden" name="_csrf" value="${_csrf.token}"/>

									<div class="form-group mb-0 text-center">
                                        <button class="btn btn-blue btn-block" type="submit"> Log In </button>
                                    </div>

                                </form>

                                <div class="text-center">
                                    <h5 class="mt-3 text-muted">Sign in with</h5>
                                    <ul class="social-list list-inline mt-3 mb-0">
                                        <li class="list-inline-item">
                                            <a href="javascript: void(0);" class="social-list-item border-primary text-primary"><i class="fab fa-facebook-square"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript: void(0);" class="social-list-item border-danger text-danger"><i class="fab fa-google"></i></a>
                                        <li class="list-inline-item">
                                            <a href="javascript: void(0);" class="social-list-item border-info text-info"><i class="fab fa-twitter"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript: void(0);" class="social-list-item border-secondary text-secondary"><i class="fab fa-github"></i></a>
                                        </li>
                                    </ul>
                                </div>

                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->
						
                        <div class="row mt-3">
                            <div class="col-12 text-center">
                                <p> <a href="forgetpassword.com" class="text-white-50 ml-1">Forgot your password?</a></p>
                                <p class="text-white-50">Don't have an account? <a href="user_registration.com" class="text-white ml-1"><b>Sign Up</b></a></p>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end page -->
</div>
	

        <footer class="footer footer-alt">
             
        </footer>
		
		
        <!-- Vendor js -->
        <script src="assets/js/vendor.min.js"></script>
        
        <!-- demo animation-->
        <script src="assets/js/pages/animation.init.js"></script>

        <!-- App js -->
        <script src="assets/js/app.min.js"></script>
        
        <script type="text/javascript">
        $(document).ready(function () {
            
        	$("#cilickme").click();
        	
        });
    	
        </script>
        
    </body>
</html>