class CreateWines < ActiveRecord::Migration[5.2]
    def change
      create_table :wines do |t|
        t.string :wine_name
        t.string :vineyard
        t.string :winemaker        
        t.string :story
        t.string :grape
        t.string :region
        t.string :style
        t.integer :vintage
        t.integer :alcohol
        t.string :image
        
  
        t.timestamps null: false
      end
    end
  end