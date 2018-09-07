class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :stocks
  has_many :portfolios, through: :stocks
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
