<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<style type="text/css"> 
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
	            .table-wrap 
	            {
					height: 80px;
					overflow-y: auto;
				}	
				.total 
				{
					text-align: center;
					font-weight: 200;
					font-size: 110%;
		        }	
	 </style>
<div class="wrapper">
            <div class="container-fluid">
				<div class="row" >
                    <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Sales</a></li>
                                    <li class="breadcrumb-item active">Sale Item</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
             </div>
               
               <c:if test="${partydata ne null }">
               <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                 <div class="col-12 m-0">
			                    	<div style="float: left;"><h2><label class="header-title mt-0 mb-1">Select Sales party</label></h2></div>
			                     	<!-- <div style="text-align: right;"> -->
			                     	
			                     	<!-- <a  style="background-color: #5A6268; color: white; padding: 7px; border-radius: 13px" href="addsalesparty.com?a=0" type="button" class="btn btn-light btn-sm click waves-effect col-1">Add New</a></div> -->
			                    </div>
                                <table class="table table-bordered table-centered  tex m-0">
                                    <thead>
                                        <tr>
                                            <th>NO</th>
                                            <th>Name</th>
                                            <th class="text-center">Select</th>
                                            
                                        </tr>
                                    </thead>
                                
                                    <tbody>
                                     <c:if test="${partydata eq null }"><td class="text-center" colspan="3">No Data !!!</td>
                                     </c:if>
                                    <c:if test="${partydata ne null }">
                                        <c:forEach items="${partydata }" var="r" varStatus="count">
                                        <tr>
                                            <td>${count.count }</td>
                                            <td>${r.party_name }</td>
                                            <td class="text-center"><a type="button" href="saleitem.com?a=1&&b=${r.salesparty_id}" class="btn text-white btn-success btn-rounded waves-effect waves-light">
		                                           Select
		                                        </a>
		                                    </td>
                                            
                                        </tr>
                                        </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>

                            </div> <!-- end card body-->
                        </div> <!-- end card -->
                    </div><!-- end col-->
                </div>
                <!-- end row-->
                </c:if>
                
                <c:if test="${salesparty ne null }">
                <form:form modelAttribute="saleitem">
                <div class="row">
                      <div class="col-12">
                        <div class="card-box">
                        <c:forEach items="${salesparty}" var="s">
                            <div class="row">
                                <div class="col-12 text-uppercase">
                                	<div class="col-3 float-left input-group-prepend">
                                		<span class="input-group-text"  id="basic-addon1">Party Name</span>
                                		<input class="form-control text-center" value="${s.party_name }" readonly="readonly" aria-label="Username" aria-describedby="basic-addon1"/>
                                	</div>
                                	<div class="col-2 float-left input-group-prepend">
                                		<span class="input-group-text" id="basic-addon1">type</span>
                                		<input class="form-control text-center" value="${s.type }" readonly="readonly" aria-label="Username" aria-describedby="basic-addon1"/>
                                	</div>
                                	<div class="col-2 float-left input-group-prepend">
                                		<span class="input-group-text" id="basic-addon1">Gst</span>
                                		<input class="form-control text-center" value="abacatayuuy" readonly="readonly" aria-label="Username" aria-describedby="basic-addon1"/>
                                	</div>
                                	<div class="col-3 float-left input-group-prepend">
                                		<span class="input-group-text" id="basic-addon1">Date</span>
                                		<input class="form-control text-center" id="date" value="" data-provide="datepicker" data-date-autoclose="true" readonly="readonly" aria-label="Username" aria-describedby="basic-addon1"/>
                                	</div>
                                	<div class="col-2 float-left input-group-prepend">
                                		<span class="input-group-text" id="basic-addon1">Bill No</span>
                                		<input class="form-control text-center" id="no" value=""  readonly="readonly" aria-label="Username" aria-describedby="basic-addon1"/>
                                	</div>
                                    
                                </div>
                                
                            </div> <!-- end row -->
                            </c:forEach>
                        </div> <!-- end card-box -->
                    </div> <!-- end col-->
                </div>
             
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                 
			                    	
			                     	
			                    
                                <table class="table table-wrap table-bordered text-uppercase table-centered mb-0">
                                    <thead class="bg-light text-dark">
                                        <tr>
                                            <th>NO</th>
                                            <th>Product Name</th>
                                            <th>Category Name</th>
                                            <th>Type Name</th>
                                            
                                            <th class="text-center">Select</th>
                                            
                                        </tr>
                                    </thead>
                                
                                    <tbody>
                                    <c:if test="${items eq null }"><td class="text-center" colspan="3">No Data !!!</td>
                                     </c:if>
                                    <c:if test="${items ne null }">
                                    <c:forEach items="${salesparty}" var="s">
                                        <c:forEach items="${items }" var="r" varStatus="count">
                                    
                                        <tr>
                                        	<td>${count.count }</td>
                                            <td>${r.subcat.sub_category_name }</td>
                                            <td>${r.cat.category_name }</td>
                                            <td>${r.type.type_name }</td>
                                            <td class="text-center tras"><button type="button" id="abc${r.subcat.sub_category_name }"  onclick="disable('${r.subcat.sub_category_name }',${r.overstack},'${s.type }',${r.normal_touch },${r.normal_labour_per_gm },${r.normal_labour_per_unit },${r.normal_rate_per_unit },${r.normal_gst },${r.normal_per_gm },${r.normal_com },${r.norma_com },${r.normal_total }
                                                                                                                                                                                                                   ,${r.supplier_touch },${r.supplier_labour_per_gm },${r.supplier_labour_per_unit },${r.supplier_rate_per_unit },${r.supplier_gst },${r.supplier_per_gm },${r.supplier_com },${r.supplie_com },${r.stotal }
                                                                                                                                                                                                                   ,${r.retailer_touch },${r.retailer_labour_per_gm },${r.retailer_labour_per_unit },${r.retailer_rate_per_unit },${r.retailer_gst },${r.retailer_per_gm },${r.retailer_com },${r.retaile_com },${r.rtotal });total()" class="btn btn-xs col-4  btn-outline-success  waves-effect waves-light">
		                                           Select
		                                        </button>
		                                    </td>
                                            
                                        </tr>
                                        </c:forEach>
                                        </c:forEach>
                                     </c:if>   
                                    </tbody>
                                </table>
                                </div> <!-- end card body-->
                        </div> <!-- end card -->
                    </div><!-- end col-->
                </div>
              
                    <div id="item" class="row ">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <table class="table table-wrap table-bordered text-uppercase table-centered mb-0">
                                    <thead class="bg-light text-dark">
                                        <tr>
                                            <th>NO</th>
                                            <th>Product</th>
                                            <th>Weight/Unit</th>
                                            <th>Piece</th>
                                            <th>Net Weight</th>
                                            <th>Rate/gm</th>
                                            <th>Net Price</th>
                                            <th>Labour/gm  </th>
                                            <th>Net Labour</th>
                                            <th>GST</th>
                                            <th>Commission</th>
                                            <th>Total</th>
                                            <th>#</th>
                                            
                                           
                                            
                                        </tr>
                                    </thead>
                                
                                    <tbody id="items">
                                    
                                    
                                       
                                         
                                    </tbody>
                                    <tfoot class="bg-light text-dark">
                                    	<tr>
                                    	<th colspan="2">Total</th>
                                      <th><div class="total"> <span id="w_total">00</span><input type="hidden" id="wtotal" name="wtotal" /></div></th>
                                      <th><div class="total"> <span id="piece_total">00</span></div></th>
                                      <th><div class="total"> <span id="nw_total">00</span></div></th>
                                      <th colspan="2"><div class="total"> <span id="r_total">00</span></div></th>
                                      <th colspan="2"><div class="total"> <span id="l_total">00</span></div></th>
                                      <th><div class="total"> <span id="g_total">00</span></div></th>
                                      <th><div class="total"> <span id="c_total">00</span></div></th>
                                      <th  colspan="3" ><div class="total"> <span id="sstotal">00</span>rs</div></th>
                                    	</tr>
                                    </tfoot>
                                </table>
                                </div> <!-- end card body-->
                        </div> <!-- end card -->
                    </div><!-- end col-->
                </div>
                 <div id="payment" class="row ">
                <div class="col-9">
                        <div id="" style="height: 500px" class="card-box">
                           
                            <ul class="nav nav-tabs nav-bordered nav-justified">
                                <li class="nav-item">
                                    <a href="#home-b2" data-toggle="tab" aria-expanded="true" class="nav-link active">
                                        Paid In Money
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#profile-b2" data-toggle="tab" aria-expanded="false" class="nav-link ">
                                        Paid In Gold
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#messages-b2" data-toggle="tab" aria-expanded="false" class="nav-link">
                                       Paid In Silver
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#messages-b3" data-toggle="tab" aria-expanded="false" class="nav-link">
                                        Discount
                                    </a>
                                </li>
                                
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="home-b2">
                                	<table class="table table-wrap table-borderless text-uppercase text-center table-centered mb-0 ">
                                		<thead class="bg-light text-dark">
                                        <tr>
                                            <th>#</th>
                                            <th>Type</th>
                                            <th>Amount</th>
                                            
                                        </tr>
                                    </thead>
	                                    <tr>
	                                    	<td>Cash</td>
	                                    	<td>---</td>
	                                    	<td><input id="cash" onkeyup="payment();finaltotal()" onkeypress="return isNumberKey(event)" class="form-control" /></td>
	                                    </tr>
	                                    <tr>
	                                    	<td>cheque</td>
	                                    	<td><div class="col-12 float-left input-group-prepend">
			                                		<span class="input-group-text" id="basic-addon1">Check No</span>
			                                		<input class="form-control"  id="checkno" placeholder="Enter Check Number" aria-label="Username" aria-describedby="basic-addon1"/>
			                                	</div>
		                                	</td>
	                                    	<td><input id="checkamount" onkeyup="payment();finaltotal()" onkeypress="return isNumberKey(event)" class="form-control" /></td>
	                                    </tr>
	                                     <tr>
	                                    	<td>(Paytm,Gpay,PhonePay)</td>
	                                    	<td><div class="col-12 float-left input-group-prepend">
			                                		<span class="input-group-text" id="basic-addon1">Number Of Payment</span>
			                                		<input class="form-control" placeholder="Enter Number Of paymnet" onkeypress="return isNumberKey(event)" id="refnumber" aria-label="Username" aria-describedby="basic-addon1"/>
			                                	</div>
		                                	</td>
	                                    	<td><input id="ppgamount" onkeyup="payment();finaltotal()" class="form-control" /></td>
	                                    </tr>
	                                    <tr>
	                                    	<td>UPI Through</td>
	                                    	<td><div class="col-12 float-left input-group-prepend">
			                                		<span class="input-group-text" id="basic-addon1">Note</span>
			                                		<input class="form-control" placeholder="Enter UPI ID" id="upiid" aria-label="Username" aria-describedby="basic-addon1"/>
			                                	</div>
		                                	</td>
	                                    	<td><input id="upiamount" onkeyup="payment();finaltotal()" onkeypress="return isNumberKey(event)" class="form-control" /></td>
	                                    </tr>
	                                    <tr class="bg-light text-dark">
                                    		<th>Total</th>
                                    		
                                    		<th>---</th>
                                    		<th><span id="cashamount">0</span>rs</th>
                                    		
                                    		
                                    	</tr>
                                    </table>
                                    
                                </div>
                                <div class="tab-pane " id="profile-b2">
                                	<table class="table table-wrap table-borderless text-uppercase text-center table-centered mb-0 ">
                                		<thead class="bg-light text-dark">
                                        <tr>
                                            <th>#</th>
                                            <th>weight</th>
                                            <th>less</th>
                                            <th>net weight</th>
                                            <th>rate</th>
                                            <th>amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<tr>
                                    		<c:forEach items="${subtypedata }" var="d">
                                    		<c:forEach items="${gold }" var="f">
                                    		<c:if test="${f.type_id eq d.t.type_id }">
                                    		<tr>
                                    		<th>${d.subtypename }<input name="goldtype" hidden="true" value="${d.subtypename }" /> </th>
                                    		<th><input id="goldweight${d.subtype_id }" name="g_weight"  onkeyup="minu(${d.subtype_id },'gold');gmtotal('g');gmtotal('gamount');gmtotal('gnet');finaltotal(${d.subtype_id})" onkeypress="return isNumberKey(event)" class="form-control"/></th>
                                    		<th><input id="goldle${d.subtype_id }" name="gle_weight"  onkeyup="minu(${d.subtype_id },'gold');gmtotal('gle');gmtotal('gamount');gmtotal('gnet');finaltotal(${d.subtype_id})" onkeypress="return isNumberKey(event)" class="form-control"/></th>
                                    		<th><input id="goldnet${d.subtype_id }" onkeyup="minu(${d.subtype_id },'gold');gmtotal('gnet');" name="gnet_weight" readonly="readonly" onkeypress="return isNumberKey(event)"  class="form-control"/></th>
                                    		<th><input id="goldrate${d.subtype_id }"  onkeyup="minu(${d.subtype_id },'gold');gmtotal('gamount');gmtotal('gnet');finaltotal(${d.subtype_id})" class="form-control" value="${d.subtyperate }"/></th>
                                    		<th><input id="goldamount${d.subtype_id }" name="gamount_weight" readonly="readonly" onkeypress="return isNumberKey(event)" class="form-control"/></tr>
                                    		</c:if>
                                    		</c:forEach>
                                    		</c:forEach>
                                    	</tr>
                                    	<tr class="bg-light text-dark">
                                    		<th>Total</th>
                                    		<th><span id="gw_total">0</span>gm</th>
                                    		<th>-<span id="glew_total">0</span>gm</th>
                                    		<th><span id="gnetw_total">0</span>gm</th>
                                    		<th colspan="2"><span id="gamountw_total">0</span>rs</th>
                                    		
                                    	</tr>
                                    </tbody>
                                    <tfoot>
                                    
                                    </tfoot>
                                	</table>
                                    <p class="text-right text-uppercase m-2">gold <i class="fas fa-sync-alt"></i> cash</p>
                                </div >
                                <div class="tab-pane" id="messages-b2">
                                    <table class="table table-wrap table-borderless text-uppercase text-center table-centered mb-0 ">
                                		<thead class="bg-light text-dark">
                                        <tr>
                                            <th>#</th>
                                            <th>weight</th>
                                            <th>less</th>
                                            <th>net weight</th>
                                            <th>rate</th>
                                            <th>amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<tr>
                                    		<c:forEach items="${subtypedata }" var="d">
                                    		<c:forEach items="${silver }" var="f">
                                    		<c:if test="${f.type_id eq d.t.type_id }">
                                    		<tr>
                                    		<th>${d.subtypename}<input name="silvertype" hidden="true" value="${d.subtypename }" /></th>
                                    		<th><input id="silverweight${d.subtype_id }" name="silver_weight"  onkeyup="minu(${d.subtype_id },'silver');gmtotal('silver');gmtotal('silveramount');gmtotal('silvernet');finaltotal(${d.subtype_id})" onkeypress="return isNumberKey(event)" class="form-control"/></th>
                                    		<th><input id="silverle${d.subtype_id }" name="silverle_weight"  onkeyup="minu(${d.subtype_id },'silver');gmtotal('silverle');gmtotal('silveramount');gmtotal('silvernet');finaltotal(${d.subtype_id})" onkeypress="return isNumberKey(event)" class="form-control"/></th>
                                    		<th><input id="silvernet${d.subtype_id }" onkeyup="minu(${d.subtype_id },'silver');gmtotal('silvernet');" name="silvernet_weight" readonly="readonly" onkeypress="return isNumberKey(event)"  class="form-control"/></th>
                                    		<th><input id="silverrate${d.subtype_id }"  onkeyup="minu(${d.subtype_id },'silver');gmtotal('silveramount');gmtotal('silvernet');finaltotal(${d.subtype_id})" class="form-control" value="${d.subtyperate }"/></th>
                                    		<th><input id="silveramount${d.subtype_id }" name="silveramount_weight" readonly="readonly" onkeypress="return isNumberKey(event)" class="form-control"/></tr>
                                    		</c:if>
                                    		</c:forEach>
                                    		</c:forEach>
                                    		
                                    	</tr>
                                    </tbody>
                                    	<tr class="bg-light text-dark">
                                    		<th>Total</th>
                                    		<th><span id="silverw_total">0</span>gm</th>
                                    		<th>-<span id="silverlew_total">0</span>gm</th>
                                    		<th><span id="silvernetw_total">0</span>gm</th>
                                    		<th colspan="2"><span id="silveramountw_total">0</span>rs</th>
                                    		
                                    	</tr>
                                	</table>
                                	 <p class="text-right text-uppercase m-2">silver <i class="fas fa-sync-alt"></i> cash</p>
                                </div>
                                <div class="tab-pane" id="messages-b3">
                                     <table class="table table-wrap table-borderless text-uppercase text-center table-centered mb-0 ">
                                		<thead class="bg-light text-dark">
                                        <tr>
                                            <th>#</th>
                                            <th>in(%)</th>
                                           <th>In(Rs)</th>
                                        </tr>
                                    </thead>
	                                    <tr>
	                                    	<td>Discount</td>
	                                    	<td><input onkeyup="discount('discounta');finaltotal()"" onkeypress="return isNumberKey(event)" class="form-control" id=discounta></td>
	                                    	<td><input onkeyup="discount('discountb');finaltotal()" onkeypress="return isNumberKey(event)" class="form-control" id=discountb></td>
	                                    	
	                                    </tr>
                                    </table>
                                </div>
                            </div>
                        </div> <!-- end card-box-->
                    </div> <!-- end col -->
                    <div class="col-3">
                        <div class="card-box">
                        	<table class="table table-wrap table-borderless text-uppercase text-center table-centered mb-0 ">
                                    <thead class="bg-light text-dark">
                                        <tr>
                                            <th colspan="2">TOTAL</th>
                                       </tr>
                                    </thead>
                                
                                    <tbody class="text-dark">
                                     	<tr><th>Subtotal</th><th><span id="subtotal">00</span>rs</th>
                                     	</tr>
                                     	<tr><th>Paid In Cash</th><th>-<span id="cashpay">00</span>rs</th>
                                     	</tr>
                                     	<tr><th>Paid In Gold</th>
                                     		<th>-<span id="goldpay">00</span>rs</th>
                                     	</tr>
                                     	<tr>
                                     		<th>Paid In Silver</th>
                                     		<th>-<span id="silverpay"> 00</span>rs</th>
                                     	</tr>
                                     	<tr>
                                     		<th>Discount</th>
                                     		<th>-<span id="discountpay">00</span>rs</th>
                                     	</tr>
                                    </tbody>
                                    <tfoot class="bg-light text-dark">
                                    	<tr>
                                     		<th>Unpaid Money</th>
                                     		<th><span id="unpaid"></span>rs</th>
                                     	</tr>
                                    </tfoot>
                                </table>
                                
                        </div>
                    </div>    
                        
                </div>
				<div class="row">
                      <div class="col-12">
                        <div class="card-box">
                        	<h4 class="text-success">Total Amount :<span id="totalamount"></span></h4>
                       		<h4 class="text-danger">Pending Amount : <span id="pending"></span></h4>
                       		 <div class="modal-footer">
                                                    		<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                                                    		<button  class="btn btn-primary waves-effect waves-light">Submit</button>
                                                       </div>
                        </div>
                      </div>
                 </div>      
                  </form:form>        
                </c:if>
                 
               
          </div>
     </div>  
     
    <script type="text/javascript">
	var tt = 1;
			function payment() {
				var p = $("#cash").val();
		        var q  = $("#checkamount").val();
		        var r = $("#ppgamount").val();
		        var s  = $("#upiamount").val();
		        if (p == "") {
		        	p = 0;
		        }
		        if (q == "") {
		        	q = 0;
		        }
		        if (r == "") {
		        	r = 0;
		        }
		        if (s == "") {
		        	s = 0;
		        }
		        var t = parseInt(p)+parseInt(q)+parseInt(r)+parseInt(s);
		        
		        $("#cashamount").text(t);
		        $("#cashpay").text(t);
				
			}
			function discount(id) {
				if(id == "discounta")
					{
					$("#discountb").val(0);
					var a = $("#discounta").val();
					var f = $("#subtotal").text();
					var di = (a*f)/100;
					$("#discountpay").text(di);
					
					
					}
				else {
					var a = $("#discountb").val();
					var f = $("#subtotal").text();
					var di = (f-a);
					$("#discountpay").text(a);
					$("#discounta").val(0);
					
				}
				
			}
			function minu(id,name) {
				
				var p = $("#"+name+"weight"+id+"").val();
		        var q  = $("#"+name+"le"+id+"").val();
		        
		        if (q == "" || p == "") {
					q = 0;
					
				}
		        var pq = parseInt(p) - parseInt(q);
		        $("#"+name+"net"+id+"").val(pq);
		        
		        var r  = $("#"+name+"net"+id+"").val();
		        var d  = $("#"+name+"rate"+id+"").val();
		        var rd = parseInt(r) * parseInt(d);
		        $("#"+name+"amount"+id+"").val(rd);
		    }
	
		function gmtotal(name) {
			var total = document.getElementsByName(""+name+"_weight");
			
			var tf = 0;
			for(var i=0;i<total.length;i++)
			{
				if (total[i].value == "") {
					
					tf = tf + 0;
				}
				else {
					tf = tf + parseInt(total[i].value);
				}
			}
			$("#"+name+"w_total").text("" + tf + "");
			
			
		}
		function finaltotal(id) {
			
			var pq = $("#gamountw_total").text();
			$("#goldpay").text(pq);
			var q = $("#silveramountw_total").text();
			$("#silverpay").text(q);
			
			
			var a = $("#goldpay").text();
			var b = $("#silverpay").text();
			var c = $("#discountpay").text();
			var d = $("#cashpay").text();
			var f = $("#subtotal").text();
			var e = parseInt(f) - parseInt(a) - parseInt(b) - parseInt(c) - parseInt(d);
			$("#unpaid").text(e);
			if(e < 0){
				$("#toastr-one").click();
			}
			$("#pending").text(""+e+" Rs ");
			$("#totalamount").text(""+f+" Rs ");
		}
			
		
		
		function disable(a,stock,type,n_touch,n_labour_per_gm,n_labour_per_unit,n_rate_per_unit,n_gst,n_per_gm,n_com,norma_com,n_total
									 ,s_touch,s_labour_per_gm,s_labour_per_unit,s_rate_per_unit,s_gst,s_per_gm,s_com,supplie_com,s_total
				                     ,r_touch,r_labour_per_gm,r_labour_per_unit,r_rate_per_unit,r_gst,r_per_gm,r_com,retaile_com,r_total) {
			var element = document.getElementById("abc"+a+"");
			var b = a;
			var s = stock;
			  element.classList.remove("btn-outline-success");
			  element.classList.add("btn-outline-dark");
			  element.innerHTML = "Added";
			  element.disabled = true; 
			  
			  if(type == "normal")
				  {
				  	var weight = n_touch;
				  	var ratepergm = n_per_gm;
				  	var netprice = n_rate_per_unit;
				  	var labour = n_labour_per_gm;
				  	var netlabour = n_labour_per_unit;
				  	var gst = n_gst;
				  	var com = n_com;
				  	var total = n_total;
				  }
			  
			  if(type == "supplier")
			  {
			  	var weight = s_touch;
			  	var ratepergm = s_per_gm;
			  	var netprice = s_rate_per_unit;
			  	var labour = s_labour_per_gm;
			  	var netlabour = s_labour_per_unit;
			  	var gst = s_gst;
			  	var com = s_com;
			  	var total = s_total;
			  }
			  
			  if(type == "retailer")
			  {
			  	var weight = r_touch;
			  	var ratepergm = r_per_gm;
			  	var netprice = r_rate_per_unit;
			  	var labour = r_labour_per_gm;
			  	var netlabour = r_labour_per_unit;
			  	var gst = r_gst;
			  	var com = r_com;
			  	var total = r_total;
			  }
			 
			  
			  var a = $('#items');
				var j = ['<td>',tt,'</td>',
					'<td>',b,'</td>',
					'<td><input type="text" class="form-control col-12 weight" value="',weight,'"  id="weight',tt,'" onkeyup="change(',tt,');total()" onkeypress="return isNumberKey(event)" name="weight"/></td>',
					'<td><input data-toggle="touchspin" type="text" class="form-control col-12 piece" value="1"  onkeyup="change(',tt,');total();piece(',tt,',',stock,')" onkeypress="return isNumberKey(event)" id="piece',tt,'"  name="piece"/></td>',
					'<td><input type="text" class="form-control col-12 netweight" value="',weight,'" readonly="readonly"   id="netweight',tt,'" onkeyup="total()" onkeypress="return isNumberKey(event)" name="netweight"/></td>',
					'<td><input type="text" class="form-control col-12 ratepergm" value="',ratepergm,'"  id="ratepergm',tt,'" onkeyup="change(',tt,');total()" onkeypress="return isNumberKey(event)" name="ratepergm"/></td>',
					'<td><input type="text" class="form-control col-12 netprice" value="',netprice,'"  readonly="readonly" id="netprice',tt,'" onkeyup="total()" onkeypress="return isNumberKey(event)" name="netprice"/></td>',
					'<td><input type="text" class="form-control col-12 labourpergm" value="',labour,'"  id="labourpergm',tt,'" onkeyup="change(',tt,');total()" onkeypress="return isNumberKey(event)" name="labourpergm"/></td>',
					'<td><input type="text" class="form-control col-12 netlabour" value="',netlabour,'" readonly="readonly" id="netlabour',tt,'" onkeyup="total()" onkeypress="return isNumberKey(event)" name="netlabour"/></td>',
					'<td><input type="text" class="form-control col-12 gst" value="',gst,'" readonly="readonly" id="gst',tt,'" onkeyup="total(',tt,')" onkeypress="return isNumberKey(event)" name="gst"/></td>',
					'<td><input type="text" class="form-control col-12 com" value="',com,'"  id="com',tt,'" onkeyup="total()" onkeypress="return isNumberKey(event)" name="com"/></td>',
					'<td><input type="text"  class="form-control col-12 abcd" value="',total,'" readonly="readonly"  id="total',tt,'" onkeyup="total()" onkeypress="return isNumberKey(event)" name="abcd"/></td>',
						
						'<td><button type="button" class="btn btn-xs btn-light col-12" onclick="reee(',tt,');total()" ><i class="fas fa-trash-alt"></i></button></td>'].join('');
				var p = $('<tr/>').html(j);
				p.attr('id','mom'+tt);
				tt++;
				$('#items').append(p);
			
		}
			
	    function change(id) {
	        var p = $("#weight"+id+"").val();
	        var q  = $("#piece"+id+"").val();
	        var pq = parseInt(p) * parseInt(q);
	        $("#netweight"+id+"").val(pq);
	        
	        var r = $("#netweight"+id+"").val();
	        var w = $("#ratepergm"+id+"").val();
	        var rw = parseInt(r) * parseInt(w);
	        $("#netprice"+id+"").val(rw);
	        
	        var l = $("#labourpergm"+id+"").val();
	        var e = $("#netweight"+id+"").val();
	        var le = parseInt(l) * parseInt(e);
	        $("#netlabour"+id+"").val(le);
	        
	        var g = $("#gst"+id+"").val();
	        if(parseInt(g) == 3)
	        	{
	        			var ra = $("#ratepergm"+id+"").val();
	        			var nq = $("#netweight"+id+"").val();
	        			var gt = (parseInt(ra) * parseInt(nq) * 3)/100;
	        		
	        	}
	        if (parseInt(g) == 8) {
	        	var ra = $("#ratepergm"+id+"").val();
    			var nq = $("#netweight"+id+"").val();
    			var nl = $("#netlabour"+id+"").val();
    			var at = (parseInt(ra) * parseInt(nq) * 3)/100;
    			var bt = (parseInt(nl)* 5)/100;
    			var gt = parseInt(at) + parseInt(bt);
			}
	        var nt = $("#netlabour"+id+"").val();
	        var ee = $("#netweight"+id+"").val();
	        var rr = $("#ratepergm"+id+"").val();	
	        var c =  $("#com"+id+"").val();
	        var com = ((parseInt(nt) + (parseInt(ee)*parseInt(rr)) + parseInt(gt)) * parseInt(c))/100;
	        var tot = parseInt(nt) + (parseInt(ee)*parseInt(rr)) + parseInt(gt) + parseInt(com);
	        $("#total"+id+"").val(tot);
	        
	        
	      }
			function total(id) {
				
				
				var weight = document.getElementsByName('weight');
				var w_t = 0;
				for(var i=0;i<weight.length;i++)
				{
					w_t = w_t + parseInt(weight[i].value);
				}
				$('#w_total').text("" + w_t + "gm");
				$('#wtotal').val(w_t);
				
				
				var piece = document.getElementsByName('piece');
				var p_t = 0;
				for(var i=0;i<piece.length;i++)
				{
					p_t = p_t + parseInt(piece[i].value);
				}
				$('#piece_total').text("" + p_t + "piece");
				
				
				var netweight = document.getElementsByName('netweight');
				var netw_t = 0;
				for(var i=0;i<netweight.length;i++)
				{
					netw_t = netw_t + parseInt(netweight[i].value);
				}
				$('#nw_total').text("" + netw_t + "gm");
				
				
				var netprice = document.getElementsByName('netprice');
				var netp_t = 0;
				for(var i=0;i<netprice.length;i++)
				{
					netp_t = netp_t + parseInt(netprice[i].value);
				}
				$('#r_total').text("" + netp_t + "rs.");
				
				
				var finaltotal = document.getElementsByName('abcd');
				var l = 0;
				for(var i=0;i<finaltotal.length;i++)
				{
					l = l + parseInt(finaltotal[i].value);
					
				}
				$('#sstotal').text("" + l + "");
				$('#subtotal').text("" + l + "");
				$('#unpaid').text("" + l + "");
				
				var netlabour = document.getElementsByName('netlabour');
				var netl_t = 0;
				for(var i=0;i<netlabour.length;i++)
				{
					netl_t = netl_t + parseInt(netlabour[i].value);
					
				}
				$('#l_total').text("" + netl_t + "rs.");
				
				
				var gst = document.getElementsByName('gst');
				var g = 0;
				for(var i=0;i<gst.length;i++)
				{
					g = g + parseInt(gst[i].value);
				}
				$('#g_total').text("" + g + "%");
				
				
				var com = document.getElementsByName('com');
				var n_com = 0;
				for(var i=0;i<com.length;i++)
				{
					n_com = n_com + parseInt(com[i].value);
				}
				$('#c_total').text("" + n_com + "%");
			}
			
			function reee(arg) {
				var s = document.getElementById('items');
				var j = document.getElementById('mom'+arg);
				
				s.removeChild(j);
			}
			
			function piece(i,stock) {
				var j = document.getElementById('piece'+i).value;
				if(stock <= j){
					$("#toastr-two").click();
				}
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
		
	</script>        