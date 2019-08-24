class AddForeignKeysToReviews < ActiveRecord::Migration[5.2]
    def change
      
      add_foreign_key :reviews, :users
      add_foreign_key :reviews, :wines
    end
  end