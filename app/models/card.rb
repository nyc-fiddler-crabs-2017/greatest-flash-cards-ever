class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses

  def answered?
    guesses.any? { |guess| guess.correct? }
  end
  
end
