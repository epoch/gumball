class User < ActiveRecord::Base
  has_secure_password

  validates :username, :uniqueness => true
  validates :password_confirmation, :presence => true
end
