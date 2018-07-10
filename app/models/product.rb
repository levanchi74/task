class Product < ApplicationRecord
  belongs_to :category
  has_many :comments,dependent: :destroy 
  has_many :photos,inverse_of: :product
  accepts_nested_attributes_for :photos ,reject_if: :all_blank, allow_destroy: true
end
