class Cocktail < ActiveRecord::Base
  has_many :doses,
  dependent: :destroy

  validates :name,
  presence: true
end
