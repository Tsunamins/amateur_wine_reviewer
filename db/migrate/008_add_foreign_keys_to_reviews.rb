class AddForeignKeysToReviews < ActiveRecord::Migration[5.2]
    def change
      add_reference :reviews, :user, foreign_key: true
      add_reference :reviews, :wine, foreign_key: true
      # add_foreign_key :reviews, :users
      # add_foreign_key :reviews, :wines
    end
  end