class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :wine

    validates :title, presence: true
    validates :title, length: { maximum: 50 }
    validates :description, length: { maximum: 1000 }
    validates :description, length: { minimum: 100 }
    validates :fruit, length: { maximum: 100 }
    validates :tannin, length: { maximum: 100 }

    validates :color, numericality: {only_float: true, greater_than_or_equal_to: 0, less_than: 6}
    validates :taste, numericality: {only_float: true, greater_than_or_equal_to: 0, less_than: 6}
    validates :balance_rating, numericality: {only_float: true, greater_than_or_equal_to: 0, less_than: 6}
    validates :wine_experience, numericality: {only_float: true, greater_than_or_equal_to: 0, less_than: 6}
    validates :someone_else_like, numericality: {only_float: true, greater_than_or_equal_to: 0, less_than: 6}

   
end