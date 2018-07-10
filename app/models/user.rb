class User < ApplicationRecord

  has_many :comments ,dependent: :destroy 
  #has_many :comments, as: :commentable
  enum role: {"user":0,"admin":1} 
  after_initialize do
    if self.new_record?
      self.role ||= :user
    end
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
 