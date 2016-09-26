# [Rails Church!](http://www.railschurch.com)
## A blog for rails tips and tricks

### Functionality Structure

#### Model::Post
	* belongs_to :user
	* Title
	* Content
	*

#### Model::User
	* has_many :posts

#### Model::MailingList