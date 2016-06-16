class Message < ActiveRecord::Base
	has_many :comments

	validates :name, presence: true
	validates :email, presence: true,
		format: { :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i }
	validates :content, presence: true

end
