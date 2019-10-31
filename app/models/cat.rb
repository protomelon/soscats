class Cat < ApplicationRecord
  belongs_to :breed
  belongs_to :tree

  validates :name, :breed_id, :tree_id, presence: true
end
