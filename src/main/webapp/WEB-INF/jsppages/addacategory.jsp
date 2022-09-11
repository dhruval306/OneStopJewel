<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %><%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<li class="breadcrumb-item">
								<a href="javascript: void(0);">UBold</a>
							</li>
							<li class="breadcrumb-item">
								<a href="javascript: void(0);">Master</a>
							</li>
							<li class="breadcrumb-item active">Category</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<div class="card-box">
					<div class="row">
						<div class="col-lg-8">
							<form class="form-inline">
								<div class="form-group">
									<label for="status-select" class="mr-2">Sort By Type</label>
									<select onchange="data()" class="custom-select" id="status-select">
										<option>select</option>
										<option value="0">All</option>
										<c:forEach items="${ typedata}" var="s">
											<option value="${s.type_id }">${s.type_name }</option>
										</c:forEach>
									</select>
								</div>
							</form>
						</div>
						<div class="col-lg-4">
							<div class="text-lg-right mt-3 mt-lg-0">
								<button style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="#custom-modal" type="button" class="btn btn-light btn-sm waves-effect col-4" data-animation="slit" data-plugin="custommodal" data-overlayColor="#38414a">Add New</button>
							</div>
						</div>
						<!-- end col-->
					</div>
					<!-- end row -->
				</div>
				<!-- end card-box -->
			</div>
			<!-- end col-->
		</div>
		<div class="row">
			<c:forEach items="${ categorydata}" var="c" varStatus="count">
				<div class="col-md-6 col-xl-3">
					<div class="card-box product-box">
						<div class="product-action">
							<a href="subcat.com?a=${c.category_id }" class="btn btn btn-light waves-effect" title="Sub-Category" data-plugin="tippy" data-tippy-placement="bottom">
								<i class="fas fa-eye"></i>
							</a>
							<a href="catdelete.com?a=${c.category_id }" class="btn btn btn-light waves-effect" title="Delete" data-plugin="tippy" data-tippy-placement="bottom">
								<i class="fas fa-trash-alt"></i>
							</a>
						</div>
						<div class="product-img-bg">
							<img width="278px" height="278px" class="" alt="image" src="upload/${c.image }">
							</div>
							<div class="product-info">
								<div class="row align-items-center">
									<div class="col">
										<h5 class="font-16 mt-0 text-uppercase sp-line-1">
											<a href="#" class="text-dark"> ${c.category_name }</a>
										</h5>
										<h5 class="m-0">
											<span class="text-uppercase text-muted">type name :-${c.type.type_name}</span>
										</h5>
									</div>
									<div class="col-auto">
										<div class="product-price-tag">
                                             No ${count.count }
                                        </div>
									</div>
								</div>
								<!-- end row -->
							</div>
							<!-- end product info-->
						</div>
						<!-- end card-box-->
					</div>
					<!-- end col-->
				</c:forEach>
			</div>
		</div>
		<!-- end row-->
	</div>
	<!-- Custom Modal -->
	<div id="custom-modal" class="modal-demo">
		<button type="button" class="close" onclick="Custombox.modal.close();">
			<span>&times;</span>
			<span class="sr-only">Close</span>
		</button>
		<h4 class="custom-modal-title">Add Category</h4>
		<div class="custom-modal-text">
			<form:form modelAttribute="category" enctype="multipart/form-data" >
				<form:input path="category_id" type="hidden"/>
				<div class="col-12" style="padding: 15px 0">
					<label >Select Type :-</label>
					<form:select path="type.type_id" class="form-control " >
						<form:option value="0">Select Type:-</form:option>
						<c:forEach items="${ typedata}" var="s">
							<form:option value="${s.type_id }">${s.type_name }</form:option>
						</c:forEach>
					</form:select>
				</div>
				<div class="col-12" style="padding: 15px 0">
					<label >Category Name:-</label>
					<form:input path="category_name" type="text" required="required" class="form-control" placeholder="Category name"/>
				</div>
				<div class="col-12" style="padding: 15px 0">
					<label >Category Image:-</label>
					<input type="file" accept="image/*" class="dropify" data-max-file-size="1M" name="categoryimage" required="required" />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
					<form:button  class="btn btn-primary waves-effect waves-light">Save </form:button>
				</div>
			</form:form>
			<script type="text/javascript">
                                 		
                                 	function data() {
                                 		var id = document.getElementById("status-select").value;
                                 		window.location.href="cat.com?b="+id
                                 				
										
									}		
                                 
                                 </script>
		</div>
	</div>  
