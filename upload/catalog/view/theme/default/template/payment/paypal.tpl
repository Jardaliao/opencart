<style type="text/css">

#paypal_form {
	position: relative;
}

<?php if ($express_status) { ?>
#paypal_express_button {
	text-align: <?php echo $button_align; ?>;
}

#paypal_express_button_container {
	<?php if ($button_width) { ?>
	display: inline-block;
	width: <?php echo $button_width; ?>;
	<?php } ?>
}

@media (max-width: 476px) {
	#paypal_express_button_container {
		width: 100%;
	}
}
<?php } ?>
<?php if ($card_status) { ?>
#paypal_card {
	text-align: <?php echo $form_align; ?>;
}

#paypal_card_form {
	<?php if ($form_width) { ?>
	display: inline-block;
	width: <?php echo $form_width; ?>;
	<?php } ?>
	text-align: center;
	transition: all 600ms cubic-bezier(0.2, 1.3, 0.7, 1);
	-webkit-animation: cardIntro 500ms cubic-bezier(0.2, 1.3, 0.7, 1);
    animation: cardIntro 500ms cubic-bezier(0.2, 1.3, 0.7, 1);
	z-index: 1;
}

@media (max-width: 476px) {
	#paypal_card_form {
		width: 100%;
	}
}

#paypal_card_form.visa {
	color: #fff;
	background-color: #0D4AA2;
}

#paypal_card_form.master-card {
	color: #fff;
	background-color: #363636;
	background: linear-gradient(115deg, #d82332, #d82332 50%, #f1ad3d 50%, #f1ad3d);
}

#paypal_card_form.maestro {
	color: #fff;
	background-color: #363636;
	background: linear-gradient(115deg, #009ddd, #009ddd 50%, #ed1c2e 50%, #ed1c2e);
}

#paypal_card_form.american-express {
	color: #fff;
	background-color: #007CC3;
}

#paypal_card_form.discover {
	color: #fff;
	background-color: #ff6000;
	background: linear-gradient(#d14310, #f7961e);
}

#paypal_card_form.unionpay, #paypal_card_form.jcb, #paypal_card_form.diners-club {
	color: #fff;
	background-color: #363636;
}

#paypal_card_form .card-info-number,
#paypal_card_form .card-info-date-cvv {
	position: relative;
	text-align: left;
}

#paypal_card_form .card-info-date {
	width: 48%;
	float: left;
	margin-bottom: 0.5em;
}

#paypal_card_form .card-info-cvv {
	width: 48%;
	float: right;
	margin-bottom: 0.5em;
}

#paypal_card_form .card-info-number,
#paypal_card_form .card-info-date,
#paypal_card_form .card-info-cvv {
  transition: -webkit-transform 0.3s;
  transition: transform 0.3s;
  transition: transform 0.3s, -webkit-transform 0.3s;
}

#paypal_card_form .card-label {
	display: block;
	margin-bottom: 0.5em;
	text-transform: uppercase;
}

#paypal_card_form .card-input-container {
	position: relative;
	height: 2.75em;
	padding: 5px 10px;
	margin-bottom: 1em;
	background: rgba(255, 255, 255, 0.86);
	border: 1px solid #eee;
	border-radius: 2px;
}

#card_image {
	position: absolute;
	top: 0px;
	right: 2px;
	width: 44px;
	height: 28px;
	background-image: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/346994/card_sprite.png);
	background-size: 86px 458px;
	border-radius: 4px;
	background-position: -100px 0;
	background-repeat: no-repeat;
}

#card_image.visa {
	background-position: 0 -398px;
}

#card_image.master-card {
	background-position: 0 -281px;
}

#card_image.american-express {
	background-position: 0 -370px;
}

#card_image.discover {
	background-position: 0 -163px;
}

#card_image.maestro {
	background-position: 0 -251px;
}

#card_image.jcb {
	background-position: 0 -221px;
}

#card_image.diners-club {
	background-position: 0 -133px;
}

#paypal_button_submit {
	width: 100%;	
	padding: 1em 1em;
	color: #fff;
	background: #282c37;
	font-size: 15px;
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	border: 0;
	z-index: 0;
	opacity: 0.1;
	outline: 0;
	-webkit-appearance: none;
}

#paypal_button_submit:hover {
	background: #535b72;
}

#paypal_button_submit:active {
	-webkit-animation: cardIntro 200ms cubic-bezier(0.2, 1.3, 0.7, 1);
    animation: cardIntro 200ms cubic-bezier(0.2, 1.3, 0.7, 1);
}

#paypal_button_submit.show-button {
	opacity: 1;
	cursor: pointer;
}
<?php } ?>

#paypal_message {
	text-align: <?php echo $message_align; ?>;
}

#paypal_message_container {
	<?php if ($message_width) { ?>
	display: inline-block;
	width: <?php echo $message_width; ?>;
	<?php } ?>
}

#paypal_form .lds-spinner {
	display: inline-block;
	position: absolute;
	width: 64px;
	height: 64px;
	left: 50%;
	top: 50%;
	margin-left: -32px;
	margin-top: -32px;
}

#paypal_form .lds-spinner div {
	transform-origin: 32px 32px;
	animation: lds-spinner 1.2s linear infinite;
}

#paypal_form .lds-spinner div:after {
	content: " ";
	display: block;
	position: absolute;
	top: 3px;
	left: 29px;
	width: 5px;
	height: 14px;
	border-radius: 20%;
	background: #000;
}

#paypal_form .lds-spinner div:nth-child(1) {
	transform: rotate(0deg);
	animation-delay: -1.1s;
}

#paypal_form .lds-spinner div:nth-child(2) {
	transform: rotate(30deg);
	animation-delay: -1s;
}

#paypal_form .lds-spinner div:nth-child(3) {
	transform: rotate(60deg);
	animation-delay: -0.9s;
}

#paypal_form .lds-spinner div:nth-child(4) {
	transform: rotate(90deg);
	animation-delay: -0.8s;
}

#paypal_form .lds-spinner div:nth-child(5) {
	transform: rotate(120deg);
	animation-delay: -0.7s;
}

#paypal_form .lds-spinner div:nth-child(6) {
	transform: rotate(150deg);
	animation-delay: -0.6s;
}

#paypal_form .lds-spinner div:nth-child(7) {
	transform: rotate(180deg);
	animation-delay: -0.5s;
}

#paypal_form .lds-spinner div:nth-child(8) {
	transform: rotate(210deg);
	animation-delay: -0.4s;
}

#paypal_form .lds-spinner div:nth-child(9) {
	transform: rotate(240deg);
	animation-delay: -0.3s;
}

#paypal_form .lds-spinner div:nth-child(10) {
	transform: rotate(270deg);
	animation-delay: -0.2s;
}

#paypal_form .lds-spinner div:nth-child(11) {
	transform: rotate(300deg);
	animation-delay: -0.1s;
}

#paypal_form .lds-spinner div:nth-child(12) {
	transform: rotate(330deg);
	animation-delay: 0s;
}

#paypal_form .hidden {
	display: none;
}

@keyframes lds-spinner {
	0% {
		opacity: 1;
	}
	100% {
		opacity: 0;
	}
}

</style>
<div id="paypal_form">
	<?php if ($message_status) { ?>
	<div id="paypal_message"><div id="paypal_message_container"><div data-pp-message data-pp-placement="<?php echo $message_placement; ?>" data-pp-amount="<?php echo $message_amount; ?>" data-pp-style-layout="<?php echo $message_layout; ?>" <?php if ($message_layout == 'text') { ?>data-pp-style-text-color="<?php echo $message_text_color; ?>" data-pp-style-text-size="<?php echo $message_text_size; ?>"<?php } else { ?>data-pp-style-color="<?php echo $message_flex_color; ?>" data-pp-style-ratio="<?php echo $message_flex_ratio; ?>"<?php } ?>></div></div></div>
	<?php } ?>
	<?php if ($express_status) { ?>
	<div id="paypal_express_button" class="buttons clearfix"><div id="paypal_express_button_container"></div></div>
	<?php } ?>
	<?php if ($card_status) { ?>
	<div id="paypal_card" class="hidden">
		<form id="paypal_card_form" class="well">
			<div class="card-info-number clearfix">
				<label for="card_number" class="card-label"><?php echo $entry_card_number; ?></label>
				<div id="card_number" class="card-input-container"><div id="card_image"></div></div>
				
			</div>
			<div class="card-info-date-cvv clearfix">
				<div class="card-info-date">
					<label for="expiration_date" class="card-label"><?php echo $entry_expiration_date; ?></label>
					<div id="expiration_date" class="card-input-container"></div>
				</div>
				<div class="card-info-cvv">
					<label for="cvv" class="card-label"><?php echo $entry_cvv; ?></label>
					<div id="cvv" class="card-input-container"></div>
				</div>
			</div>
			<button id="paypal_button_submit" class="btn" value="submit"><?php echo $button_pay; ?></button>
		</form>
	</div>
	<?php } ?>
	<div class="lds-spinner hidden"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
</div>
<script type="text/javascript">

function setupPayPal() {
	
	<?php if ($express_status) { ?>
	try {				
		// Render the PayPal button into #paypal_express_button_container
		paypal_sdk.Buttons({
			env: '<?php echo $environment; ?>',
			locale: '<?php echo $locale; ?>',
			style: {
				layout: 'vertical',
				size: '<?php echo $button_size; ?>',
				color: '<?php echo $button_color; ?>',
				shape: '<?php echo $button_shape; ?>',
				label: '<?php echo $button_label; ?>'
			},
			// Set up the transaction
			createOrder: function(data, actions) {
				paypal_order_id = false;
				
				$.ajax({
					method: 'post',
					url: 'index.php?route=payment/paypal/createOrder',
					data: {'checkout': 'express'},
					dataType: 'json',
					async: false,
					success: function(json) {						
						showPayPalAlert(json);
							
						paypal_order_id = json['paypal_order_id'];
					},
					error: function(xhr, ajaxOptions, thrownError) {
						console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
					
				return paypal_order_id;	
			},
			// Finalize the transaction
			onApprove: function(data, actions) {			
				// Call your server to save the transaction
				restart = false;
				
				$.ajax({
					method: 'post',
					url: 'index.php?route=payment/paypal/approveOrder',
					data: {'checkout': 'express', 'paypal_order_id': data.orderID},
					dataType: 'json',
					async: false,
					success: function(json) {							
						showPayPalAlert(json);
						
						if (json['restart']) {
							restart = json['restart'];
						}
							
						if (json['success']) {
							location = json['success'];
						}
					},
					error: function(xhr, ajaxOptions, thrownError) {
						console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
					}
				});
				
				if (restart) {
					return actions.restart();
				}
			}
		}).render('#paypal_express_button_container');
	} catch (error) {
		console.error('PayPal Express failed during startup', error);
	}
	<?php } ?>
	
	<?php if ($card_status) { ?>	
	try {
		// Check if card fields are eligible to render for the buyer's country. The card fields are not eligible in all countries where buyers are located.
		if (paypal_sdk.HostedFields.isEligible() === true) {
			$('#paypal_card').removeClass('hidden');
			
			var paypal_card_form = document.querySelector('#paypal_card_form');
			var paypal_button_submit = document.querySelector('#paypal_button_submit');
			
			paypal_sdk.HostedFields.render({
				styles: {
					'input': {
						'color': '#282c37',
						'transition': 'color 0.1s',
						'line-height': '3'
					},
					'input.invalid': {
						'color': '#E53A40'
					},
					':-ms-input-placeholder': {
						'color': 'rgba(0,0,0,0.6)'
					},
					':-moz-placeholder': {
						'color': 'rgba(0,0,0,0.6)'
					}
				},
				fields: {
					number: {
						selector: '#card_number',
						placeholder: '#### #### #### ####'
					},
					cvv: {
						selector: '#cvv',
						placeholder: '###'
					},
					expirationDate: {
						selector: '#expiration_date',
						placeholder: 'MM / YYYY'
					}
				},
				createOrder: function(data, actions) {
					paypal_order_id = false;
					
					$.ajax({
						method: 'post',
						url: 'index.php?route=payment/paypal/createOrder',
						data: {'checkout': 'card'},
						dataType: 'json',
						async: false,
						success: function(json) {							
							showPayPalAlert(json);
							
							paypal_order_id = json['paypal_order_id'];
						},
						error: function(xhr, ajaxOptions, thrownError) {
							console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
						}
					});
					
					return paypal_order_id;
				}
			}).then(function(hostedFieldsInstance) {
				hostedFieldsInstance.on('blur', function (event) {
					console.log('CCF Event "blur", state=' + hostedFieldsInstance.getState() + ', event=' + event);
				});
				
				hostedFieldsInstance.on('focus', function (event) {
					console.log('CCF Event "focus", state=' + hostedFieldsInstance.getState() + ', event=' + event);
				});

				hostedFieldsInstance.on('validityChange', function (event) {
					console.log('CCF Event "validityChange", state=' + hostedFieldsInstance.getState() + ',event=' + event);
					
					// Check if all fields are valid, then show submit button
					var formValid = Object.keys(event.fields).every(function (key) {
						return event.fields[key].isValid;
					});

					if (formValid) {
						$('#paypal_button_submit').addClass('show-button');
					} else {
						$('#paypal_button_submit').removeClass('show-button');
					}
				});

				hostedFieldsInstance.on('notEmpty', function (event) {
					console.log('CCF Event "notEmpty", state=' + hostedFieldsInstance.getState() + ', event=' + event);
				});
       
				hostedFieldsInstance.on('empty', function (event) {
					console.log('CCF Event "empty", state=' + hostedFieldsInstance.getState() + ',event=' + event);
            
					$(paypal_card_form).removeClass().addClass('well');
					$('#card_image').removeClass();
				});

				hostedFieldsInstance.on('cardTypeChange', function (event) {
					console.log('CCF Event "cardTypeChange", state=' + hostedFieldsInstance.getState() + ',event=' + event);
					
					$(paypal_card_form).removeClass().addClass('well');
					$('#card_image').removeClass();
					
					// Change card bg depending on card type
					if (event.cards.length === 1) {
						$(paypal_card_form).addClass(event.cards[0].type);
						$('#card_image').addClass(event.cards[0].type);
						
						// Change the CVV length for AmericanExpress cards
						if (event.cards[0].code.size === 4) {
							hostedFieldsInstance.setAttribute({
								field: 'cvv',
								attribute: 'placeholder',
								value: '####'
							});
						} else {
							hostedFieldsInstance.setAttribute({
								field: 'cvv',
								attribute: 'placeholder',
								value: '###'
							});
						}
					} else {												
						hostedFieldsInstance.setAttribute({
							field: 'cvv',
							attribute: 'placeholder',
							value: '###'
						});
					}
				});
			
				paypal_button_submit.addEventListener('click', function (event) {
					event.preventDefault();
					
					if ($('#paypal_button_submit').hasClass('show-button')) {
						console.log('CCF Event "click", state=' + hostedFieldsInstance.getState() + ',event=' + event);

						showPayPalAlert({wait: true});
					
						hostedFieldsInstance.submit({
							// Need to specify when triggering 3D Secure authentication
							<?php if ($secure_status) { ?>
							contingencies: ['3D_SECURE']
							<?php } ?>
						
						}).then(function (payload) {
							console.log(payload);
							console.log('PayPal CCF submitted:', payload);
						
							$.ajax({
								method: 'post',
								url: 'index.php?route=payment/paypal/approveOrder',
								data: {'checkout': 'card', 'payload': JSON.stringify(payload)},
								dataType: 'json',
								async: false,
								success: function(json) {					
									showPayPalAlert(json);
								
									if (json['success']) {
										location = json['success'];
									}
								},
								error: function(xhr, ajaxOptions, thrownError) {
									console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
								}
							});
						});
					}
				}, false);
			});
		} else {
			console.log('Not eligible for CCF');
		}
	} catch (error) {
		console.error('PayPal Card failed during startup', error);
	}
	<?php } ?>
}

function showPayPalAlert(json) {
	$('#paypal_form .alert').remove();
	$('#paypal_form .lds-spinner').addClass('hidden');
		
	if (json['wait']) {		
		$('#paypal_form .lds-spinner').removeClass('hidden');
	}
	
	if (json['error']) {
		if (json['error']['warning']) {
			$('#paypal_form').prepend('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i><button type="button" class="close" data-dismiss="alert">&times;</button> ' + json['error']['warning'] + '</div>');
		}
	}
}

function paypalReady() {
	if (typeof paypal_sdk === 'undefined') {
		setTimeout(paypalReady, 100);
	} else {
		setupPayPal();
	}
}

if (typeof paypal_sdk === 'undefined') {
	var script = document.createElement('script');
	script.type = 'text/javascript';
	script.src = 'https://www.paypal.com/sdk/js?components=buttons,hosted-fields,messages&client-id=<?php echo $client_id; ?>&merchant-id=<?php echo $merchant_id; ?>&currency=<?php echo $currency_code; ?>&intent=<?php echo $transaction_method; ?><?php if ($button_enable_funding) { ?>&enable-funding=<?php echo implode(',', $button_enable_funding); ?><?php } ?><?php if ($button_disable_funding) { ?>&disable-funding=<?php echo implode(',', $button_disable_funding); ?><?php } ?>';
	script.setAttribute('data-partner-attribution-id', '<?php echo $partner_attribution_id; ?>');
	script.setAttribute('data-client-token', '<?php echo $client_token; ?>');
	script.setAttribute('data-namespace', 'paypal_sdk');
	script.async = false;
	script.onload = paypalReady();
	
	var paypal_form = document.querySelector('#paypal_form');
	paypal_form.appendChild(script);
} else {
	setupPayPal();
}

</script>