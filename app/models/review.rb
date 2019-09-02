class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :wine

    #redo validations here
    #also adapt this: validates :stars, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 6}


    
end