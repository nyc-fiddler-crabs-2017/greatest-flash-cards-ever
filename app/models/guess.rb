class Guess < ApplicationRecord
  validates :card_id, :round_id, :user_input, :presence => true

  belongs_to :card
  belongs_to :round
  before_save :validate_first_try

  def correct?
    card.answer == user_input
  end

  def validate_first_try
    if correct? && Guess.where(card_id: self.card_id, round_id: self.round_id).empty?
      self.first_try = true
    else
      self.first_try = false
    end
  end
end
