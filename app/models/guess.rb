class Guess < ApplicationRecord
  belongs_to :card
  belongs_to :round

  def correct?
    card.answer == input
  end

  # first_try = true if correct?

  

end
