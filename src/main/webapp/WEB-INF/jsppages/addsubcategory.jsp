<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <style type="text/css" > 
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
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Master</a></li>
                                    <li class="breadcrumb-item active"> Sub-Category</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
     </div>         
     		<div class="col-12 mb-3">
                    	<div style="float: left;"><h2><label class="header-title mb-1">Sub-Category Information</label></h2></div>
                     	<div style="text-align: right;"><button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" type="button" class="btn btn-light btn-sm waves-effect col-1" data-animation="slit" data-plugin="custommodal" data-overlayColor="#38414a">Add New</button></div>
                    </div>  
                    
                       <div class="row">
                <c:forEach items="${subcategorydata }" var="s" varStatus="count">
                    <div class="col-md-6 col-xl-3">
                        <div class="card-box product-box">

                            <div class="product-action">
                               
                                <a href="" class="btn btn btn-light waves-effect" title="Delete" data-plugin="tippy" data-tippy-placement="bottom"><i class="fas fa-trash-alt"></i></a>
                            </div>

                            <div class="product-img-bg">
                               <img width="278px" height="278px" class="" alt="image" src="upload/${s.image }">
                            </div>

                            <div class="product-info">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h5 class="font-16 mt-0 mb-2 text-uppercase sp-line-1"><a href="#" class="text-dark">${s.sub_category_name }</a> </h5>
                                        <h5 class=""> <span class="text-uppercase text-muted">category:- ${categorydata.category_name }</span></h5>
                                        <h5 class=""> <span class="text-uppercase text-muted">type:- ${categorydata.type.type_name }</span></h5>
                                    </div>
                                    <div class="col-auto">
                                        <div class="product-price-tag">
                                             No ${count.count }
                                        </div>
                                    </div>
                                </div> <!-- end row -->
                            </div> <!-- end product info-->
                        </div> <!-- end card-box-->
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
            <h4 class="custom-modal-title">Add Sub-Category</h4>
            <div class="custom-modal-text">
            <form:form modelAttribute="subcategory" enctype="multipart/form-data" >
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label >Category Name:-</label>
                                                            <input name="category_id" value="${categorydata.category_id }" type="hidden"  class="form-control" > 
                                                             <input name="category" value="${categorydata.category_name }" type="text"  class="form-control" readonly> 
                                                       </div>
                                                       
                                                       <div class="col-12" style="padding: 15px 0">
                                                            <label >Sub-category</label>
                                                            <form:input path="sub_category_name" class="form-control" required="required" placeholder="Sub-category name" />
                                                       </div>
                                                       
                                                       <div class="col-12" style="padding: 15px 0">
                                                       <label >Sub-Category Image:-</label>
                                                            <input type="file" accept="image/*" class="dropify" required="required" data-max-file-size="1M" name="subcategoryimage"  />
                                                       </div>
                                                      
                                                       <div class="modal-footer">
                                                    		<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                    		<form:button  class="btn btn-primary waves-effect waves-light">Save </form:button>
                                                       </div>
            </form:form>                                            
            </div>
        </div>  


    