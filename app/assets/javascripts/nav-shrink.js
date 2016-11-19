(function(){

	$(document).on("scroll", function(){
		if
			($(document).scrollTop() > 20){
				$("header").addClass("shrink");
		} else {
			$("header").removeClass("shrink");
		}
	});

})();