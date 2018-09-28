class Portfolio < ActiveRecord::Base
  has_many :portfolio_stocks
  has_many :stocks, through: :portfolio_stocks
end
