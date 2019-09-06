class ChangeRatingsColumnsToFloat < ActiveRecord::Migration[5.2]
    def change
      change_column :reviews, :color, :float
      change_column :reviews, :taste, :float
      change_column :reviews, :balance_rating, :float
      change_column :reviews, :wine_experience, :float
      change_column :reviews, :someone_else_like, :float
      change_column :reviews, :total, :float
    end
  end