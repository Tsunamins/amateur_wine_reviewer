class User < ActiveRecord::Base
    has_secure_password

    has_many :reviews, :ratings
    has_many :wines, through :ratings


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