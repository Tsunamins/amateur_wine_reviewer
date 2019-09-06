class Wine < ActiveRecord::Base
    has_many :reviews
    
    has_many :users, through: :reviews

    accepts_nested_attributes_for :reviews

    validates :wine_name, presence: true
    validates :wine_name, uniqueness: true
    validates :vintage, length: { is: 4 }
    validates :wine_name, length: { maximum: 100 }
    validates :winemaker, length: { maximum: 100 }
    validates :vineyard, length: { maximum: 100 }
    validates :region, length: { maximum: 100 }
    validates :alcohol, length: { maximum: 5 } 
    validates :story, length: { maximum: 1000 } 

    scope :rose, -> { where(style: 'rose') }
end 