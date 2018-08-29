class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :ticker
      t.integer :amount

      t.timestamps null: false
    end
  end
end
