class User < ApplicationRecord
  require "securerandom" #para q use el algoritmo bcrypt al guadar en la BD
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}
  validates :username, presence: true, uniqueness: true
end
