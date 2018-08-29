class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.text :security
      t.integer :amount

      t.timestamps null: false
    end
  end
end
