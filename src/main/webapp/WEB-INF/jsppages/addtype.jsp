<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

         <div class="wrapper" >
            <div class="container-fluid">
    <div class="row">

        <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Master</a></li>
                                    <li class="breadcrumb-item active"> Type</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
     </div>  
     	
     	<div class="col-12 mb-3">
                    	<div style="float: left;"><h2><label class="header-title mb-1">Type Information</label></h2></div>
                     	<div style="text-align: right;"><button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" type="button" class="click btn btn-light btn-sm waves-effect col-1" data-animation="superscaled" data-plugin="custommodal" data-overlayColor="#38414a">Add New</button></div>
                    </div>
                    
     
     		<div class="row">
           		
                    <c:forEach items="${typedata }" var="t" varStatus="count">
                   
                    <div class="col-xl-3">
                    
                    <div class="widget-rounded-circle card-box click">
                        <h6 class="header-title "> No ${count.count }</h6>
                            <div class="row align-items-center">
                                <div id="aa" class="col">
                                    <h4 class=" text-center text-uppercase mt-2">${t.type_name }</h4>
                                </div>
                            </div> <!-- end row-->
                    </div> <!-- end widget-rounded-circle-->
                        <div style="text-align: center; padding-bottom: 20px "  class="col-12">
                        <a href="typedelete.com?a=${t.type_id }" class="action-icon"><button class="btn btn-xs btn-danger click" title="Delete" data-plugin="tippy" data-tippy-placement="bottom"><i class="fas fa-trash-alt"></i> </button></a>
                                                    <a href="subtype.com?a=${t.type_id }" class="action-icon click"><button class="btn btn-xs btn-success" title="Sub-Type" data-plugin="tippy" data-tippy-placement="bottom"><i class="fas fa-eye"></i></button> </a>
                                                    
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
            <h4 class="custom-modal-title">Add Type</h4>
            <div class="custom-modal-text">
                                     <form:form modelAttribute="type">  
                                     			<form:input path="type_id" type="hidden"/>            
                                                        <div class="col-12" style="padding: 15px 0">
                                                            <label for="simpleinput">Type Name:-</label>
                                                            <form:input path="type_name" type="text" class="form-control" id="type" placeholder="Type name...." required="required"/>
                                                       </div>
                                                       
                                                       <div class="modal-footer">
                                                    		<form:button type="submit" name="noti"  class="btn btn-success waves-effect waves-light">Save</form:button>
                                							<button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</button>
                                                        </div>
                                      </form:form>                     
            </div>
        </div>  
        


