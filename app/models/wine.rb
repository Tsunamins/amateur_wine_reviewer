class Wine < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    validates :vintage, length: { is: 4 }
    validates :wine_name, length: { maximum: 100 }
    validates :alcohol, length: { maximum: 5 } 
    validates :story, length: { maximum: 1000 } 
end 