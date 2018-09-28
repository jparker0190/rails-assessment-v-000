class CreatePortfolioStocks < ActiveRecord::Migration
  def change
    create_table :portfolio_stocks do |t|

      t.timestamps null: false
    end
  end
end
