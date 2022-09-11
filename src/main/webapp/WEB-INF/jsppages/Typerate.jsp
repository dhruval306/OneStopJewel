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
                                    <li class="breadcrumb-item active"> Type Rate</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    </div>
                    
                    <div class="col-12 mb-3">
                    	<div style="float: left;"><h2><label class="header-title mb-1">Type Rate Information</label></h2></div>
                     	<div style="text-align: right;"><button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" type="button" class="btn btn-light btn-sm waves-effect col-1" data-animation="superscaled" data-plugin="custommodal" data-overlayColor="#38414a">Add New</button></div>
                    </div>
                    <div class="row">
                    <c:forEach items="${typeratedata }" var="s" varStatus="count">
                    <div class="col-md-6 col-xl-3">
                        <div class="widget-rounded-circle card-box click">
                            <div class="row">
                                <div class="col-6">
                                    <div class="avatar-lg rounded-circle bg-soft-secondary border-secondary border">
                                        <i class="fas fa-rupee-sign font-22 avatar-title text-secondary"></i>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="text-right">
                                        <h3 class="text-dark mt-1">Rs.<span data-plugin="counterup">${s.type_rate }</span></h3>
                                        <p class="text-muted mb-1 text-truncate">${s.type.type_name } Rate</p>
                                    </div>
                                </div>
                            </div> <!-- end row-->
                        </div> <!-- end widget-rounded-circle-->
                    </div>
                    </c:forEach>
                    </div>
                    
                                
                            </div> <!-- end card body-->

                             
                        </div> <!-- end card -->
                        
                   
            <div id="custom-modal" class="modal-demo">
            <div >
            <button type="button" class="close" onclick="Custombox.modal.close();">
                <span>&times;</span><span class="sr-only">Close</span>
            </button>
            <h4 class="custom-modal-title">Add Type Rate</h4>
            </div>
            <div class="custom-modal-text">
                                                        
						<form:form modelAttribute="typerate">
                                                       
                                                        <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">Type Name</label>
                                                            <form:select path="type.type_id" class="form-control" >
                                                            <form:option value="0">Select Type</form:option>
                                                            <c:forEach items="${typedata}" var="s">
                                                            	<form:option value="${s.type_id}">${s.type_name }</form:option>
                                                            </c:forEach>
                                                            </form:select>
                                                       </div>
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">Type Rate</label>
                                                             <form:input path="type_rate" id="rate" class="form-control" placeholder="" required="required" />
                                                       </div>
                                                      
                                                       <div class="modal-footer">
                                                  			<form:button type="submit" class="btn btn-success waves-effect waves-light">Save</form:button>
                                							<form:button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</form:button>
                                                        </div>
                                                        </form:form>
            </div>
        </div>  
