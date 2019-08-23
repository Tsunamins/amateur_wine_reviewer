class Rating < ActiveRecord::Base
    has_many :users
    
end