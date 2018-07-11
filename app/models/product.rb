class Product < ApplicationRecord
  belongs_to :category
  has_many :comments,dependent: :destroy 
  #has_many :images, as: :imageable  # using polymorphic
  has_many :photos,dependent: :destroy ,inverse_of: :product
  accepts_nested_attributes_for :photos , allow_destroy: true
end
