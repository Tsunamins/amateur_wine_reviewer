class CreateLikedReviews < ActiveRecord::Migration[5.2]
    def change
      create_table :liked_reviews do |t|
       
        t.belongs_to :user, index: true, foreign_key: true
        t.belongs_to :review, index: true, foreign_key: true
  
        t.timestamps null: false
      end
    end
  end