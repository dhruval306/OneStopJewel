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
                                    <li class="breadcrumb-item active">Privilege </li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                </div>

<div class="col-12" 
     >
                        <div class="card">
                            <div class="card-body">
                                <div class="row mb-2">
                                    <div class="col-sm-4">
                                       <h4> Privilege Detail's</h4>
                                    </div>
                                    <div class="col-sm-8">
                                        
                                    </div><!-- end col-->
                                </div>
        
                                
                                    <table class="table dt-responsive nowrap">
                                    <thead class="thead-light">
                                            <tr>
                                                <th>NO.</th>
                                                <th>Privilege  Name</th>
                                                <th style="width: 100px;">Action</th>
                                            </tr>
                                        </thead>
                                         <c:forEach items="${privilegedata}" var="r" varStatus="count">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    ${count.count }
                                                </td> 
                                                <td class="table-user">
                                                    
                                                    ${r.privilege }
                                                 </td>
                                                 
                                                <td>
                                                    <a href="pdelete.com?a=${r.privilege_id }" class="action-icon"><i class="fas fa-trash-alt"></i> </a>
                                                    <a href="privilege.com?a=${r.privilege_id }" class="action-icon"> <i class="fas fa-user-edit"></i></a>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                        </c:forEach>
                                    </table>
                                </div>

                                

                            </div> <!-- end card-body-->
                        </div> <!-- end card-->
                    </div> <!-- end col -->
         				<div style="text-align: center; padding-bottom: 20px " class=" col-12">
                    <a style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" class="btn btn-light btn-sm waves-effect col-4" data-animation="superscaled" data-plugin="custommodal" data-overlayColor="#38414a"> Add New Privilege</a>
                    </div>
                </div> 
                   
                <!-- Modal -->
                <div id="custom-modal" class="modal-demo">
                    <button type="button" class="close" onclick="Custombox.modal.close();">
                        <span>&times;</span><span class="sr-only">Close</span>
                    </button>
                    <h4 class="custom-modal-title">Add New Privilege</h4>
                    <div class="custom-modal-text text-left">
                    <form:form  modelAttribute="privilege">
                            <div class="form-group">
                                <label for="name">Privilege Name</label>
                                <form:input path="privilege" class="form-control" id="name" placeholder="Enter name"/>
                            </div>
                                     <div class="text-right">
                                <form:button type="submit" class="btn btn-success waves-effect waves-light">Save</form:button>
                                <form:button type="button" class="btn btn-danger waves-effect waves-light m-l-10" onclick="Custombox.close();">Cancel</form:button>
                            </div>
                        </form:form>
                    </div>
                </div>        

