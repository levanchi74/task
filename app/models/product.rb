class Product < ApplicationRecord
  belongs_to :category
  has_many :comments,dependent: :destroy 
  # has_many :comments, as: :commentable #Polimorphic
  has_many :photos
  accepts_nested_attributes_for :photos ,allow_destroy: true

end
