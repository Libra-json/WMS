var Login = function() {
	"use strict";
	
	
	
	var runSetDefaultValidation = function() {
		$.validator.setDefaults({
			errorElement : "span", // contain the error msg in a small tag
			errorClass : 'help-block',
			errorPlacement : function(error, element) {// render error placement for each input type
				if (element.attr("type") == "radio" || element.attr("type") == "checkbox") {// for chosen elements, need to insert the error after the chosen container
					error.insertAfter($(element).closest('.form-group').children('div').children().last());
				} else if (element.attr("name") == "card_expiry_mm" || element.attr("name") == "card_expiry_yyyy") {
					error.appendTo($(element).closest('.form-group').children('div'));
				} else {
					error.insertAfter(element);
					// for other inputs, just perform default behavior
				}
			},
			ignore : ':hidden',
			success : function(label, element) {
				label.addClass('help-block valid');
				// mark the current input as valid and display OK icon
				$(element).closest('.form-group').removeClass('has-error');
			},
			highlight : function(element) {
				$(element).closest('.help-block').removeClass('valid');
				// display OK icon
				$(element).closest('.form-group').addClass('has-error');
				// add the Bootstrap error class to the control group
			},
			unhighlight : function(element) {// revert the change done by hightlight
				$(element).closest('.form-group').removeClass('has-error');
				// set error class to the control group
			}
		});
	};
	var runLoginValidator = function() {
		var form = $('.form-login');
		var errorHandler = $('.errorHandler', form);
		form.validate({
			rules : {
				u_name : {
					required : true,
					minlength : 2,
					maxlength : 11
				},
				u_pwd : {
					required : true,
					minlength : 6,
					maxlength : 20
				},
				u_yzm : {
					required : true,
					minlength : 4,
					maxlength : 4
				}
			},messages:{
				u_name: {
					required: '请输入你的用户名/手机号.',
					minlength : '最少输入2个字符',
					maxlength : '最多输入11个字符'
					
				},
				
				u_pwd: {
					required: '请输入你的密码.',
					minlength : '最少输入6个字符',
					maxlength : '最多输入20个字符'
				},
				
				u_yzm: {
					required: '请输入你的验证码.',
					minlength : '最少输入4个字符',
					maxlength : '最多输入4个字符'
				},
			},submitHandler : function(form) {
				errorHandler.hide();
				form.submit();
			},
			invalidHandler : function(event, validator) {//display error alert on form submit
				errorHandler.show();
			}
		});
	};
	var runForgotValidator = function() {
		var form2 = $('.form-forgot');
		var errorHandler2 = $('.errorHandler', form2);
		form2.validate({
			rules : {
				email : {
					required : true
				}
			},
			submitHandler : function(form) {
				errorHandler2.hide();
				form2.submit();
			},
			invalidHandler : function(event, validator) {//display error alert on form submit
				errorHandler2.show();
			}
		});
	};
	var runRegisterValidator = function() {
		var form3 = $('.form-register');
		var errorHandler3 = $('.errorHandler', form3);
		form3.validate({
			rules : {
				full_name : {
					minlength : 2,
					required : true
				},
				address : {
					minlength : 2,
					required : true
				},
				city : {
					minlength : 2,
					required : true
				},
				gender : {
					required : true
				},
				email : {
					required : true
				},
				password : {
					minlength : 6,
					required : true
				},
				password_again : {
					required : true,
					minlength : 5,
					equalTo : "#password"
				},
				agree : {
					minlength : 1,
					required : true
				}
			},
			submitHandler : function(form) {
				errorHandler3.hide();
				form3.submit();
			},
			invalidHandler : function(event, validator) {//display error alert on form submit
				errorHandler3.show();
			}
		});
	};
	return {
		//main function to initiate template pages
		init : function() {
			runSetDefaultValidation();
			runLoginValidator();
			runForgotValidator();
			runRegisterValidator();
		}
	};
}();
