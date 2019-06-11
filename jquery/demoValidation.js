$().ready(function() {
	$("#demoForm").validate({
		rules: {
			"user": {
				required: true,
				maxlength: 15
			},
			"password": {
				required: true,
				validatePassword: true,
				minlength: 8
			},
			"re-password": {
				equalTo: "#password",
				minlength: 8
			}
		},
		messages: {
			"user": {
				required: "Bắt buộc nhập username",
				maxlength: "Hãy nhập tối đa 15 ký tự"
			},
			"password": {
				required: "Bắt buộc nhập password",
				minlength: "Hãy nhập ít nhất 8 ký tự"
			},
			"re-password": {
				equalTo: "Hai password phải giống nhau",
				minlength: "Hãy nhập ít nhất 8 ký tự"
			}
		}
	});
		$.validator.addMethod("validatePassword", function (value, element) {
            return this.optional(element) || /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,16}$/i.test(value);
        }, "Hãy nhập password từ 8 đến 16 ký tự bao gồm chữ hoa, chữ thường và ít nhất một chữ số");
});