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
                                    <li class="breadcrumb-item active"> Country</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">

                                <h6 class="header-title">Country Details</h6>
                                <br>
                                

                                <table id="alternative-page-datatable" class="table dt-responsive nowrap">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>No</th>
                                            <th>Country Name</th>
                                            <th>Country Code</th>
                                            <th style="text-align: center">Action</th>
                                        </tr>
                                    </thead>
                                <tbody>
                                <c:forEach items="${countrydata }" var="c" varStatus="count">
                                    
                                        <tr>
                                            <td>${count.count}</td>
                                            <td> ${c.country_name}</td>
                                             <td> ${c.country_code }</td>
                                            
                                            <td style="text-align: center"> <a href="countrydelete.com?a=${c.country_id }" class="action-icon"><button class="btn btn-xs btn-danger"><i class="fas fa-trash-alt"></i> </button></a>
                                                    <a href="javascript:void(0);" class="action-icon"><button class="btn btn-xs btn-primary"> <i class="fas fa-user-edit"></i></button></a></td>
                                        </tr>
                                        
                                    
                                </c:forEach>
                                 </tbody>
                                </table>
                                
                                
                            </div> <!-- end card body-->

                             
                        </div> <!-- end card -->
                        <div style="text-align: center; padding-bottom: 20px " class=" col-12">
                     <button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" type="button" class="btn btn-light btn-sm waves-effect col-4" data-animation="slit" data-plugin="custommodal" data-overlayColor="#38414a">Add New</button>
                    
                        </div> 
                    </div><!-- end col-->
                    
                </div>
                <!-- end row-->
            </div></div>
 <!-- Custom Modal -->
        <div id="custom-modal" class="modal-demo">
            <div >
            <button type="button" class="close" onclick="Custombox.modal.close();">
                <span>&times;</span><span class="sr-only">Close</span>
            </button>
            <h4 class="custom-modal-title">Add New Country</h4>
            </div>
            <div class="custom-modal-text">
                              <form:form modelAttribute="country">            
											<form:input path="Country_id" type="hidden"/>
                                                       
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">Country Name</label>
                                                            <form:input path="Country_name" id="cid" type="text" class="form-control" placeholder="Enter Country name"/>
                                                       </div>
                                                       
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">Country Code</label>
                                                            <form:input path="Country_code" type="text" class="form-control" placeholder=""/>
                                                       </div>
                                                      
                                                       <div class="modal-footer">
                                                   			<form:button type="submit" class="btn btn-success waves-effect waves-light">Save</form:button>
                                							<form:button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</form:button>
                                                       </div>
                              </form:form> 
            </div>
        </div>  


