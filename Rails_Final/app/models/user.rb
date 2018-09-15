class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :portfolios
  has_many :stocks, through: :portfolios

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
