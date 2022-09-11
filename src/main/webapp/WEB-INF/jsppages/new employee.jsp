<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <style type="text/css" > 
            .a{
                float: left;
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
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">

                                <h4 class="header-title mb-3">Employee Form</h4>

                                <form:form modelAttribute="employee" enctype="multipart/form-data">
                                    <form:hidden path="emp_id"/>
                                    <div id="progressbarwizard">

                                        <ul class="nav nav-pills bg-light nav-justified form-wizard-header mb-3">
                                            <li class="nav-item">
                                                <a href="#account-2" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                    <i class="fas fa-user-tie"></i>
                                                <span class="d-none d-sm-inline">Basic Details</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="#profile-tab-2" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                    <i class="fas fa-coins"></i>
                                                <span class="d-none d-sm-inline">Bank and Document Details</span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="#finish-2" data-toggle="tab" class="nav-link rounded-0 pt-2 pb-2">
                                                    <i class="fas fa-coins"></i>
                                                <span class="d-none d-sm-inline">Salary Details</span>
                                                </a>
                                            </li>
                                        </ul>
                                    
                                        <div class="tab-content b-0 mb-0">
                                    
                                            <div id="bar" class="progress mb-3" style="height: 7px;">
                                                <div class="bar progress-bar progress-bar-striped progress-bar-animated bg-success"></div>
                                            </div>
                                    
                                            <div class="tab-pane" id="account-2">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <h3><label class="header-title mb-1">1.Personal Info.</label></h3>
                                                        
                                                        <div class="form-group row mb-3">
                                                        <div class="col-4 mb-3 a">
                                                            <label>Full Name:</label>
                                                            <form:input path="emp_fullname" id="name" class="form-control" required="required" placeholder="Enter name"/>
                                                        </div>
                                                         <div class="col-4 mb-3 a" >
                                                         	<label>Father Name:</label>
                                                            <form:input path="emp_fathername" type="text" id="fname" class="form-control" required="required" placeholder="Enter Father name"/>
                                                            
                                                        </div>
                                                        <div class="col-4 mb-3 a" >
                                                        	<label>Mother Name:</label>
                                                            <form:input path="emp_mothername" type="text" id="mname" class="form-control" required="required" placeholder="Enter Mother name"/>
                                                            
                                                        </div>
                                                        </div>

                                                        <div class="form-group row mb-3">
                                                        <div class="col-4 mb-3 a">
                                                            <label>Password:</label>
                                                            <form:input path="emp_password" type="password" id="pass" class="form-control" required="required" placeholder="Enter password" />
                                                        </div>
                                                       <div class="col-4 mb-3 a" >
                                                             <label>Select Role:</label>
                                                             <form:select path="emp_role" class="form-control">
                                                            <form:option value="0" selected="selected" disabled="disabled">Select Role</form:option>
                                                            <c:forEach items="${roledata}" var="s">
                                                            	<form:option value="${s.role}">${s.role}</form:option>
                                                            </c:forEach>
                                                            </form:select>

                                                            
                                                        </div> 
                                                      <div class="col-4 mb-3 a ">
                                                            <label>Company:</label>
                                                            <form:select path="c.company_id" class="form-control">
                                                            <form:option value="0" selected="selected" disabled="disabled">Select Company</form:option>
                                                            <c:forEach items="${companydata}" var="s">
                                                            	<form:option value="${s.company_id}">${s.company_name}</form:option>
                                                            </c:forEach>
                                                            </form:select> 
                                                        </div>
                                                        
                                                        </div>

                                                        <div class="form-group row mb-3">
                                                        <div class="col-4 mb-3 a">
                                                            <label>Email:</label>
                                                            <form:input path="emp_email" type="email" id="email" class="form-control" required="required" placeholder="Enter Email Id" />
                                                        </div>
                                                        <div class="col-4 mb-3 a" >
                                                            <label>Mobile No:</label>
                                                            <form:input path="emp_phoneno1" type="number" class="form-control" required="required" placeholder="Enter Phone"/>
                                                        </div>
                                                        <div class="col-4 mb-3 a" >
                                                            <label>Mobile No(2):</label>
                                                            <form:input path="emp_phoneno2" type="number" class="form-control" required="required" placeholder="Enter Mobile"/>
                                                        </div>
                                                        </div>

                                                     
                                                        <div class="form-group row mb-3">
                                                        <div class="col-3 mb-3 a">
                                                            <label>Birth Date:</label>
                                                            <form:input path="emp_dob" type="text" id="basic-datepicker" class="form-control" placeholder="Enter DOB"/>
                                                        </div>
                                                        <div class="col-3 mb-3 a" >
                                                            <label>Blood Group:</label>
                                                            <form:select path="emp_bloodgroup" class="form-control " >
                                                            <option value="0" selected="selected" disabled="disabled">Select</option>
                                                            <form:option value="A+">A+</form:option>>
                                                            <form:option value="A-">A-</form:option>
                                                            <form:option value="AB+">AB+</form:option>
                                                            <form:option value="AB-">AB-</form:option>
                                                            <form:option value="O+">O+</form:option>
                                                            <form:option value="O-">O-</form:option>
                                                            </form:select>
                                                        </div>
                                                        <div class="col-3 mb-3 a" >
                                                        <label>Gender:</label><br><br>
                                                            <div class="radio  form-check-inline">
                                                             <form:radiobutton path="emp_gender" value="male"></form:radiobutton>
                                                            <label>male</label>
                                                             </div>
                                                             <div class="radio form-check-inline">
                                                             <form:radiobutton path="emp_gender" value="female"></form:radiobutton>
                                                             <label>female</label>
                                                             </div>
                                                            <div class="radio form-check-inline">
                                                             <form:radiobutton path="emp_gender" value="other"></form:radiobutton>
                                                             <label>other</label>
                                                             </div>
                                                        </div>
                                                        <div class="col-3 mb-3 a" >
                                                        <label>Married Status:</label><br><br>
                                                            <div class="radio  form-check-inline">
                                                            <form:radiobutton  path="emp_marriedstatus" value="married"></form:radiobutton>
                                                             <label>married </label> 
                                                            </div>
                                                            <div class="radio  form-check-inline">
                                                            <form:radiobutton  path="emp_marriedstatus" value="single"></form:radiobutton>
                                                            <label>single</label>
                                                             </div>
                                                        </div>
                                                    </div>

                                                    <h3><label class="header-title">2.Address Detail</label></h3>
                                                    <div class="form-group row mb-3">
                                                            <div class="col-md-8">
                                                            <label> Permanent Address:-</label>
                                                            
                                                               <form:textarea class="form-control" path="emp_address" rows="4"></form:textarea>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row mb-3">
                                                           <div class="col-4 a mb-3">
                                                            <label class="">Select Country</label>
                                                            <form:select path="co.country_id" class="form-control">
                                                            <form:option value="0" selected="selected" disabled="disabled">Select Country</form:option>
                                                            <c:forEach items="${countrydata }" var="s">
                                                            	<form:option value="${s.country_id}">${s.country_name}</form:option>
                                                            </c:forEach>
                                                            </form:select>
                                                            </div>
                                                         <div class="col-4 a mb-3">
                                                            <label> Select State</label>
                                                            <form:select path="st.state_id" class="form-control">
                                                            <form:option value="0" selected="selected" disabled="disabled">Select State</form:option>
                                                            <c:forEach items="${statedata}" var="s">
                                                            	
                                                            	<form:option value="${s.state_id}">${s.state_name}</form:option>
                                                            </c:forEach>
                                                            </form:select>
                                                            </div>
                                                            <div class="col-4 a mb-3">
                                                            <label> Select City</label>
                                                            <form:select path="ct.city_id" class="form-control " >
                                                            <form:option value="0" selected="selected" disabled="disabled">Select City</form:option>
                                                            <c:forEach items="${citydata}" var="s">
                                                            	
                                                            	<form:option value="${s.city_id}">${s.city_name}</form:option>
                                                            </c:forEach>
                                                            
                                                            </form:select>
                                                            </div> 
                                                            <div class="col-4 a mb-3">
                                                            <label class="col-md-3 col-form-label" for="surname3"> Zip-code</label>
                                                            <form:input path="emp_zipcode" type="number" class="form-control" required="required"/>
                                                            </div>
                                                        </div>
                                                    </div> <!-- end col -->
                                                </div> <!-- end row -->
                                            </div>

                                            <div class="tab-pane" id="profile-tab-2">
                                                <div class="row">
                                                    <div class="col-12">
                                                      <h3><label class="header-title mb-1">3.Bank Info.</label></h3>
                                                        <div class="form-group row mb-3">
                                                        <div class="col-3 mb-3 a">
                                                            <label>Bank Name:</label>
                                                            <form:input path="emp_bankname" type="text" class="form-control" placeholder="Enter Bank name" required="required"/>
                                                        </div>
                                                        <div class="col-3 mb-3 a" >
                                                            <label>Account Number:</label>
                                                            <form:input path="emp_accountno" type="text" class="form-control" placeholder="accountno" required="required"/>
                                                        </div>
                                                        
                                                        <div class="col-3 mb-3 a">
                                                            <label>Branch Name:</label>
                                                            <form:input path="emp_branchname" type="text" class="form-control" placeholder="Enter Branch Name" required="required"/>
                                                        </div>
                                                        
                                                        <div class="col-3 mb-3 a" >
                                                            <label>IFSC Code:</label>
                                                            <form:input path="emp_ifsccode" type="number" class="form-control" placeholder="ifsc" required="required"/>
                                                        </div>
                                                        </div>

                                                        
                                                        <h3><label class="header-title mb-1">4.Document Detail</label></h3>
                                                        <div class="form-group row mb-3">

                                                        <div class="col-4 mb-3 a">
                                                            <div class="mt-3">
                                                               <input type="file" accept="image/*" class="dropify" name="emp_aadhaarcard" data-max-file-size="1M" required="required"/>
                                                                 <p class="text-muted text-center mt-2 mb-0">Adhar-card</p>
                                                             </div>
                                                        </div>
                                                        <div class="col-4 mb-3 a">
                                                            <div class="mt-3">
                                                               <input type="file" accept="image/*" class="dropify" name="emp_pancard" data-max-file-size="1M" required="required"/>
                                                                 <p class="text-muted text-center mt-2 mb-0">Pan-card</p>
                                                             </div>
                                                        </div>
                                                        <div class="col-4 mb-3 a">
                                                            <div class="mt-3">
                                                               <input type="file" accept="image/*" class="dropify" name="emp_photo" data-max-file-size="1M" required="required"/>
                                                                 <p class="text-muted text-center mt-2 mb-0">Photo</p>
                                                             </div>
                                                        </div>
                                                        </div>
                                                    </div> <!-- end col -->
                                                </div> <!-- end row -->
                                            </div>

                                            <div class="tab-pane" id="finish-2">
                                                <div class="row">

                                                    <div class="col-12">
                                                        <h3><label class="header-title mb-1">5.Salary info</label></h3>
                                       
                                                        <div onchange ="salary()" class="form-group row mb-3">
                                                        <div class="col-3 mb-3 a">
                                                            <label>Basic Salary:</label>
                                                            <form:input path="emp_basicsalary"  id="basic" placeholder="Enter Amount" class="form-control"/>
                                                        </div>
                                                        <div class="col-3 mb-2 a " id="Tax">
                                                            <label>Tax:</label>
                                                             <form:input path="emp_tax"  placeholder="How Many?" id="tax" class="form-control"/>
                                                        </div>
                                                        
                                                        <div class="col-3 mb-2 a "  >
                                                            <label>Final Salary:</label>
                                                            <form:input path="emp_finalsalary" value="" placeholder="salary" id="final" name="salary" class="form-control"  />
                                                        </div>
                                                        </div>

                                                        <div class="form-group row mb-3">
                                                            <div class="col-6 mb-2 a "  >
                                                                <label>Working Days:</label>
                                       						<form:select path="emp_workingdays" class="form-control">
                                       						<form:option value="0" disabled="disabled" selected="selected">select</form:option>
                                       						<form:option value="all days">All Days</form:option>
                                                            <form:option value="sunday to friday">Sunday to Friday</form:option>
                                                            <form:option value="sunday to saturday">Sunday to Saturday</form:option>
                                                            
                                                            </form:select>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row mb-3">
                                                        <div class="col-4 mb-3 a">
                                                            <label>No. Of Leave:</label>
                                                            <form:input path="emp_leave" type="number" class="form-control" required="required"/>
                                                        </div>
                                                    
                                                        <div class="col-4 mb-2 a "  id="Tax">
                                                            <label>Cut Rs. Per Leave:</label>
                                                            <form:input path="emp_cutoffullleave" type="number" class="form-control" required="required"/>
                                                        </div>
                                                        <div class="col-4 mb-2 a "  id="Tax">
                                                            <label>Cut Rs. Per Half-Leave:</label>
                                                            <form:input path="emp_cutofhalfleave" type="number" class="form-control" required="required"/>
                                                        </div>
                                                        </div>

                                                        <div class="form-group row mb-3">
                                                        <div class="col-4 mb-3 a">
                                                             <div class="input-group clockpicker">
                                                             
                                                                <label>Coming Time:</label>
                                                                
                                                            <form:input path="emp_comingtime" type="text" required="required" class="form-control"/>
                                                             <div class="input-group-append">
                                                             <span class="input-group-text"><i class="fas fa-clock"></i></span>
                                                             </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-4 mb-3 a">
                                                             <div class="input-group clockpicker">
                                                                <label>Leaving Time:</label>
                                                                
                                                            <form:input path="emp_leavingtime" type="text" required="required" class="form-control"/>
                                                             <div class="input-group-append">
                                                             <span class="input-group-text"><i class="fas fa-clock"></i></span>
                                                             </div>
                                                            </div>
                                                        </div>
                                                        </div>
                                                    </div> <!-- end col -->
                                                </div> <!-- end row -->
                                                <div class=	"modal-footer">
                                                   			<form:button class="btn btn-success waves-effect waves-light">Save</form:button>
                                							<button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</button>
                                                       </div>
                                            </div>

                                            <ul  class="list-inline mb-0 wizard">
                                                <li class="previous list-inline-item">
                                                    <button href="javascript: void(0);" class="btn btn-secondary">Previous</button>
                                                </li>
                                                <li id="last" class="next list-inline-item float-right">
                                                    <button href="javascript: void(0);" class="btn btn-secondary">Next</button>
                                                </li>
                                            </ul>

                                        </div> <!-- tab-content -->
                                    </div> <!-- end #progressbarwizard-->
                                </form:form>

                            </div> <!-- end card-body -->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                </div>
                
               
                                
            </div>
            </div>
            
        
		<script type="text/javascript">
		
			

            function salary() {
                var a = $('#basic').val();
                var b = $('#tax').val();
                if(a == '' || b == '')
                {
                    a = 0;
                    b = 0;
                }
                var c = parseInt(a) - (parseInt(b)*parseInt(a)/100);
                document.getElementById("final").value = c;
            }
    
        </script>

        