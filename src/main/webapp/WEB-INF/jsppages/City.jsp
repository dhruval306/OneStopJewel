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
                                    <li class="breadcrumb-item active"> City</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">

                                <h6 class="header-title">City Details</h6>
                                <br>
                                
                                 <table id="alternative-page-datatable" class="table dt-responsive nowrap">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>No</th>
                                            <th>Country Name</th>
                                            <th>State Name</th>
                                            <th>City Name</th>
                                            <th style="text-align: center">Action</th>
                                        </tr>
                                    </thead>
                                <tbody>
                                <c:forEach items="${citydata }" var="s" varStatus="count">
                                    
                                        <tr>
                                            <td>${count.count }</td>
                                            <td>  ${s.co.country_name }</td>
                                             <td>  ${s.st.state_name }</td>
                                             <td> ${s.city_name}</td>
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
                     <button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px"  type="button" class="btn btn-light btn-sm waves-effect col-4" data-toggle="modal" data-target=".bs-example-modal-center">Add New</button>
                    
                        </div> 
                </div>
                <!-- end row-->
            </div></div>
 
         <div class="modal fade bs-example-modal-center" tabindex="-1" role="dialog" aria-labelledby="myCenterModalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="myCenterModalLabel">Add New City</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        </div>
                                        <div class="modal-body">
                                            <form:form modelAttribute="city" >                              
                         <form:hidden path="city_id" id="city_id" />
                                                        <div class="col-12" style="padding: 15px 0">
                                                            <label >Country Name</label>
                                                            <form:select path="co.country_id" id="Country_id"  onchange="check(this.value)" class="form-control " >
                                                            <option>Select Country</option>
                                                            <c:forEach items="${countrydata }" var="s">
                                                            	<form:option value="${s.country_id }">${s.country_name }</form:option>
                                                            </c:forEach>
                                                            </form:select>
                                                       </div>
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">State Name</label>
                                                            <form:select id="state" path="st.state_id" class="form-control " >
                                                            <option>Select State</option>
                                                            </form:select>
                                                       </div>
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">City Name</label>
                                                            <form:input path="city_name" type="text" class="form-control" placeholder=""/>
                                                       </div>
                                                      
                                                       <div class="modal-footer">
                                                    		<form:button type="submit" class="btn btn-success waves-effect waves-light">Save</form:button>
                                							<button type="button" class="btn btn-danger waves-effect waves-light m-l-10" class="close" data-dismiss="modal" aria-hidden="true">Cancel</button>
                                                        </div>
                                                        
                         </form:form>                  
                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div>
<script type="text/javascript" src="assets/js/ajex.js"></script>

