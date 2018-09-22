class PortfolioStocks < ActiveRecord::Migration
  def change
    create_table :portfolio_stocks do |t|
      t.belongs_to :portfolios
      t.timestamps null: false
    end
  end
end
