class CreateReviews < ActiveRecord::Migration[5.2]
    def change
      create_table :reviews do |t|
        t.string :title
        t.string :description
        t.string :fruit
        t.string :tannin
        t.string :body
        t.string :balance
        t.string :acidity 
        t.string :flavors
        t.string :other
        
        
  
        t.timestamps null: false
      end
    end
  end