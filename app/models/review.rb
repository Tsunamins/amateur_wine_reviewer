class Review < ActiveRecord::Base
    belongs_to :user, :wine
    has_many :ratings
    has_many :wines, through: :ratings
end