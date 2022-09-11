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
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Master</a></li>
                                    <li class="breadcrumb-item active"> Sub-Type</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    
                    </div>
                    
                    <div class="col-12 mb-3">
                    	<div style="float: left;"><h2><label class="header-title mb-1">Sub-Type Information</label></h2></div>
                     	<div style="text-align: right;"><button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" type="button" class="click btn btn-light btn-sm waves-effect col-1" data-animation="slit" data-plugin="custommodal" data-overlayColor="#38414a">Add New</button></div>
                    </div>
                    
                    <div class="row">
           		
                   <c:forEach items="${subtypedata }" var="d" varStatus="count">
                   
                    <div class="col-md-6 col-xl-3">
                    
                        <div class="widget-rounded-circle click card-box ">
                       		<div class="col">
                                	
                                    <h4 class=" text-center text-uppercase mt-2">${d.subtypename }</h4>
                               </div>
                                <div class=" product-box">
                                <div class="product-price-tag  text-center">
                                            Rs. ${d.subtyperate}
                                        </div>
                                        </div>
                            
                        </div> <!-- end widget-rounded-circle-->
                        <div style="text-align: center; padding-bottom: 20px "  class="col-12">
                        <a href="javascript:void(0);" class="action-icon"><button class="btn btn-xs btn-danger click" title="Delete" data-plugin="tippy" data-tippy-placement="bottom"><i class="fas fa-trash-alt"></i> </button></a>
                                                    <a href="javascript:void(0);" class="action-icon"><button class="btn btn-xs btn-primary click" title="Update" data-plugin="tippy" data-tippy-placement="bottom"> <i class="fas fa-user-edit"></i></button></a>
                                                    
                    	</div>
                    </div> <!-- end col--> 
                     
                    </c:forEach>
                    
                    </div> 
                    
                </div>
                <!-- end row-->
            </div>
 <!-- Custom Modal -->
        <div id="custom-modal" class="modal-demo">
            <button type="button" class="close" onclick="Custombox.modal.close();">
                <span>&times;</span><span class="sr-only">Close</span>
            </button>
            <h4 class="custom-modal-title">Add Sub-Type</h4>
            <div class="custom-modal-text">
            <form:form modelAttribute="stype">
            								<div class="col-12 mb-3">
            									<label>Type Name</label>
            									<select name="tid" class="form-control">
            										<c:forEach items="${type }" var="s">
            											<option value="${s.type_id }">${s.type_name }</option>
            										</c:forEach>
            									</select>
            								</div>
            								<div class="col-12 mb-3">
            								<label>SubType Name</label>
            									<form:input path="subtypename"  class="form-control" placeholder="Enter Subtype Name" />
            								</div>
            								<div class="col-12 mb-3">
            								<label>SubType Rate</label>
            									<form:input path="subtyperate"  class="form-control" placeholder="Enter Subtype Name" />
            								</div>
                                                      
                                                       <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                    <form:button type="submit" class="btn btn-primary waves-effect waves-light">Save </form:button>
                                                        </div>
                               </form:form>
            </div>
        </div>  