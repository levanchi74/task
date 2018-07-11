class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :images, as: :imageable 
end
