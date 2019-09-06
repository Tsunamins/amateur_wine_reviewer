class User < ActiveRecord::Base
    has_many :reviews    
    has_many :wines, through: :reviews
    
    has_many :liked_reviews
    has_many :likes, through: :liked_reviews, source: :review

    accepts_nested_attributes_for :reviews

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