class Deck < ApplicationRecord
  validates :category, :presence => true

  has_many :cards

  def length
    cards.length
  end

end
