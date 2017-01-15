class Post < ActiveRecord::Base
	has_attached_file :lead_image,
		:default_url => "hero_pattern.png",
		styles: {
			full: "1200x1200",
			large: "800x800",
			medium: "400x400>",
			thumb: "100x100>" }
  validates_attachment_content_type :lead_image, content_type: /\Aimage\/.*\z/
  validates :content, presence: true
  validates :title, presence: true

	belongs_to :user
	has_one :contributor

	# A truncation  and sanitation method for Post.content
	def content_preview
		# Sanitize Post.content to remove HTML tags
		cp = Rails::Html::FullSanitizer.new.sanitize(self.content)
		# Shorten content to set char count
		cp.truncate(225, separator: ' ')
	end

	scope :active, -> {
	  where(:active => true)
	}

	scope :inactive, -> {
	  where(:active => false)
	}

end