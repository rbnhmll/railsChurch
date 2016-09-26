# [Rails Church!](http://www.railschurch.com)
*_A blog for rails tips and tricks_*

## Functionality Structure

#### Model::Post
	* belongs_to :user
	* Title
	* Content
	*

#### Model::User
	* has_many :posts

<!-- #### Model::MailingList -->