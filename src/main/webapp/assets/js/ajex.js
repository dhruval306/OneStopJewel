
function check(id) {
	
	$('#state').html("");
	
		$.ajax({

			url:'citydata.com',
			method:'POST',
			data:{'id':id},
			success:function(data){
				 //with spring
				/*for (var i = 0; i < data.length; i++) {
					var sd = $('<option/>');
					sd.attr('value',data[i].state_id).text(data[i].state_name);
					$('#state').append(sd);	
				}	*/
				$('#state').find("option:eq(0)").html("Select State");
				var obj=data.data;
				$(obj).each(function()
				{
					var option = $('<option />');
					option.attr('value', this.state_id).text(this.state_name);           
					$('#state').append(option);
				});  
			}
		});
}