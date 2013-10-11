#encoding: utf-8
class Tutorial < ActiveRecord::Base

  #validates
    validates_presence_of :title, :description, :user_id

  #relations
    belongs_to :user
    has_many :stages
    has_many :comments

  def moderation_status
    case status
      when 0
        return "Não postada"
      when 1
        return "Não moderada"
      when 2
        return "Moderando"
      when 3
        return "Publicada"
      when 4
        return "Rejeitada"
      else
        return "Erro! - #{status}"
    end
  end
end