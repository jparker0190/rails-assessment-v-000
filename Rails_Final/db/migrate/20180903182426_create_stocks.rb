class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.belongs_to :user
      t.belongs_to :portfolio

      t.timestamps null: false
    end
  end
end
