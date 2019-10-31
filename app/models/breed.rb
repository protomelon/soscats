class Breed < ApplicationRecord
  has_many :cats

  validates :name, :description, :temperament, :origin, :stranger_friendly, presence: true
end
