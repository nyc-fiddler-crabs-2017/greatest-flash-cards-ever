class Deck < ApplicationRecord
  has_many :cards

  def length
    cards.length
  end

end
