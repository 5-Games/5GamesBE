class User < ApplicationRecord
  # has_secure_password authenticates passwords with bcrypt
  has_secure_password

  # Make sure all user names are unique
  validates :username, uniqueness: true

end