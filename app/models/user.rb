class User < ActiveRecord::Base
  before_save { email.downcase! }

  validates :name, presence: true, length: { minimum: 3, maximum: 254 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 254 },
            format: { with: VALID_EMAIL_REGEX }, uniqueness:
            { case_sensitive: false }
  has_secure_password
  has_many :ratings
  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def to_s
    "name => #{name} email => #{email} password_digest => #{password_digest}
    password => #{password}"
  end
end
