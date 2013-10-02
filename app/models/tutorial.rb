class Tutorial < ActiveRecord::Base

	#validates
	  validates_presence_of :title, :description, :user_id, :tag_ids

	#relations
	  belongs_to :user
	  has_many :comments
	  has_many :stages
	  has_and_belongs_to_many :tags

end