class Tutorial < ActiveRecord::Base

	#validates
	  validates_presence_of :title, :description, :user_id

	#relations
	  belongs_to :user
	  has_many :stages

end