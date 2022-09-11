 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <style type="text/css">
        	
            .a{
                float: left;
            }
            .b{
                text-align: center;
            }
            .c
            {
            	display: none;
            }
             
            .d{
                border: 1px solid #ddd;
  				border-radius: 1px;
 				 padding: 5px;
  					}
  				
            </style>
 
 <div class="wrapper">
            <div class="container-fluid">
    
		<div class="row">
        <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">ACM</a></li>
                                    <li class="breadcrumb-item active">Employee</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    </div>
                    
                  <div class="col-12 mb-3">
                    	<div style="float: left;"><h2><label class="header-title mb-1">Employee Information</label></h2></div>
                     	<div  style="text-align: right;"><a href="addnewemp.com?a=0"><button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px"  type="button" class="btn btn-light btn-sm waves-effect  col-1" >Add New</button></a></div>
                    </div>  
                    
                    

                               <div class="row">
                    <div class="col-lg-4  col-xl-4">
                        

                        <div class="card-box">
                            <h4 class="header-title mb-3">Employee</h4>
							
                            <div class="inbox-widget  subca">
                            <c:forEach items="${employeedata }"  var="s" varStatus="count">
                                <div class="inbox-item">
                                    <div class="inbox-item-img"><img src="assets/images/users/user-5.jpg" class="rounded-circle" alt=""></div>
                                    <p class="inbox-item-author">${s.emp_fullname }</p>
                                    <p class="inbox-item-text">${s.emp_role }</p>
                                    <p class="inbox-item-date ">
                                        <a href="emp.com?a=${s.emp_id }" class="btn btn-sm btn-info  font-13" style="color: white">More Info</a>
                                    </p>
                                </div>
                              </c:forEach>  
                                
                                
                                
                            </div> <!-- end inbox-widget -->

                        </div> <!-- end card-box-->

                    </div> <!-- end col-->

                    <div class="col-lg-8 col-xl-8">
                        <div class="card-box " >
                        <c:forEach items="${emp }" var="s" varStatus="count">
                        	<h4 class="header-title mb-3">More Infomation</h4>
                        	<div class="" id="moreinfo">
                            <ul class="nav nav-pills navtab-bg nav-justified">
                                <li class="nav-item">
                                    <a href="#aboutme" data-toggle="tab" aria-expanded="false" class="nav-link ">
                                        Salary Details
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#timeline" data-toggle="tab" aria-expanded="true" class="nav-link  active">
                                        About Me
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#settings" data-toggle="tab" aria-expanded="false" class="nav-link ">
                                        Bank & Document Details
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane" id="aboutme">

                                    
                                    <!-- Story Box-->
                                    <div class="border border-light p-2 mb-3">
                                        	
											<div class="row">
							                    <div class="col-md-6 col-xl-4">
							                        <div class="widget-rounded-circle card-box">
							                            <div class="row">
							                                <div class="col-6">
							                                    <div class="avatar-lg rounded-circle bg-soft-success border-success border">
							                                        <i class="fas fa-smile-beam font-22 avatar-title text-success"></i>
							                                    </div>
							                                </div>
							                                <div class="col-6">
							                                    <div class="text-right">
							                                        <h3 class="text-dark mt-1"><span data-plugin="counterup">${s.emp_leave }</span></h3>
							                                        <p class="text-muted mb-1 text-truncate">No. of Leave</p>
							                                    </div>
							                                </div>
							                            </div> <!-- end row-->
							                        </div> <!-- end widget-rounded-circle-->
							                    </div> <!-- end col-->
							
							                    <div class="col-md-6 col-xl-4">
							                        <div class="widget-rounded-circle card-box">
							                            <div class="row">
							                                <div class="col-6">
							                                    <div class="avatar-lg rounded-circle bg-soft-danger border-danger border">
							                                        <i class="fas fa-sort-amount-down font-22 avatar-title text-danger"></i>
							                                    </div>
							                                </div>
							                                <div class="col-6">
							                                    <div class="text-right">
							                                        <h3 class="text-dark mt-1">Rs.<span data-plugin="counterup">${s.emp_cutofhalfleave}</span></h3>
							                                        <p class="text-muted mb-1 text-truncate">Cut Per Leave</p>
							                                    </div>
							                                </div>
							                            </div> <!-- end row-->
							                        </div> <!-- end widget-rounded-circle-->
							                    </div> <!-- end col-->
							
							                    <div class="col-md-6 col-xl-4">
							                        <div class="widget-rounded-circle card-box">
							                            <div class="row">
							                                <div class="col-6">
							                                    <div class="avatar-lg rounded-circle bg-soft-danger border-danger border">
							                                        <i class="fas fa-sort-amount-down font-22 avatar-title text-danger"></i>
							                                    </div>
							                                </div>
							                                <div class="col-6">
							                                    <div class="text-right">
							                                        <h3 class="text-dark mt-1">Rs.<span data-plugin="counterup">${s.emp_cutoffullleave }</span></h3>
							                                        <p class="text-muted mb-1 text-truncate">Cut Per Leave</p>
							                                    </div>
							                                </div>
							                            </div> <!-- end row-->
							                        </div> <!-- end widget-rounded-circle-->
							                    </div> <!-- end col-->
											</div>
											
											<div class="row">
							                    <div class="col-12">
							                        <div class="widget-rounded-circle card-box">
							                            <div class="row">
							                                <div class="col-6 ">
							                                    <div class="avatar-lg rounded-circle bg-soft-info border-info border">
							                                        <i class="fas fa-clock font-22 avatar-title text-info"></i>
							                                    </div>
							                                </div>
							                                <div class="col-6">
							                                    <div class="text-right">
							                                        <h3 class="text-dark text-uppercase mt-1">${s.emp_workingdays }</h3>
							                                        <p class="text-muted mb-1 text-truncate">Working Days</p>
							                                    </div>
							                                </div>
							                            </div> <!-- end row-->
							                        </div> <!-- end widget-rounded-circle-->
							                    </div> <!-- end col-->
											</div>	
											
					
							                <div class="row">
							                    <div class="col-12">
							                        <div class="widget-rounded-circle card-box">
							                            <div class="row">
							                                <div class="col-6 ">
							                                    <div class="avatar-lg rounded-circle bg-soft-info border-info border">
							                                        <i class="fas fa-clock font-22 avatar-title text-info"></i>
							                                    </div>
							                                </div>
							                                <div class="col-6">
							                                    <div class="text-right">
							                                        <h3 class="text-dark text-uppercase mt-1">${s.emp_comingtime} To ${s.emp_leavingtime}</h3>
							                                        <p class="text-muted mb-1 text-truncate">Working Hour</p>
							                                    </div>
							                                </div>
							                            </div> <!-- end row-->
							                        </div> <!-- end widget-rounded-circle-->
							                    </div> <!-- end col-->
											</div>
											
											
											<div class="row">
							                    <div class="col-12">
							                        <div class="widget-rounded-circle card-box">
							                            <div class="row">
							                                <div class="col-6">
							                                    <div class="avatar-lg rounded-circle bg-soft-primary border-primary border">
							                                        <i class="fas fa-rupee-sign font-22 avatar-title text-primary"></i>
							                                    </div>
							                                </div>
							                                <div class="col-6">
							                                    <div class="text-right">
							                                        <h3 class="text-dark mt-1"><span data-plugin="counterup">${s.emp_finalsalary}</span></h3>
							                                        <p class="text-muted mb-1 text-truncate">Final Salary</p>
							                                    </div>
							                                </div>
							                            </div> <!-- end row-->
							                        </div> <!-- end widget-rounded-circle-->
							                    </div> <!-- end col-->
											</div>
									</div>
                                </div> <!-- end tab-pane -->
                                <!-- end about me section content -->

                                <div class="tab-pane show active" id="timeline">

                       				<!-- Story Box-->
                                    <div class="border border-light p-2 mb-3">
                                        <div class="media">
                                            <img class="mr-2 avatar-sm rounded-circle" src="assets/images/users/user-5.jpg"
                                                alt="Generic placeholder image">
                                            <div class="media-body">
                                                <h5 class="m-0">${s.emp_fullname}</h5>
                                                <p class="text-muted"><small>${s.emp_role}</small></p>
                                                
                                                <h4 class="font-13  col-12"><span class="text-uppercase "> employee id</span> : ${s.emp_id}</h4>
                                                
                                                <h4 class="font-13  col-6 a"> <span class="text-uppercase ">email id</span> : <span class=""> ${s.emp_email}</span></h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a"><span class=" ">mobile no(1)</span> : ${s.emp_phoneno1}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a"><span class=" ">mobile no(2)</span> : ${s.emp_phoneno2}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a"><span class=" ">Father Name</span> : ${s.emp_fathername}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a"><span class=" ">Mother Name</span> : ${s.emp_mothername}</h4>
                                                
                                                
                                                <h4 class="font-13 text-uppercase col-6 a">blood group : ${s.emp_bloodgroup}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a">birth date : ${s.emp_dob}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a">gender : ${s.emp_gender}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a">married status : ${s.emp_marriedstatus}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-12 a">Company name : ${s.c.company_name}</h4>
                                                
                                            </div>
                                            
                                        </div>
                                    </div>
                                    
                                    <div class="border border-light p-2 mb-3">
                                    <h5 class="m-0">Permanent Address : ${s.emp_address }</h5>
                                    <br>
                                        <div class="media">
                                            <div class="media-body">
                                            	<h4 class="font-13 text-uppercase col-6 ">city : ${s.ct.city_name }</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 ">state : ${s.st.state_name}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-12 ">country : ${s.co.country_name }</h4>
                                            </div>
                                        </div>
                                    </div>        
                       				
                                </div>
                                <!-- end timeline content-->

                                <div class="tab-pane" id="settings">
                                	
                                	<!-- Story Box-->
                                    <div class="border border-light p-2 mb-3">
                                    	
                                        
                                        					 <div class="row">
								                                <div class="col-12">
								                                    <h4 class="header-title mb-2">Document Details </h4>
								                                    
								
								                                    
								                                        <div class="col-4 a">
								                                            <img src="upload/${s.emp_aadhaarcard}" alt="image"
								                                                    class=" rounded" height="112" width="200"/>
								                                            <p class="mb-0">
								                                                <code>.Adhar-card</code>
								                                            </p>
								                                        </div>
								
								                                        <div class="col-4 a">
								                                            <img src="upload/${s.emp_pancard}" alt="image"
								                                                    class=" rounded" height="112" width="200"/>
								                                            <p class="mb-0">
								                                                <code>.Pan-card</code>
								                                            </p>
								                                        </div>
								                                        
								                                        <div class="col-4 a">
								                                            <img src="upload/${s.emp_photo}" alt="image"
								                                                    class=" rounded" height="112" width="200"/>
								                                            <p class="mb-0">
								                                                <code>.Photo</code>
								                                            </p>
								                                        </div>
								                                    </div>
								                                </div>
								                                
								                                
								                                 <!-- end col-->
                                        		
                                    <br>
                                    <br>
                                    <h4 class="header-title mb-2">Bank Details:</h4>
                                    
                                        <div class="media">
                                            <div class="media-body">
                                            	<h4 class="font-13 text-uppercase col-5 a">Bank name : ${s.emp_bankname}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a">account number : ${s.emp_accountno}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a">branch number : ${s.emp_branchname}</h4>
                                                
                                                <h4 class="font-13 text-uppercase col-6 a">IFSC code : ${s.emp_ifsccode}</h4>
                                                
                                                
                                            </div>
                                        </div>
                                      
                                        
                                    </div>
                                	    
                                </div>
                                <!-- end settings content-->

                            </div> <!-- end tab-content -->
                        </div>
                        </c:forEach> <!-- end card-box-->
						</div>
                    </div> <!-- end col -->
                </div>
                <!-- end row-->
                                
                            </div> <!-- end card body-->
                             
                        </div> <!-- end card -->
                