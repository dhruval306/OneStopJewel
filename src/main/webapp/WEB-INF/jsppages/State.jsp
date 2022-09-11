<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

         <div class="wrapper">
            <div class="container-fluid">
    <div class="row">

        <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Location</a></li>
                                    <li class="breadcrumb-item active"> State</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">

                                <h4 class="header-title">State Details</h4>
                                <br>
                                

                                <table id="alternative-page-datatable" class="table dt-responsive nowrap">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>No</th>
                                            <th>Country Name</th>
                                            <th>State Name</th>
                                            <th style="text-align: center">Action</th>
                                        </tr>
                                    </thead>
                                <tbody>
                                <c:forEach items="${statedata }" var="s" varStatus="count">
                                    
                                        <tr>
                                            <td>${count.count }</td>
                                            <td> ${s.country.country_name } </td>
                                             <td>${s.state_name }</td>
                                            
                                            <td style="text-align: center"> <a href="javascript:void(0);" class="action-icon"><button class="btn btn-xs btn-danger"><i class="fas fa-trash-alt"></i> </button></a>
                                                    <a href="javascript:void(0);" class="action-icon"><button class="btn btn-xs btn-primary"> <i class="fas fa-user-edit"></i></button></a></td>
                                        </tr>
                                        
                                    
                                    </c:forEach>
                                    </tbody>
                                </table>
                                
                            </div> <!-- end card body-->

                             
                        </div> <!-- end card -->
                        
                    </div><!-- end col-->
                    <div style="text-align: center; padding-bottom: 20px " class=" col-12">
                     <button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" type="button" class="btn btn-light btn-sm waves-effect col-4" data-animation="slit" data-plugin="custommodal" data-overlayColor="#38414a">Add New</button>
                    
                        </div> 
                </div>
                <!-- end row-->
            </div></div>
 <!-- Custom Modal -->
        <div id="custom-modal" class="modal-demo">
            <div >
            <button type="button" class="close" onclick="Custombox.modal.close();">
                <span>&times;</span><span class="sr-only">Close</span>
            </button>
            <h4 class="custom-modal-title">Add New State</h4>
            </div>
            <div class="custom-modal-text">
                                                        
						<form:form modelAttribute="state">
                                                    <form:hidden path="state_id" id="state_id" />   
                                                        <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">Country Name</label>
                                                            <form:select path="country.country_id" id="country_id" class="form-control " >
                                                            <option>Select Country</option>
                                                            <c:forEach items="${countrydata }" var="s">
                                                            	<form:option value="${s.country_id}">${s.country_name}</form:option>
                                                            </c:forEach>
                                                            
                                                            </form:select>
                                                       </div>
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">State Name</label>
                                                             <form:input path="state_name" type="text" class="form-control" placeholder="" />
                                                       </div>
                                                      
                                                       <div class="modal-footer">
                                                  			<form:button type="submit" class="btn btn-success waves-effect waves-light">Save</form:button>
                                							<form:button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</form:button>
                                                        </div>
                                                        </form:form>
            </div>
        </div>  


