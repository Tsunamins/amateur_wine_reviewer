class User < ActiveRecord::Base
    has_many :reviews
    has_many :wine_reviews, through: :reviews, source: :wine

    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :favorite_wine, length: { maximum: 100 }

    def self.from_omniauth(auth)
        where(email: auth.info.email).first_or_initialize do |user|
          user.username = auth.info.name
          user.email = auth.info.email
          user.password = SecureRandom.hex
        end
      end

end 