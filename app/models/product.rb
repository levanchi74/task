class Product < ApplicationRecord
  belongs_to :category
  has_many :comments,dependent: :destroy 
  # has_many :comments, as: :commentable

end
