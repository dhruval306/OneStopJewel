<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<style type="text/css" > 
            .a{
                float: left;
            }
            .b{
                text-align: center;
            }
            .c
            {
            	display: none;
            }
             
            .d{
                border: 1px solid #ddd;
  				border-radius: 1px;
 				 padding: 5px;
  					}
  			.tras {
        transition-duration: 0.6s;
        z-index: 2;
        

    }

    .total {
        text-align: center;
        font-weight: 200;
        font-size: 150%;
    }		
    
  		
  				
            </style>
         <div id="typedata" class="wrapper">
            <div class="container-fluid">
    			<div class="row">

        <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Item</a></li>
                                    <li class="breadcrumb-item active">Item Master</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    </div>
                
                            
                    
		<c:if test="${typedata ne null }">
								
								
								<div class="col-12 mb-3">
                    				<div><h2><label class="header-title mb-1">Type Information</label></h2></div>
                     			</div>
                    			
			<div  class="row">
           		
                    <c:forEach items="${typedata }" var="t" varStatus="count">
                   
                    <div class="col-xl-3 ">
                    
                        <div class="widget-rounded-circle card-box click">
                        <h4 class="header-title ">Type No ${count.count }</h4>
                            <div class="row align-items-center">
                                
                                <div class="col">
                                    <h5 class=" text-center text-uppercase mt-2">${t.type_name }</h5>
                                    
                                    
                                </div>
                            </div> <!-- end row-->
                        </div> <!-- end widget-rounded-circle-->
                        <div style="text-align: center; padding-bottom: 20px "  class="col-12">
                        
                                                    <a href="itemcategory.com?a=${t.type_id }" class="action-icon type"><button class="btn btn-xs btn-success click"><i class="fas fa-eye"></i></button> </a>
                                                    
                    	</div>
                    </div> <!-- end col--> 
                     
                    </c:forEach>
                    
                    </div>
                                
                             </c:if>
                                 
           <c:if test="${categorydata ne null }">
                                 <div class="col-12 mb-3">
                    				<div><h2><label class="header-title mb-1">Category Information</label></h2></div>
                     			</div>
				<div id="categorydata" class="row">
           		
                    <c:forEach items="${ categorydata}" var="c" varStatus="count">
                   
                    <div class="col-xl-3">
                    
                        <div class="widget-rounded-circle card-box subcat">
                        <h4 class="header-title ">Type No ${count.count }</h4>
                            <div class="row align-items-center">
                                
                                <div class="col">
                                    <h5 class=" text-center text-uppercase mt-2">${c.category_name }</h5>
                                    
                                    
                                </div>
                            </div> <!-- end row-->
                        </div> <!-- end widget-rounded-circle-->
                        <div style="text-align: center; padding-bottom: 20px "  class="col-12">
                        
                                                    <a href="itemsubcategory.com?a=${c.category_id }" class="action-icon"><button class="btn btn-xs btn-success"><i class="fas fa-eye"></i></button> </a>
                                                    
                    	</div>
                    </div> <!-- end col--> 
                     
                    </c:forEach>
                    
                    </div>
                                
                                </c:if>
             <c:if test="${itemmasterdata ne null }"> 
             <div class="row">
                    <div class="col-12">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-lg-8">
                                    <form class="form-inline">
                                        
                                        <div class="form-group">
                                            <label for="status-select" class="mr-2">Sort By Category</label>
                                            <select onchange="data()" class="custom-select" id="status-select">
                                            	<option>select</option>
                                                
                                                <c:forEach items="${itemmasterdata}" var="s">
                                                            	<option value="${s.subcat.sub_category_id }">${s.subcat.sub_category_name }</option>
                                                            </c:forEach>
                                                
                                            </select>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-lg-4">
                                    <div class="text-lg-right mt-3 mt-lg-0">
                                       
                                        <button  style="background-color: #5A6268; color: white; padding: 5px; border-radius: 13px"  type="button" class="btn btn-light btn-sm waves-effect col-4" data-toggle="modal" data-target="#full-width-modal">Add New</button>
                                    </div>
                                </div><!-- end col-->
                            </div> <!-- end row -->
                        </div> <!-- end card-box -->
                    </div> <!-- end col-->
                </div>
             
                    <div class="row">
                    <c:forEach items="${itemmasterdata }" var="i" varStatus="count">
                    
                    <div class="col-12">
                        <div class="card-box">
                            <div class="row mb-4">
                                <div class="col-xl-5">

                                    <div class="tab-content pt-0">
                                        <div class="tab-pane active show" id="product-1-item">
                                            <img src="upload/${i.subcat.image }" alt="image" width="540" height="500" class=" mx-auto d-block rounded">
                                        </div>
                                        
                                    </div>

                                    
                                </div> <!-- end col -->
                                <div class="col-xl-7">
                                    <div class="pl-xl-3 mt-3 mt-xl-0">
                                        <h5 class="text-right"> <span class=" text-muted">Product Id :- ${i.item_id }</span></h5>
                                        <h3 class="mb-3 text-uppercase row">${i.subcat.sub_category_name}</h3>
                                        <h5 class=""> <span class="text-uppercase text-muted">Category :- ${i.cat.category_name }</span></h5>
                                        <h5 class="mb-3"> <span class="text-uppercase text-muted">Type :- ${i.type.type_name }</span></h5>
                                    
                                        <c:if test="${i.reorder ne 00 }">
                                        <h4><span  class="badge bg-soft-success text-success mb-4">Instock</span></h4></c:if>
                                        <c:if test="${i.reorder eq 00 }">
                                        <h4><span  class="badge bg-soft-danger text-danger mb-4">Outofstock</span></h4></c:if>
                                        
										
                                        <div class="mb-3">
                                            <button type="button" class="btn btn-danger mr-2"><i class="fas fa-trash-alt"></i></button>
                                            <button type="button" class="btn btn-success waves-effect waves-light">
                                                <span class="btn-label"><i class="fas fa-shopping-cart"></i></span>Add to cart
                                            </button>
                                        </div>
                                        <div class="table-responsive mt-4">
                                <table class="table table-bordered table-centered mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>#</th>
                                            <th>Normal Rate</th>
                                            <th>Suplier Rate</th>
                                            <th>Retailer Rate</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Total Rate(Rs.)</td>
                                            <td>${i.normal_total }</td>
                                            <td>
                                                ${i.stotal }
                                            </td>
                                            <td>${i.rtotal }</td>
                                        </tr>
                                        </tbody>
                                        </table>
                                        </div>
                                        
                                          	
                                    </div>
                                </div> <!-- end col -->
                            </div>
                            <!-- end row -->
                            <div id="accordion" class="mb-1">    
    			<div class="card">
                                <div class="card-header" id="heading${i.subcat.sub_category_name}">
                                    <h5 class="m-0 text-center">
                                        <a class="text-dark " data-toggle="collapse" href="#collapse${i.subcat.sub_category_name}" aria-expanded="false">
                                            
                                           MORE INFOMATION
                                        </a>
                                    </h5>
                                </div>
                                <div id="collapse${i.subcat.sub_category_name}" class="collapse" aria-labelledby="collapse${i.subcat.sub_category_name}" data-parent="#accordion">
                                    <div class="card-body">
                                        <div class="table-responsive mt-4">
                                <table class="table table-bordered table-centered mb-0">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>#</th>
                                            <th>Normal Rate</th>
                                            <th>Suplier Rate</th>
                                            <th>Retailer Rate</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Weight</td>
                                            <td>${i.normal_touch }</td>
                                            <td>
                                                ${i.supplier_touch }
                                            </td>
                                            <td>${i.retailer_touch }</td>
                                        </tr>
                                        <tr>
                                            <td>labour Per gm</td>
                                            <td>${i.normal_labour_per_gm}</td>
                                            <td>
                                                ${i.supplier_labour_per_gm}
                                            </td>
                                            <td>${i.retailer_labour_per_gm}</td>
                                        </tr>
                                        <tr>
                                            <td>labour Per Unit</td>
                                            <td>${i.normal_labour_per_unit}</td>
                                            <td>
                                                ${i.supplier_labour_per_unit}
                                            </td>
                                            <td>${i.retailer_labour_per_unit}
                                        </tr>
                                        <tr>
                                            <td>Rate Per gm</td>
                                            <td>${i.normal_per_gm}</td>
                                            <td>
                                                ${i.supplier_per_gm }
                                            </td>
                                            <td>${i.retailer_per_gm }</td>
                                        </tr>
                                        <tr>
                                            <td>Rate Per Unit</td>
                                            <td>${i.normal_rate_per_unit }</td>
                                            <td>
                                                ${i.supplier_rate_per_unit }
                                            </td>
                                            <td>${i.retailer_rate_per_unit }</td>
                                        </tr>
                                        <tr>
                                            <td>GST(%)</td>
                                            <td><div class="progress-w-percent mb-0">
                                                    <span class="progress-value">${i.normal_gst }%</span>
                                                    <div class="progress progress-sm">
                                                        <div class="progress-bar bg-success" role="progressbar" style="width: ${i.normal_gst }%;" aria-valuenow="${i.normal_gst }" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div></td>
                                            <td>
                                                <div class="progress-w-percent mb-0">
                                                    <span class="progress-value">${i.normal_gst }%</span>
                                                    <div class="progress progress-sm">
                                                        <div class="progress-bar bg-success" role="progressbar" style="width: ${i.normal_gst }%;" aria-valuenow="${i.normal_gst }" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                 </div>   
                                            </td>
                                            <td><div class="progress-w-percent mb-0">
                                                    <span class="progress-value">${i.normal_gst }%</span>
                                                    <div class="progress progress-sm">
                                                        <div class="progress-bar bg-success" role="progressbar" style="width: ${i.normal_gst }%;" aria-valuenow="${i.normal_gst }" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                    </div>
                                                    </td>
                                        </tr>
                                        <tr>
                                            <td>Commission(%)</td>
                                            <td>
                                            	<div class="progress-w-percent mb-0">
                                                    <span class="progress-value">${i.normal_com }%</span>
                                                    <div class="progress progress-sm">
                                                        <div class="progress-bar bg-success" role="progressbar" style="width: ${i.normal_com }%;" aria-valuenow="${i.normal_com }" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="progress-w-percent mb-0">
                                                    <span class="progress-value">${i.supplier_com }%</span>
                                                    <div class="progress progress-sm">
                                                        <div class="progress-bar bg-success" role="progressbar" style="width: ${i.supplier_com }%;" aria-valuenow="${i.supplier_com }" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>
												<div class="progress-w-percent mb-0">
                                                    <span class="progress-value">${i.retailer_com }%</span>
                                                    <div class="progress progress-sm">
                                                        <div class="progress-bar bg-success" role="progressbar" style="width:${i.retailer_com }%;" aria-valuenow="${i.retailer_com }" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
											</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                                    </div>
                                </div>
                            </div>
                  </div>


                        </div> <!-- end card-->
                    </div> <!-- end col-->
                    
                    
                    </c:forEach>
                </div>
         
                    
                    
                    <div id="full-width-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="full-width-modalLabel" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog modal-full">
                                   
                                   <form:form modelAttribute="item">  
                                    
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title" id="full-width-modalLabel">Item Master Form</h4>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                        </div>
                                        
                                        <div class="modal-body">
                                            <div class="row">
                                                    <div class="col-12">
                                                    
                                                        <div class="form-group row mb-3">
                                                        <div  class="col-4 a">
                                                        	<label>Select type:</label>
                                                            <form:select onchange="abc()" path="type.type_id" id="type_id" class="type_id form-control">
                                                           		
                                                            	<c:forEach items="${cat}" var="s">
                                                            		
                                                            		<form:option value="${s.type.type_id }">${s.type.type_name }</form:option>
                                                            	</c:forEach>
                                                            	
                                                            </form:select>
                                                        </div>
                                                        
                                                        <div id="abc" class="col-4 a ">
                                                        	<label>Select Category:</label>
                                                            <form:select onchange="ab()" path="cat.category_id" id="cat_id" class=" form-control">
                                                            
                                                            	<c:forEach items="${cat }" var="s">
                                                            		
                                                            		<form:option value="${s.category_id}">${s.category_name }</form:option>
                                                            	</c:forEach>
                                                            
													    	</form:select>
                                                        </div>
                                                        
                                                        <div id="ab" class="col-4 a ">
                                                        	<label>Select Sub-Category:</label>
                                                            <form:select onchange="abcd()" path="subcat.sub_category_id" id="sub-cat_id" class="form-control">
                                                            <form:option  value="0" selected="selected">select Sub-category</form:option>
                                                            	<c:forEach items="${scat }" var="s">
                                                            		<form:option value="${s.sub_category_id}">${s.sub_category_name }</form:option>
                                                            	</c:forEach>
													    	</form:select>
                                                        </div>
                                                        
                                                        </div>
                                                        
                                                        <div class="c" id="abcd">
                                                        
                                                        <h4 class="page-title">Enter Infomation</h4>
                                                        
                                                        <div class="form-group row mb-2">
                                                        	<div class="col-12">
                                                        		<div  class="col-4 a">
                                                        			<label>Sub-Category:</label>
                                                            		<input type="text" name="subcategory" id="subcategory" class="form-control" readonly >
                                                        		</div>
                                                        		<div  class="col-4 a">
                                                        			<label>Reorder:</label>
                                                            		<form:input path="reorder" type="text" class="form-control"  />
                                                        		</div>
                                                        		<div  class="col-4 a">
                                                        			<label>Overstack:</label>
                                                            		<form:input path="overstack" type="text" class="form-control"/>
                                                        		</div>
                                                        	</div>
                                                        </div>
                                                      
                                                       <div class="form-group row mb-2">
                                                       		<div class="col-12">
                                                       		<div class="col-3 a">
                                                       		<p class="header-title font-weight-bold  mb-1"></p>
                                                       		</div>
                                                       		<div class="col-3 a">
                                                       		<p class="header-title font-weight-bold  mb-1">Normal Rate:-</p>
                                                       		</div>
                                                       		<div class="col-3 a ">
                                                       		<p class="header-title font-weight-bold  mb-1">Supplier Rate:-</p>
                                                       		</div>
                                                       		<div class="col-3 a">
                                                       		<p class="header-title font-weight-bold  mb-1">Retailer Rate:-</p>
                                                       		</div>
                                                       		</div>
                                                       		
                                                        	<div class="col-12">
                                                        		<div class="col-3 a mb-2">
                                                       				<p class="header-title text-center font-weight-bold  mb-1">Weight:</p>
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="normal_touch" type="text" id="n_touch" onkeyup="mul('n_touch','n_pgram','n_price');gst('n');" onkeypress="return isNumberKey(event)" class="form-control"  />
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="supplier_touch" type="text" id="s_touch" onkeyup="mul('s_touch','s_pgram','s_price');gst('s');" onkeypress="return isNumberKey(event)" class="form-control"  />
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="retailer_touch" type="text" id="r_touch" onkeyup="mul('r_touch','r_pgram','r_price');gst('r');" onkeypress="return isNumberKey(event)" class="form-control"  />
                                                       			</div>
                                                       			
                                                       		</div>	
                                                       		
                                                       		<div class="col-12">
                                                        		<div class="col-3 a mb-2">
                                                       				<p class="header-title text-center font-weight-bold  mb-1">Labour Per g/m (Rs) :</p>
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="normal_labour_per_gm"  type="text" id="n_pgram" onkeyup="mul('n_touch','n_pgram','n_price');gst('n');" onkeypress="return isNumberKey(event)"  class="form-control"  />
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="supplier_labour_per_gm" type="text" id="s_pgram" onkeyup="mul('s_touch','s_pgram','s_price');gst('s');" onkeypress="return isNumberKey(event)" class="form-control"  />
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="retailer_labour_per_gm" type="text" id="r_pgram" onkeyup="mul('r_touch','r_pgram','r_price');gst('r');" onkeypress="return isNumberKey(event)" class="form-control"  />
                                                       			</div>
                                                       			
                                                       		</div>	
                                                       		
                                                       		<div class="col-12">
                                                        		<div class="col-3 a mb-2">
                                                       				<p class="header-title text-center font-weight-bold  mb-1">Labour Per Unit:</p>
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input id="n_price" path="normal_labour_per_unit" onkeypress="return isNumberKey(event)" readonly="true" type="text" class="form-control"  />
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="supplier_labour_per_unit" id="s_price" onkeypress="return isNumberKey(event)" readonly="true" type="text" class="form-control"  />
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="retailer_labour_per_unit" id="r_price" onkeypress="return isNumberKey(event)" readonly="true" type="text" class="form-control"  />
                                                       			</div>
                                                       			
                                                       		</div>	
                                                       		
                                                       		<div class="col-12">
                                                        		<div class="col-3 a">
                                                       				<p class="header-title text-center font-weight-bold  mb-1">Rate per g/m (Rs) :</p>
                                                       			</div>
                                                       			<div class="col-3 a mb-2"> 
                                                       				<form:input path="normal_per_gm" id="n_rate" onchange="gst('n');total('n');pri('n')" onkeypress="return isNumberKey(event)" type="text" class="form-control"  />
                                                       			</div> 
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="supplier_per_gm" id="s_rate" type="text" onchange="gst('s');total('n');pri('s')" onkeypress="return isNumberKey(event)" class="form-control"  />
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="retailer_per_gm" id="r_rate" type="text" onchange="gst('r');total('n');pri('r')" onkeypress="return isNumberKey(event)" class="form-control"  />
                                                       			</div>
                                                       			
                                                       		</div>
                                                       		
                                                       		<div class="col-12">
                                                        		<div class="col-3 a">
                                                       				<p class="header-title text-center font-weight-bold  mb-1">Rate per unit:</p>
                                                       			</div>
                                                       			<div class="col-3 a mb-2"> 
                                                       				<form:input path="normal_rate_per_unit" id="n_rateu" onkeypress="return isNumberKey(event)" readonly="true" type="text" class="form-control"  />
                                                       			</div> 
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="supplier_rate_per_unit" id="s_rateu" type="text" onkeypress="return isNumberKey(event)" readonly="true" class="form-control"  />
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<form:input path="retailer_rate_per_unit" id="r_rateu" type="text" onkeypress="return isNumberKey(event)" readonly="true" class="form-control"  />
                                                       			</div>
                                                       			
                                                       		</div>	
                                                       		
                                                       		<div class="col-12">
                                                        		<div class="col-3 a mb-2">
                                                       				<p class="header-title text-center font-weight-bold  mb-1">GST (%):<br><span class="gsttext" id="gsttext"></span></p>
                                                       			</div>
							                                        <div class="col-3 a mb-2">
							                                        <div class="input-group-prepend"><span id="n_gsttext"
							                                                class="input-group-text">GST</span></div>
							                                        <input type="hidden" value="" id="n_gst" name="nr_gste" />
							                                        <form:select path="normal_gst" name="Gst"
							                                            onchange="change('n','s','r');gst('n');total('n');" id="n_gst2"
							                                            required="required" class="form-control">
							                                            <form:option selected="selected" value="0">No Gst</form:option>
							                                            <form:option value="3">3%</form:option>
							                                            <form:option value="8">8%</form:option>
							
							
							                                        </form:select>
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				 
							                                        <div class="input-group-prepend"><span id="s_gsttext"
						                                                class="input-group-text">GST</span></div>
						                                        <input type="hidden" value="" id="s_gst" name="sr_gste" />
						                                        <form:select path="supplier_gst" name="Gst3" onchange="change('s','n','r');gst('s');"
						                                            id="s_gst2" required="required" class="form-control">
						                                            <form:option selected="selected" value="0">No Gst</form:option>
						                                            <form:option value="3">3%</form:option>
						                                            <form:option value="8">8%</form:option>
						
						
						                                        </form:select>
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<div class="input-group-prepend"><span id="r_gsttext"
						                                                class="input-group-text">${p}GST</span></div>
						                                        <input type="hidden" value="${p}" id="r_gst" name="rr_gste" />
						                                        <form:select name="Gst3" path="retailer_gst" onchange="change('r','s','n');gst('r');"
						                                            id="r_gst2" required="required" class="form-control">
						                                            <form:option selected="selected" value="0">No Gst</form:option>
						                                            <form:option value="3">3%</form:option>
						                                            <form:option value="8">8%</form:option>
						
						
						                                        </form:select>
                                                       			</div>
                                                       			
                                                       		</div>	
                                                       		
                                                       		
                                                       		
                                                       		<div class="col-12 mb-3">
                                                        		<div class="col-3 a mb-2">
                                                       				<p class="header-title text-center font-weight-bold  mb-1">Sales Man Commission (%) :</p>
                                                       			</div>
                                                       			<div  class=" col-3 a">
                                                       				<div class="input-group position-relative">
								                                        <div id="n_cover" class="col-md-12 p-0 tras position-absolute">
								                                            <div class="input-group-prepend ">
								
								                                                <form:select path="norma_com" id="n_cbtn" onchange="cum('n');"
								                                                    class="form-control input-group-text">
								                                                    <form:option selected="selected" value="0">NO</form:option>
								                                                    <form:option value="1">YES</form:option>
								
								
								
								                                                </form:select>
								                                            </div>
								                                        </div>
								                                        <div class="col-md-5 float-left p-1">
								                                        </div>
								                                        <div class="col-md-7 p-0 float-left" id="n_div">
								
								                                            <form:input path="normal_com" id="n_cum" onkeyup="total('n')"
								                                                onkeypress="return isNumberKey(event)" value="0" type="text"
								                                                class="form-control" />
								                                        </div>



                                    								</div>
                                                            	</div>
                                                       			<div class="col-3 a">
                                                       				<div class="input-group position-relative">
								                                        <div id="s_cover" class="col-md-12 p-0 tras position-absolute">
								                                            <div class="input-group-prepend ">
								
								                                                <form:select path="supplie_com" id="s_cbtn" onchange="cum('s')"
								                                                    class="form-control input-group-text">
								                                                    <form:option selected="selected" value="0">NO</form:option>
								                                                    <form:option value="1">YES</form:option>
								
								
								
								                                                </form:select>
								                                            </div>
								                                        </div>
								                                        <div class="col-md-5 float-left p-1">
								                                        </div>
								                                        <div class="col-md-7 p-0 float-left" id="s_div">
								
								                                            <form:input path="supplier_com" id="s_cum" onkeyup="total('s')"
								                                                onkeypress="return isNumberKey(event)" value="0" type="text"
								                                                class="form-control" />
								                                        </div>
								
								
								
								
								                                    </div>
                                                       			</div>
                                                       			<div class="col-3 a">
                                                       				<div class="input-group position-relative">
								                                        <div id="r_cover" class="col-md-12 p-0 tras position-absolute">
								                                            <div class="input-group-prepend ">
								
								                                                <form:select path="retaile_com" id="r_cbtn" onchange="cum('r')"
								                                                    class="form-control input-group-text">
								                                                    <form:option selected="selected" value="0">NO</form:option>
								                                                    <form:option value="1">YES</form:option>
								
								                                                </form:select>
								                                            </div>
								                                        </div>
								                                        <div class="col-md-5 float-left p-1">
								                                        </div>
								                                        <div class="col-md-7 p-0 float-left" id="r_div">
								
								                                            <form:input path="retailer_com" id="r_cum" onkeyup="total('r')"
								                                                onkeypress="return isNumberKey(event)" value="0" type="text"
								                                                class="form-control" />
								                                        </div>
								
								
								
								                                    </div>
                                                       			</div>
                                                       			
                                                       		</div>
                                                       		
                                                       		<div class="col-12  mb-3  text-success">
                                                        		<div class="col-3 a">
                                                       				<p class="header-title text-center font-weight-bold  mb-1">Total:</p>
                                                       			</div>
                                                       			<div class="col-3 a mb-2"> 
                                                       				<div class="total"> <span id="n_totalspan">00</span>
									                                    <form:input id="n_total" path="normal_total" type="hidden" value="00"
									                                        class="form-control" readonly="readonly" />
									                                </div>        
                                                       			</div> 
                                                       			<div class="col-3 a mb-2">
                                                       				<div class="total"> <span id="s_totalspan">00</span>
									                                    <form:input id="s_total" path="stotal" type="hidden" value="00"
									                                        class="form-control" readonly="readonly" />
									                                 </div>       
                                                       			</div>
                                                       			<div class="col-3 a mb-2">
                                                       				<div class="total"> <span id="r_totalspan">00</span>
									                                    <form:input id="r_total" path="rtotal" type="hidden" value="00"
									                                        class="form-control" readonly="readonly" />
									                                 </div>       
                                                       			</div>
                                                       			
                                                       		</div>	
                                                       		
                                                       </div>
                                                  </div>
                                                 
                                              </div>
                                            </div>            
                                        </div>
                                        
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                            <form:button  class="btn btn-primary waves-effect waves-light">Save</form:button>
                                        </div>
                                    </div><!-- /.modal-content -->
                                    
                                     </form:form>  
                                    
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->
                            
                               
       
                </c:if>
        </div>
     </div>
  

                            <script type="text/javascript">
                            
                             	
                            	function abcd() {
									
                            		var cat = document.getElementById("sub-cat_id").value;
                            		var scat = $( "#sub-cat_id option:selected" ).text();
                            		if(cat == 0)
                            		{
                            			document.getElementById("abcd").style.display = "none";
                            		}
                            		else
                            		{
                            			document.getElementById("abcd").style.display = "block";
                            		}
                            		$('#subcategory').val(scat);
                            		
								}
                            	
                            	function cm() {
									
                            		var cat = document.getElementById("com").value;
                            		var scat = document.getElementById("scom").value;
                            		var rcat = document.getElementById("rcom").value;
                            		if(cat != 0)
                            		{
                            			document.getElementById("yes").style.display = "block";
                            		}
                            		else
                            		{
                            			document.getElementById("yes").style.display = "none";
                            		}
                            		if(scat != 0)
                            		{
                            			document.getElementById("syes").style.display = "block";
                            		}
                            		else
                            		{
                            			document.getElementById("syes").style.display = "none";
                            		}
                            		if(rcat != 0)
                            		{
                            			document.getElementById("ryes").style.display = "block";
                            		}
                            		else
                            		{
                            			document.getElementById("ryes").style.display = "none";
                            		}
                            		
                            		
								}
                            	$(document).ready(function () {

                                    $('#n_cum').attr('disabled', true);
                                    $('#s_cum').attr('disabled', true);
                                    $('#r_cum').attr('disabled', true);
                                    
                                    


                                });
                            	
                            	function pri(b) {
                                    var p = $("#" + b + "_touch").val() * $("#" + b + "_rate").val();

                                    $("#" + b + "_rateu").val(p);
                                }

                            	function total(a) {
                                    var lab = $("#" + a + "_price").val();
                                    var price = $("#" + a + "_touch").val() * $("#" + a + "_rate").val();
                                    var Gst = $("#" + a + "_gst").val();

                                    var cum = ((parseFloat(lab) + parseFloat(price) + parseFloat(Gst)) * $("#" + a + "_cum").val()) / 100;

                                    var total = parseInt(lab) + parseInt(price) + parseInt(Gst) + parseInt(cum);

                                    $("#" + a + "_total").val(total);

                                    if (total > 0) {
                                        $("#" + a + "_totalspan").text("" + total + "/-");

                                    }
                                    
                                    else {
                                        $("#" + a + "_totalspan").text("00");
                                    }


                                }

                                
                                function cum(a) {
                                    if ($("#" + a + "_cbtn").val() == 0) {
                                        $("#" + a + "_cum").attr('disabled', true);
                                        $("#" + a + "_cum").val(0);
                                        $("#" + a + "_cover").addClass("col-md-12");
                                        $("#" + a + "_cover").removeClass("col-md-5");
                                    }
                                    
                                    else {

                                        $("#" + a + "_cum").attr('disabled', false);
                                        $("#" + a + "_cum").focus();
                                        $("#" + a + "_cover").addClass("col-md-5");
                                        $("#" + a + "_cover").removeClass("col-md-12");

                                    }
                                }

                                function mul(one, two, result) {
                                    var a = $("#" + one + "").val();
                                    var b = $("#" + two + "").val();
                                    $("#" + result + "").val(a * b);

                                    gst('n');
                                    gst('s');
                                    gst('r');

                                }

                                function gst(a) {

                                    if ($("#" + a + "_gst2").val() == 3) {

                                        var w = $("#" + a + "_touch").val();
                                        var rate = $("#" + a + "_rate").val();

                                        var price = w * rate;

                                        var good = (price * 3) / 100;

                                        var gst = good.toFixed(2);
                                        $("#" + a + "_gst").val(gst);
                                        $("#" + a + "_gsttext").text("" + gst + "/-");
                                    }
                                    if ($("#" + a + "_gst2").val() == 8) {
                                        var lab = $("#" + a + "_price").val();
                                        var w = $("#" + a + "_touch").val();
                                        var rate = $("#" + a + "_rate").val();

                                        var price = w * rate;

                                        var good = (price * 3) / 100;

                                        var ser = (lab * 5) / 100;

                                        var r = good + ser;
                                        var gst = r.toFixed(2);

                                        $("#" + a + "_gst").val(gst);

                                        $("#" + a + "_gsttext").text("" + gst + "/-");



                                    }

                                    if ($("#" + a + "_gst2").val() == 0) {

                                        var w = $("#" + a + "_touch").val();
                                        var rate = $("#" + a + "_rate").val();

                                        var price = w * rate;

                                        var good = (price * 0) / 100;

                                        var gst = good.toFixed(2);
                                        $("#" + a + "_gst").val(gst);
                                        $("#" + a + "_gsttext").text("" + gst + "/-");
                                    }
                                    total('n');
                                    total('s');
                                    total('r');

                                }
                                
                                function isNumberKey(evt) {
                                    var charCode = (evt.which) ? evt.which : evt.keyCode;
                                    if (charCode != 46 && charCode > 31
                                        && (charCode < 48 || charCode > 57))
                                        return false;
                                    return true;
                                }


                                function isNumericKey(evt) {
                                    var charCode = (evt.which) ? evt.which : evt.keyCode;
                                    if (charCode != 46 && charCode > 31
                                        && (charCode < 48 || charCode > 57))
                                        return true;
                                    return false;
                                }
                                function change(a, b, c) {

                                    $("#gsttext").css("color", "green");
                                    $("#gsttext").css("font-size", "73%");
                                    if ($("#" + a + "_gst2").val() == 0) {
                                        $("#gsttext").text("");

                                        $("#" + b + "_gst2").val(0)
                                        $("#" + c + "_gst2").val(0)
                                        gst(b);
                                        gst(c);
                                    }

                                    if ($("#" + a + "_gst2").val() == 3) {
                                        $("#gsttext").text("(3% GOOD CHARGE)");

                                        $("#" + b + "_gst2").val(3)
                                        $("#" + c + "_gst2").val(3)
                                        gst(b);
                                        gst(c);
                                    }

                                    if ($("#" + a + "_gst2").val() == 8) {
                                        $("#gsttext").text("(3% GOOD + 5% SERVICE CHARGE)");

                                        $("#" + b + "_gst2").val(8)
                                        $("#" + c + "_gst2").val(8)
                                        gst(b);
                                        gst(c);
                                    }

                                }
                               
                         		
                             	function data() {
                             		var id = document.getElementById("status-select").value;
                             		window.location.href="itemsubcategory.com?a="+id;
                             				
									
								}		
                             
                            
                                
                                
                      /* $(document).ready(function() 
                            			{
                            	$.ajax
                        		({
                        			type: "GET",
                        			url: "get_data.com",
                        			data:{'model':'TypeModel'},
                        			success: function (data) 
                        			{	
                        				
                        				var obj=data.data;
                        				$(obj).each(function()
                        				{
                        					$('#type_id').append(`<option value="0"> 
                                                    Select Type
                                               </option>`); 
                        					var option = $('<option />');
                        					option.attr('value', this.type_id).text(this.type_name);           
                        					$('#type_id').append(option);
                        				});  
                        			}
                        		});
                            	
                       }); */
                            	
							</script>
							

                                                   
                                