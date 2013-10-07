class Comment < ActiveRecord::Base

	validates_presence_of :body, :user_id, :tutorial_id
	belongs_to :user
  belongs_to :tutorial

end