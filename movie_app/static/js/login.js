$(function(){
	$(".go_login").click(function(){
		$(".test").show()
	})

	$(".regest_close").click(function(){
		$(".test").hide()
	})

	$("#regest_btn").click(function () {
		var username0 = $("#username0").val()
		var password0 = $("#password0").val()
		var password1 = $("#password1").val()
		var email = $("#email").val()
		var tel = $("#tel").val()
		$.ajax({
			url: "/movie/regest",
			data: {
				"username0":username0,
				"password0":password0,
				"password1":password1,
				"email":email,
				"tel":tel,
			},
			success:function (result) {
				if (result=="注册成功") {
						//添加cookie,并刷新页面
					$.cookie("USERNAME",username0,{path:"/"})
					window.location.reload()
				}else {
					alert(result)
				}
			}
		})
	})

	$(".to_login").click(function(){
		$(".mask").show()
	})
	
	$(".login_close").click(function(){
		$(".mask").hide()
	})

	$("#login_btn").click(function () {
		var username = $("#username").val()
		var password = $("#password").val()
		$.ajax({
			url:"/movie/login",
			data:{
				"username": username,
				"password": password
			},
			success:function (result) {
				if(result=="登录成功"){
					//添加cookie,并刷新页面
					$.cookie("USERNAME",username,{path:"/"})
					window.location.reload()
				}else {
					alert(result)
				}
			}
		})
	})
})
