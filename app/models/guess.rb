class Guess < ApplicationRecord
  validates :card_id, :round_id, :user_input, :first_try, :presence => true

  belongs_to :card
  belongs_to :round

  def correct?
    card.answer == input
  end

  # first_try = true if correct?



end
