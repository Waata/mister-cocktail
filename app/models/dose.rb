class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description,
    :cocktail_id,
    :ingredient_id,
    presence: true,
    allow_blank: false
end
