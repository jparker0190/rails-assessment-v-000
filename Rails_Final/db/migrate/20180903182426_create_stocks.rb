class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.belongs_to :portfolio
      t.belongs_to :user
      t.text :symbol
      t.text :sector
      t.integer :high
      t.integer :low
      t.integer :price
      t.timestamps null: false
    end
  end
end
