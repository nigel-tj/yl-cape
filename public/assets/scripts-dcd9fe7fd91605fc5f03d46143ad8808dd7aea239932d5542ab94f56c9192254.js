$(document).ready(function(){$(".carousel").carousel("cycle"),$("#nav").affix({offset:{top:$("header").height()-$("#nav").height()}}),$("body").scrollspy({target:"#nav"}),$(".scroll-top").click(function(){$("body,html").animate({scrollTop:0},1e3)}),$("#nav .navbar-nav li>a").click(function(){var a=$(this).attr("href"),t=$(a).offset().top;$("body,html").animate({scrollTop:t},700)}),$(".panel .img-responsive").on("load",function(){}).each(function(a){if(this.complete){var t=$('<div class="item"></div>'),e=$(this).parent("a"),l=$(this).parent("a").attr("title");t.attr("title",l),$(e.html()).appendTo(t),t.appendTo("#modalCarousel .carousel-inner"),0==a&&t.addClass("active")}}),$("#modalCarousel").carousel({interval:!1}),$("#modalCarousel").on("slid.bs.carousel",function(){$(".modal-title").html($(this).find(".active").attr("title"))}),$(".panel-thumbnail>a").click(function(a){a.preventDefault();var t=$(this).parents(".panel").parent().index(),e=parseInt(t);return $("#myModal").modal("show"),$("#modalCarousel").carousel(e),!1})});