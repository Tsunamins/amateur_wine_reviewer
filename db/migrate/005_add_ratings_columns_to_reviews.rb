class AddRatingsColumnsToReviews < ActiveRecord::Migration[5.2]
    def change
      add_column :reviews, :color, :integer 
      add_column :reviews, :taste, :integer 
      add_column :reviews, :balance_rating, :integer 
      add_column :reviews, :wine_experience, :integer 
      add_column :reviews, :someone_else_like, :integer 
      add_column :reviews, :total, :integer 

    end
  end