class Round < ApplicationRecord
  belongs_to :user
  belongs_to :deck
  has_many :guesses
  has_many :cards, through: :guesses

  def complete?
    deck.length == guesses.select{ |guess| guess.correct? }.length
  end

  # def first_try_correct
    # guesses.select{ |guess| }
  # end

end
