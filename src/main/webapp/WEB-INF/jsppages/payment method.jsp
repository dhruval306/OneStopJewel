<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

         <div class="wrapper">
            <div class="container-fluid">
    <div class="row">

        <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="">Master</a></li>
                                    <li class="breadcrumb-item active"> Payment Method</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">

                                <h6 class="header-title">Payment Method Details</h6>
                                <br>
                                <br>

                                <table id="alternative-page-datatable" class="table dt-responsive nowrap">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>No</th>
                                            <th>Payment Method Name</th>
                                            <th style="text-align: center">Action</th>
                                        </tr>
                                    </thead>
                                <tbody>
                                <c:forEach items="${methoddata }" var="p" varStatus="count">
                                    
                                        <tr>
                                            <td>${count.count}</td>
                                            <td>${p.method_name }</td>
                                            
                                            <td style="text-align: center"> <a href="paydelete.com?a=${p.method_id }" class="action-icon"><button class="btn btn-xs btn-danger"><i class="fas fa-trash-alt"></i> Delete</button></a>
                                                    <a href="javascript:void(0);" class="action-icon"><button class="btn btn-xs btn-primary"> <i class="fas fa-user-edit"></i>Update</button></a>
                                            </td>
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
            <h4 class="custom-modal-title">Add Payment Method</h4>
            </div>
            <div class="custom-modal-text">
                                                        

                                               <form:form modelAttribute="method">   
                                               			<form:input path="method_id" type ="hidden"/>    
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label >Payment Method</label>
                                                            <form:input path="method_name"  class="form-control" placeholder="Payment Method name"/>
                                                       </div>
                                                      
                                                       <div class="modal-footer">
                                                    		<form:button type="submit" class="btn btn-success waves-effect waves-light">Save</form:button>
                                							<button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</button>
                                                       </div>
                                               </form:form>         
            </div>
        </div>  


