class Wine < ActiveRecord::Base
    has_many :reviews, :ratings

end 