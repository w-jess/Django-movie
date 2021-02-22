$(function(){
	$(".movie_list li").click(function() {
		var m_id = $(this).find(".m_id").val()
		$.ajax({
			url: "/movie/info",
			data: {
				"m_id":m_id
			},
			success: function (result) {
				$(".movie_info").html(result)
				$(".info").animate({
					"left": "20%"
				}, 1000)
			}
		})
	})
	
	$(".info_close").click(function(){
		$(".info").animate({
			"left": "101%"
		},1000)
	})
})