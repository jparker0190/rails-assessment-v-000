class Stock < ActiveRecord::Base
  has_many :portfolios
  has_many :users, through: :portfolios
  accepts_nested_attributes_for :portfolios
end
