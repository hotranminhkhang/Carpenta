$(function(){
	$(".cartProductQty").qtyChangeOnBlur();



});



jQuery.fn.qtyChangeOnBlur = function(){
	this.find("input[type='number']").blur(function(){
		var id = this.getAttribute("data-id");
		var qty = this.value;
		// alert(id + "--" + qty);
		$.ajax({
			type: "put",
			url: "/order_line_items/" + id,
			data: "quantity="+qty,
			dataType: "script"
		});
	});

};


