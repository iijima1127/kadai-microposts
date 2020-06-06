class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  #課題で追加
  has_many :reverses_of_favorite, class_name: "Favorite", foreign_key: "micropost_id"
  has_many :likers, through: :reverses_of_favorite, source: :user
end 
