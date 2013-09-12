$(function(){
	$(".cartProductQty").qtyChangeOnBlur();

	document.getElementById('cartProductQtyInput').onkeypress = function(e) { e.preventDefault(); };
	document.getElementById('cartProductQtyInput').onkeydown = function(e) {
  if(e.keyCode != 38 && e.keyCode != 40)
    e.preventDefault();
	};
	if(document.addEventListener)
    document.getElementById('cartProductQtyInput').addEventListener('contextmenu',function(e) { e.preventDefault();
	},false);

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

	