class User < ApplicationRecord
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true

  has_many :rounds
  has_many :guesses, through: :rounds
  has_many :decks, through: :rounds

  has_secure_password
end
