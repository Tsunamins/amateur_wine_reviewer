class CreateUsers < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.string :username
        t.string :email
        t.string :password_digest
        t.string :favorite_wine
        t.date :birthdate
        t.string :image
        t.string :uid
  
        t.timestamps null: false
      end
    end
  end