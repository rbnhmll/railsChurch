class Contributor < ActiveRecord::Base
	has_attached_file :avatar,
		:default_url => "anon.jpg",
		styles: {
			large: "800x800",
			medium: "400x400>",
			thumb: "200x200>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :name, presence: true
  validates :bio, presence: true
end
