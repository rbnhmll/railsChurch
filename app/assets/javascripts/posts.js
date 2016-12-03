var PostsController = Paloma.controller('Posts');

PostsController.prototype.new = function(){
	(function(){
		// Launch Froala Rich text editor
		$('#edit').froalaEditor();

	})();
};

PostsController.prototype.edit = function(){
	(function(){
		// Launch Froala Rich text editor
		$('#edit').froalaEditor();

	})();
};

PostsController.prototype.show = function(){
	(function(){
		// Launch Rainbow.js syntax highlighting
		Rainbow.color(function () {
			console.log("highlight");
		});
	})();
};
