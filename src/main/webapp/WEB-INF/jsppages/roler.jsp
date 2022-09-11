<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="wrapper">
            <div class="container-fluid">
				<div class="row" >
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">ACM</a></li>
                                    <li class="breadcrumb-item active">ROLE</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
               </div>
                    <div class="col-12 mb-3">
                    	<div style="float: left;"><h2><label class="header-title mb-1">Role Information</label></h2></div>
                     	<div style="text-align: right;">
                     	
                     	<button  style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" type="button" class="btn btn-light btn-sm click waves-effect col-1" data-animation="superscaled" data-plugin="custommodal" data-overlayColor="#38414a">Add New</button></div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">

                                <br>
        							
                                    <table  class="table dt-responsive nowrap">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>No</th>
                                            <th>Type Name</th>
                                            <th class="text-center">Action</th>
                                            
                                        </tr>
                                    </thead>
                                    <c:forEach items="${roledata}" var="r" varStatus="count">
                                        <tbody>
                      
                                            <tr>
                                                <td>
                                                    ${count.count }
                                                </td> 
                                                <td >
                                              
                                                    <span class="text-center text-uppercase font-weight-bold">${r.role }</span>
                                                 </td>
                                              
                                                <td style="text-align: center">
                                                    <a <%-- href="roledelete.com?a=${r.id }" --%> onclick="role(${r.id})" id="role${r.id}" class="action-icon"><button class=" btn btn-xs  btn-outline-danger btn-rounded waves-effect waves-light" title="Delete" data-plugin="tippy" data-tippy-placement="bottom"><i class="fas fa-trash-alt"></i> </button></a>
                                                   
                                                </td>
                                            </tr>
                                           
                                        </tbody>
                                         </c:forEach> 
                                </table>
                                </div>
                                </div>
 
 
                                

                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
                    
                    
                    
                    
                    
        <!-- Modal -->
          <div id="custom-modal" class="modal-demo"  >
            <button type="button" class="close" onclick="Custombox.modal.close();">
                <span>&times;</span><span class="sr-only">Close</span>
            </button>
            <h4 class="custom-modal-title">Add Role details</h4>
            <div style="padding: 30px">
            		<form:form  modelAttribute="role">
            				<form:input path="id" id="roleid" type="hidden"/>
                            	<div class="form-group">
                                	<label>Role Name</label>
                                	<form:input path="role" id="role" class="form-control" required="required" placeholder="Enter name"/>
                            	</div>
                          

                           		<div class="text-right">
                           			
                                  	<form:button id="subbtn"  type="submit" class="btn btn-success waves-effect  waves-light">Save</form:button>
                                	<form:button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</form:button>
                            	</div>
                            	
                    </form:form>
                    
            </div>
       		</div>  
                
                <script>
                
               
                /*  $("#subbtn").click()
                {
                	
                	var x = document.forms["myForm"]["fname"].value;
              	      if (x == "") 
              	      {
              		     alert("Name must be filled out");
              	         return false;
              	       }
                };
                 */
                
                
               /*  function validateForm() {
                	  var x = document.forms["myForm"]["fname"].value;
                	  if (x == "") {
                		  alert("Name must be filled out");
                	    return false;
                	  }
                	} */
                
                
                
                function role(id) {
                	$("#sa-custom-position").click();
                	
                	var delay = 1000; 
                	setTimeout(function(){ window.location = "roledelete.com?a="+id; }, delay);
					
				}
               
                /* $("#subbtn").click()
                {
                	$("#sa-custom-position").click();
                	$("#subbtn").delay(200).click()
                };
                 */
                
                
                
                </script>     


        
        