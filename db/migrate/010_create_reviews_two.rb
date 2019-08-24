class CreateReviewsTwo < ActiveRecord::Migration[5.2]
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
		
		t.integer :color
        t.integer :taste
        t.integer :balance_rating
        t.integer :wine_experience
        t.integer :someone_else_like
        t.integer :total

        t.belongs_to :user, foreign_key: true
        t.belongs_to :wine, foreign_key: true
        
        
  
        t.timestamps null: false
      end
    end
  end