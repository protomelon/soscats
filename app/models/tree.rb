class Tree < ApplicationRecord
  has_many :cats

  validates :botanical_name, :common_name, :neighbourhood, :diameter, :park,
            :location_class, :property_type, :x, :y, presence: true
end
