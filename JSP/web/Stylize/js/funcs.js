$(document).ready(function(){

	$('#bank-deposit').click(function () {

		var id = $('#inputAmt').val();
		var data = 'amt='+ id;

		$.ajax({
			type:"GET",
			cache:false,
			url:"/WebApplication1/stocks/ajax/bank-deposit.jsp",
			data:data,    
			success: function (html) {
					//console.log(html);
					$('.msg').html(html);
					//$('#inputAmt').val(0);
				}
			});

		return false;
	});

	$('#bank-withdraw').click(function () {

		var id = $('#inputAmt').val();
		var data = 'amt='+ id;

		$.ajax({
			type:"GET",
			cache:false,
			url:"/WebApplication1/stocks/ajax/bank-withdraw.jsp",
			data:data,    
			success: function (html) {
					//console.log(html);
					$('.msg').html(html);
					//$('#inputAmt').val(0);
				}
			});

		return false;
	});

	$('#price-check').click(function () {

		//var type = document.querySelector('input[name="rate"]:checked').value;
		var type = $('#type').val();
		var interval = $('#interval').val();
		var stock = $('#stock').val();
		var to = $('#todate').val();
		var from = $('#fromdate').val();

		var data = 'stock='+stock+'&type='+type+'&from='+from+'&to='+to+'&interval='+interval;
		console.log(from,to,type,stock)

		$.ajax({
			type:"GET",
			cache:false,
			url:"/WebApplication1/stocks/ajax/price-retrieve.jsp",
			data:data,    
			success: function (html) {
				$('.msg').html(html);
			}
		});

		return false;
	});

	$('#trade-buy-check').click(function () {

		//var type = document.querySelector('input[name="rate"]:checked').value;
		var stock = $('#stock').val();
		var date = $('#date').val();
		var volume = $('#volume').val();

		var data = 'stock='+stock+'&date='+date+'&volume='+volume;
		console.log(data);

		$.ajax({
			type:"GET",
			cache:false,
			url:"/WebApplication1/stocks/ajax/trade-buy-check.jsp",
			data:data,    
			success: function (html) {
				$('.msg').html(html);
			}
		});
		
		return false;
	});


	$('#trade-buy-submit').click(function () {

		//var type = document.querySelector('input[name="rate"]:checked').value;
		var stock = $('#stock').val();
		var date = $('#date').val();
		var volume = $('#volume').val();

		var data = 'stock='+stock+'&date='+date+'&volume='+volume;
		console.log(data);

		$.ajax({
			type:"GET",
			cache:false,
			url:"/WebApplication1/stocks/ajax/trade-buy-submit.jsp",
			data:data,    
			success: function (html) {
				$('.msg').html(html);
			}
		});
		
		return false;
	});
	
});
