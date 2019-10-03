class AddForeignKeyStoreToWine < ActiveRecord::Migration[5.2]
    def change
        add_reference :wines, :store, foreign_key: true
    end
  end