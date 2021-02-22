$(function(){
	var switch_status = false
	var bs_timer = ""
	var second = 0
	IframeOnClick.track(document.getElementById("iFrame"), function() {
		bs_timer = setInterval(function() {
			second++
			$(".bulletscreen_controller").fadeIn(1000)
		}, 1000)
	});

	//弹幕开关按钮效果
	$(".switch_bg").click(function(){
		if(switch_status){
			$(".switch").animate({
				"left":"0px"
			},100)
			$(".switch_bg").css("backgroundColor","#666")
			$(".bullteScreen").hide()
		    switch_status = false			
		} else {
			$(".switch").animate({
				"left":"20px"
			},100)
			$(".switch_bg").css("backgroundColor","palevioletred")
			$(".bullteScreen").show()
		    switch_status = true			
		}
	})
	//发送按钮状态切换
	$("#bs_content").bind('input propertychange',function(){
		if($("#bs_content").val()!=""){
			$("#send_btn").removeClass("disable").addClass("enable")
		}
		else{
			$("#send_btn").removeClass("enable").addClass("disable")
		}
	})

	$("#send_btn").click(function () {
        if ($(this).attr("class") == "send enable") {
            var m_id = $("#m_id").val()
            var content = $("#bs_content").val()
            $.ajax({
                url: "/movie/sendBullet",
                data: {
                    "m_id": m_id,
                    "second": second+2,
                    "content": content
                },
                success: function (result) {
                    $("#bs_content").val("")
                    $("#send_btn").removeClass("enable").addClass("disable")
                }
            })
        }
    })

	setInterval(function () {
        var m_id = $("#m_id").val()
		var height = $(".bullteScreen").height()-100
        $.ajax({
            url: "/movie/getBullet",
            data: {
                "m_id": m_id,
                "second": second,
            },
            dataType: "json",
            success: function (result) {
                if (result.length!= 0) {
                    for (var i = 0; i < result.length; i++) {
                        var bullet = $("<p class='bs'></p>")
						var top = Math.floor(Math.random()*height)
                        var color = randomColor()
                        bullet.text(result[i].c_content)
                        bullet.css("top", top)
                        bullet.css("color", color)
                        $(".bullteScreen").append(bullet)
                        var ms = (Math.floor(Math.random() * 3) + 20)*1000
                        bullet.animate({
                            "left": "-100%"
                        }, ms, 'linear', function () {
                            bullet.remove()
                        })
                    }
                }
            }
        })
    }, 1000)

	// setInterval(function(){
	// 	//获取幕布高度，并为了全部显示在幕布中，要减去一个bs的高度
	// 	var height = $(".bullteScreen").height()-100
	// 	for(var i=0;i<Math.random()*5;i++){
    //          //生成一个bs标签
	// 	    var bs = $("<p class='bs'></p>")
	// 	    bs.text("嘿嘿嘿")
	// 	    bs.css("top", Math.random()*height)
	// 	    bs.css("color", randomColor())
	// 	    //将弹幕添加到幕布上
	// 	    $(".bullteScreen").append(bs)
	// 	    bs.animate(
	// 		   {"left":"-100%"},
	// 		    Math.floor(Math.random()*3+20)*1000,
	// 		    'linear',
	// 		    function(){
	// 			     bs.remove()
	// 		    }
	// 		)
	// 	}
	// },1000)

})
