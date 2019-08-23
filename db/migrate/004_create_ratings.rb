class CreateRatings < ActiveRecord::Migration[5.2]
    def change
      create_table :ratings do |t|
        t.integer :color
        t.integer :taste
        t.integer :balance
        t.integer :overall_like
        t.integer :someone_else_like
        t.integer :total
        
  
        t.timestamps null: false
      end
    end
  end