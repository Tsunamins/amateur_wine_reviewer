class Wine < ActiveRecord::Base
    has_many :reviews, :ratings
    has_many :users, through :ratings

end 