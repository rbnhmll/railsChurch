class Post < ActiveRecord::Base
	has_attached_file :lead_image,
		:default_url => "_.jpg",
		styles: {
			medium: "300x300>",
			thumb: "100x100>" }
  validates_attachment_content_type :lead_image, content_type: /\Aimage\/.*\z/

	belongs_to :user

end
