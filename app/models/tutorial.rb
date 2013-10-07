#encoding: utf-8
class Tutorial < ActiveRecord::Base

  #validates
    validates_presence_of :title, :description, :user_id

  #relations
    belongs_to :user
    has_many :stages
    has_many :comments

  def moderation_status
    return "Não moderada" if status == 0
    return "Moderando"    if status == 1
    return "Moderada"     if status == 2
    return "Publicada"    if status == 3
  end
end