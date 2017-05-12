class Round < ApplicationRecord
  validates :user_id, :deck_id, :presence => true


  belongs_to :user
  belongs_to :deck
  has_many :guesses
  has_many :cards, through: :guesses

  def complete?
    deck.length == guesses.select{ |guess| guess.correct? }.length
  end

  def first_try_correct
    guesses.count{ |guess| guess.first_try }
  end

  def total_guesses
    guesses.length
  end

  # def next_card
  #   cards.find { |card| !card.answered? }
  # end

  def unanswered_cards
    deck.cards - guesses.select{ |g| g.correct? }.map { |g| g.card }
  end

end
