class User < ApplicationRecord

  has_many :comments ,dependent: :destroy 
  enum role: {"user":0,"admin":1} 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
 