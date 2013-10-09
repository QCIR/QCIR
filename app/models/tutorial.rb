#encoding: utf-8
class Tutorial < ActiveRecord::Base

  #validates
    validates_presence_of :title, :description, :user_id

  #relations
    belongs_to :user
    has_many :stages
    has_many :comments

  def moderation_status
    return "Não Postada"  if status == 0
    return "Não moderada" if status == 1
    return "Moderando"    if status == 2
    return "Publicada"    if status == 3
    return "Rejeitada"    if status == 4
  end
end