class Card < ApplicationRecord
  validates :deck_id, :question, :answer, :presence => true

  belongs_to :deck
  has_many :guesses

  # def answered?
  #   guesses.empty?
  # end

end
