class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  has_many :doses
  validates :cocktail, presence: true, uniqueness: {scope: :ingredient}
  validates :description, presence: true
end
