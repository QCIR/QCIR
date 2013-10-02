class Stage < ActiveRecord::Base

	#validates
	  validates_presence_of :subtitle, :content, :tutorial_id

	#relations
	  belongs_to :tutorial


end