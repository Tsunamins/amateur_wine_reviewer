class Wine < ActiveRecord::Base
    has_many :reviews
    
    has_many :users, through: :reviews

    accepts_nested_attributes_for :reviews

    validates :wine_name, presence: true
    
    validates :vintage, length: { is: 4 }
    validates :wine_name, length: { maximum: 100 }
    validates :winemaker, length: { maximum: 100 }
    validates :vineyard, length: { maximum: 100 }
    validates :region, length: { maximum: 100 }
    validates :alcohol, length: { maximum: 5 } 
    validates :story, length: { maximum: 1000 }
    validate :wine_and_vintage 

   
    
    scope :styles, -> (style) {where(style: style)}
    def self.styles(style)
        where(style: style)
    end 
   

    def wine_and_vintage 
        wine = Wine.find_by(wine_name: wine_name, vintage: vintage)
        if !!wine && wine != self 
            errors.add(:vintage, 'has been added, choose a different wine or different vintage')
        end 
    end 
end 