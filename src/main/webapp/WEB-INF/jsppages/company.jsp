<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

			<style type="text/css">
				.b{
						float: left;
					}
				.a{
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
                                    <li class="breadcrumb-item active">Company</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    </div>
                    
                    <div class="col-12 mb-3">
                    	<div style="float: left;"><h2><label class="header-title mb-1">Company Information</label></h2></div>
                     	<div style="text-align: right;"><a style=" padding: 5px; border-radius: 13px" class="btn  btn-info col-1 btn-sm click" data-toggle="collapse" href="#collapseExample" aria-expanded="true" aria-controls="collapseExample">
                                    		All Details
                                		</a>
                                		<button type="button" style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" class="btn btn-light btn-sm waves-effect click col-1" data-toggle="modal" data-target="#accordion-modal">Add New</button></div>
                    </div>		
             
                     <div class="row">
                       <c:forEach items="${companydata }" var="s" varStatus="count">
                    <div class="col-xl-4">
                        <div class="card-box">
                            <h4 class="header-title mb-3">Company No ${count.count }</h4>

                            <div class="widget-chart text-center" dir="ltr">
                                <img width="70px" height="60px"   class="click b rounded-circle" alt="image" src="upload/${s.logo }">
                                <h5 class="text-muted mt-3">${s.owner_name }</h5>
                                <h4 class=" text-center text-uppercase ">${s.company_name }</h4>
									
								
                                
                                    <div class="text-left mt-3">
                                <div class="collapse " id="collapseExample">
                                <div style="padding-top: 10px">
                                <div class="border border-light p-2 mb-3">
                                <p class="header-title mb-2"><strong>Details:-</strong></p>
                                
                                <div class="media">
                                            <div class="media-body">
                                <p class="font-13 text-uppercase col-12"><strong>Web-site :</strong> <span class="ml-2"> ${s.website_name} </span></p>

                                <p class="font-13 text-uppercase col-12"><strong>Mobile No :</strong><span class="ml-2">${s.mobile_no}</span></p>

                                <p class="font-13 text-uppercase col-12"><strong>Email :</strong> <span class="ml-2"> ${s.email} </span></p>
                                
                                <p class="font-13 text-uppercase col-12"><strong>GST Number :</strong> <span class="ml-2 "> ${s.gst_number} </span></p>
                                
                                <p class="font-13 text-uppercase col-12"><strong>PAN Card No. :</strong> <span class="ml-2 "> ${s.pan_card_number} </span></p>

                              	<p class="font-13 text-uppercase col-12"><strong>Address :</strong> <span class="ml-2"> ${s.address} </span></p>
                            	</div>
                            	</div>
                            	</div>
                            	<div class="border border-light p-2 mb-3">
                            	<p class="header-title mb-2"><strong>Bank Details:-</strong></p>
                            	<div class="media">
                                            <div class="media-body">
                            	<p class="font-13 text-uppercase col-12"><strong>Bank Name :</strong> <span class="ml-2"> ${s.bank_name} </span></p>
                            	
                            	<p class="font-13 text-uppercase col-12"><strong>Account Number :</strong> <span class="ml-2"> ${s.account_number} </span></p>
                            	
                            	<p class="font-13 text-uppercase col-12"><strong>Branch Name :</strong> <span class="ml-2"> ${s.branch_name} </span></p>
                            	
                            	<p class="font-13 text-uppercase col-12"><strong>IFSC_code :</strong> <span class="ml-2"> ${s.IFSC_code} </span></p>
                            	</div>
                            	</div>
                            	</div>
                            
                                </div> <!-- end row -->
                                </div>
                                </div>
                            </div>
                        </div> <!-- end card-box -->
                    </div> <!-- end col-->

                  </c:forEach>
                </div>
                    
                    
                        
                </div>
                
                <!-- end row-->
            </div>
            
      <!-- Custom Modal -->
        <div id="custom-modal" class="modal-demo">
            <div >
            <button type="button" class="close" onclick="Custombox.modal.close();">
                <span>&times;</span><span class="sr-only">Close</span>
            </button>
            <h4 class="custom-modal-title">Add New Area</h4>
            </div>
            <div class="custom-modal-text">
                         <form:form modelAttribute="area" action="com.com" >                              
                         
                                                        <div class="col-12 mb-2" >
                                                            <label >Country Name:-</label>
                                                            <form:select path="co.country_id" class="form-control " >
                                                            <c:forEach items="${countrydata }" var="s">
                                                            	<form:option value="${s.country_id }">${s.country_name }</form:option>
                                                            </c:forEach>
                                                            </form:select>
                                                       </div>
                                                        <div class="col-12 mb-2" >
                                                            <label>State Name:-</label>
                                                            <form:select path="st.state_id" class="form-control " >
                                                            <c:forEach items="${statedata }" var="s">
                                                            	
                                                            	<form:option value="${s.state_id }">${s.state_name }</form:option>
                                                            </c:forEach>
                                                            
                                                            </form:select>
                                                       </div>
                                                       <div class="col-12 mb-2" >
                                                            <label>City Name:-</label>
                                                            <form:select path="ci.city_id" class="form-control " >
                                                            <c:forEach items="${citydata }" var="s">
                                                            	
                                                            	<form:option value="${s.city_id }">${s.city_name }</form:option>
                                                            </c:forEach>
                                                            
                                                            </form:select>
                                                       </div>
                                                       <div class="col-12 mb-2" >
                                                            <label >Area Name:-</label>
                                                            
                                                            <form:select path="area_name" class="form-control " >
                                                            <c:forEach items="${citydata }" var="s">
                                                            	
                                                            	<form:option value="${s.city_name }">${s.city_name }</form:option>
                                                            </c:forEach>
                                                            
                                                            </form:select>
                                                       </div>
                                                      
                                                       <div class="modal-footer">
                                                    		<form:button type="submit" class="btn btn-success waves-effect waves-light">Save</form:button>
                                							<button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</button>
                                                        </div>
                                      
                                                        
                         </form:form>         
            </div>
        </div> 

<div id="accordion-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                <form:form modelAttribute="company" enctype="multipart/form-data" >   
                
                			<form:input path="company_id" type="hidden"/>            
                                <div class="modal-dialog">
                                    <div class="modal-content p-0">
                                        <div id="accordion">
                                            <div class="card mb-0">
                                                <div class="card-header" id="headingOne">
                                                    <h5 class="m-0">
                                                        <a href="#collapseOne" class="text-dark" data-toggle="collapse" aria-expanded="true" aria-controls="collapseOne">
                                                            <i class="fas fa-user-graduate"></i>
                                                    <span class="d-none d-sm-inline">Personal Data</span>
                                                        </a>
                                                    </h5>
                                                </div>
                                    
                                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                                                    <div class="card-body">
                                                        <div class="row">
                                                    <div class="form-group row col-12" >
                                                        <div class="col-12 mb-3">
                                                        <div class="col-6" style="float: left;">
                                                            <label >1.Company Name:-</label>
                                                            <form:input type="text" path="company_name" class="form-control" placeholder="Company Name" required="required"/>
                                                            
                                                       </div>
                                                       <div class="col-6" style="float: left;">
                                                            <label >2.Owner Name:-</label>
                                                            <form:input type="text" path="owner_name" class="form-control" placeholder="Owner Name" required="required"/>
                                                       </div>

                                                       </div>
                                                      
                                                        <div class="col-12 mb-3">
                                                        
                                                       <div class="col-6" style="float: left;">
                                                            <label >3.Moblie number:-</label>
                                                            <form:input type="text" path="mobile_no" class="form-control" required="required" placeholder="+99-99-9999-9999"/>
                                                       </div>
                                                        <div class="col-6" style="float: left;">
                                                            <label >4.Moblie number(2):-</label>
                                                            <form:input type="text" path="mobile_no_2" class="form-control" required="required" placeholder="+99-99-9999-9999"/>
                                                       </div>
                                                       </div>

                                                       <div class="col-12 mb-3">
                                                       <div class="col-6 b" >
                                                            <label >5.Email Address:-</label>
                                                            <form:input type="email" path="email" class="form-control" required="required" placeholder="abc@gmail.com"/>
                                                      </div>
                                                      <div class="col-6 b" >
                                                            <label >6.Website:-</label>
                                                            <form:input type="text" path="website_name" class="form-control" required="required" placeholder="Website name"/>
                                                       </div>
                                                       </div>
																		
														<div class="col-12 mb-3">
														<div class="col-12">
                                                       			<label >7.Company Logo:-</label>
                                                       			<br>
                                                           		<input type="file" accept="image/*" class="dropify" required="required" data-max-file-size="1M" name="logo"  />
                                                       </div>
                                                       </div>
                                                       			
                                                       <div class="col-12 mb-3">
                                                        
                                                       <div class="col-6" style="float: left;">
                                                            <label >8.Country:-
                                                                <br>
                                                             </label>
                                                            <form:select path="co.country_id" class="form-control " >
                                                            <form:option value="0">Select Country</form:option>
                                                            <c:forEach items="${countrydata }" var="s">
                                                            	<form:option value="${s.country_id }">${s.country_name }</form:option>
                                                            </c:forEach>
                                                            </form:select>
                                                       </div>
                                                       <div class="col-6" style="float: left;">
                                                            <label >9.State:-
                                                                <br>
                                                             </label>
                                                            <form:select path="st.state_id" class="form-control " >
                                                            <form:option value="0">Select State</form:option>
                                                            <c:forEach items="${statedata }" var="s">
                                                            	
                                                            	<form:option value="${s.state_id }">${s.state_name }</form:option>
                                                            </c:forEach>
                                                            </form:select>
                                                       </div>
                                                       </div>
                                                       
                                                       <div class="col-12 mb-3">
                                                       
                                                       <div class="col-6" style="float: left;">
                                                            <label for="simpleinput">10.City:-
                                                                <br>
                                                             </label>
                                                            <form:select path="ct.city_id" class="form-control " >
                                                            <form:option value="0">Select City</form:option>
                                                            <c:forEach items="${citydata }" var="s">
                                                            	
                                                            	<form:option value="${s.city_id }">${s.city_name }</form:option>
                                                            </c:forEach>
                                                            
                                                            </form:select>
                                                       </div>
                                                       <div class="col-6" style="float: left;">
                                                            <label for="simpleinput">11.Area:-
                                                            <a href="#custom-modal"  data-animation="fadein" data-plugin="custommodal" data-overlayColor="#38414a"> +Add Area </a></label>
                                                               
                                                             <form:select path="ar.area_id" class="form-control " >
                                                             <form:option value="0">Select Area</form:option>
                                                            <c:forEach items="${areadata }" var="s">
                                                            	
                                                            	<form:option value="${s.area_id }">${s.area_name }</form:option>
                                                            </c:forEach>
                                                            
                                                            </form:select> 
                                                       </div>
                                                       
                                                       </div>
                                                       
                                                        <div class="col-12 mb-3">
                                                       <div class="col-12" style="float: left;">
                                                            <label for="example-textarea">12.Address</label>
                                                            <form:textarea required="required" path="address" class="form-control" id="example-textarea" rows="5"></form:textarea>
                                                       </div>
                                                       </div>
                                                      <br><br><br><br><br><br><br><br>

                                                       <div class="col-12 mb-3">
                                                        <div class="col-6" style="float: left;">
                                                            <label >13.GST number:-</label>
                                                            <form:input path="gst_number" required="required" type="text" class="form-control" placeholder="15 digit GST Number"/>
                                                       </div>
                                                       <div class="col-6" style="float: left;">
                                                            <label >14.PAN card Number:-</label>
                                                            <form:input path="pan_card_number" required="required" type="text" class="form-control" placeholder="10 digit PAN CARD Number"/>
                                                       </div>

                                                       </div>
                                                       <br>
                                                       <br>
                                                    </div> <!-- end col -->
                                                </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="card mb-0">
                                                <div class="card-header" id="headingTwo">
                                                    <h5 class="m-0">
                                                        <a href="#collapseTwo" class="collapsed text-dark" data-toggle="collapse" aria-expanded="false" aria-controls="collapseTwo">
                                                            <i class="fas fa-money-check-alt"></i>
                                                    <span class="d-none d-sm-inline">Bank Detials</span>
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                                                    <div class="card-body">
                                                       <div class="row">
                                                    <div class="col-12">
                                                        <div class="form-group row mb-3">
                                                            <label class="col-md-3 col-form-label" for="name1"> 1.Bank name</label>
                                                            <div class="col-md-9">
                                                                <form:input required="required" type="text" path="bank_name" class="form-control" placeholder="Enter Bank name"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row mb-3">
                                                            <label class="col-md-3 col-form-label" for="surname1"> 2.Account Number</label>
                                                            <div class="col-md-9">
                                                                <form:input required="required" type="text" path="account_number" class="form-control" placeholder="Enter Account number"/>
                                                            </div>
                                                        </div>
                                
                                                        <div class="form-group row mb-3">
                                                            <label class="col-md-3 col-form-label" for="email1">3.Branch Name</label>
                                                            <div class="col-md-9">
                                                                <form:input required="required"  path="branch_name" class="form-control" placeholder="Enter Branch name"/>
                                                            </div>
                                                        </div>

                                                        <div class="form-group row mb-3">
                                                            <label class="col-md-3 col-form-label" for="email1">4.IFSC code</label>
                                                            <div class="col-md-9">
                                                                <form:input required="required" path="IFSC_code" class="form-control" placeholder="11 DIGIT IFSC code"/>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                            	<form:button type="submit"  class="btn btn-primary waves-effect waves-light">Save </form:button>
                                        </div>
                                                    </div> <!-- end col -->
                                                    
                                                </div> <!-- end row -->
                                                    </div>
                                                </div>
                                            </div>
                                          
                                        </div>
                                    </div><!-- /.modal-content -->
                                
                                </div><!-- /.modal-dialog -->
                      </form:form>       
                            </div><!-- /.modal -->
  

