$(function () {
    $(".search_bdn").click(function () {
        var keywords = $("#keywords").val()
        $.ajax({
            url:"/movie/search",
            data:{
                "keywords": keywords,
            },
            success:function (result) {
                $(".content").html(result)
            }
        })
    })

    $(".nav ul li").click(function () {
        var type = $(this).find("a").text()
        $.ajax({
            url:"/movie/classify",
            data:{
                "type": type,
            },
            success:function (result) {
                $(".content").html(result)
            }
        })
    })

})