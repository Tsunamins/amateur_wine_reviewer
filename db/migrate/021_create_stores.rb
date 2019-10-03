class CreateStores < ActiveRecord::Migration[5.2]
    def change
      create_table :stores do |t|
        t.string :store_name
        t.string :location       
		
        t.belongs_to :wine, foreign_key: true
        
        
  
        t.timestamps null: false
      end
    end
  end