class Portfolio < ActiveRecord::Base
  has_many :stocks
  has_many :users, through: :stocks
end
