class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  # validates :ingredient, presence: true
  # validates :ingredient, uniqueness: true
  # validates :cocktail, presence: true
  # validates :cocktail, uniqueness: true

  validates_uniqueness_of :ingredient_id, :scope => [:cocktail_id]
end
