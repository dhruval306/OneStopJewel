
  <div class="wrapper">
            <div class="container-fluid">
    <div class="row">

        <div class="col-12">
                        <div class="page-title-box">
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">UBold</a></li>
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">ACM</a></li>
                                    <li class="breadcrumb-item active">Privilege Component</li>
                                </ol>
                            </div>
                            <h4 class="page-title"></h4>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">

                                <h6 class="header-title">Priviledge Component Details</h6>
                                <br>
                                <h6>Select Privilege</h6>
                                <select class="custom-select col-6 mb-3 ">
                                            <option value="1">Admin</option>
                                            <option value="2">Salesman</option>
                                            <option value="3">Manager</option>
                                        </select>
                                <table id="datatable-buttons" style="text-align: center;" class="table table-striped dt-responsive nowrap">
	<tr>
		<th>
			Component Name
		</th>
		<th>
			Component Link
		</th>
		
		<th>
			Action
		</th>
	</tr>
	<tbody id="aaa">
		
	</tbody>
	<tfoot>
		<tr>
			<td colspan="3">
					
					<button class="btn btn-primary col-6" onclick="aaa()">Add Row </button>
					<button class="btn btn-success col-5" >Add Component</button>
					
			</td>
		</tr>
	</tfoot>
</table>
								</div> <!-- end card body-->
                             
                        </div> <!-- end card -->
                        
                    </div>
</div>
	</div>
</div>




<script type="text/javascript">


	var tt = 1;
	function aaa() {
		var a = $('#aaa');
		var j = ['<td><input type="text" class="form-control col-12" onblur="getda(',tt,')" id="price',tt,'" name="price"/></td>',
				'<td><input type="text" class="form-control col-12" onblur="getda(',tt,')"  id="qnt',tt,'"  name="qnt"/></td>',
				
				'<td><input type="button" class="btn btn-danger col-10" onclick="reee(',tt,')" value="Delete"/></td>'].join('');
		var p = $('<tr/>').html(j);
		p.attr('id','mom'+tt);
		tt++;
		$('#aaa').append(p);
	}
	function reee(arg) {
		var s = document.getElementById('aaa');
		var j = document.getElementById('mom'+arg);
		s.removeChild(j);
       
	}
</script>

