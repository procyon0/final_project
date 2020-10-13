/**
 * 
 */
var main = {
	init : function() {
		var _this = this;
		$('#btn_add').on('click', function() {
			_this.add();
		});
	},
	add : function() {
		var token = $('#csrf').val();
		var data = {
			userId: $('#userId').val(),
			goodsNo: $('#goodsNo').val(),
			amount: $("#amount").val()
		};
		
		$.ajax({
			type:'POST',
			headers: {'x-csrf-token' : token},
			url: '/cart/add',
			dataType: 'json',
			contentType: 'application/json;charset=utf-8',
			data: JSON.stringify(data)
		}).done(function() {
			var isCart = confirm("장바구니에 물건이 추가되었습니다. 장바구니로 이동하시겠습니까?");
			if(isCart === true) {
				window.location.href="/order/cart";
			} else {
				window.location.href="/goods/detail?goodsNo="+ $('#goodsNo').val();
			}

		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	}
};

main.init();