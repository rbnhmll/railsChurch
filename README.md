# [Rails Church!](http://www.railschurch.com)
*_A blog for rails tips-and-tricks_*

## Functionality Structure
	* Home page is index, with site summary on top.
	* Click through to detailed post

### Model::Post
	* belongs_to :user
	* Title :string
	* Content :text
		* truncate method for index view
	* Active :boolean

### Model::User
	* has_many :posts

<!-- #### Model::MailingList -->