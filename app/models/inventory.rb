class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventory_foods
  has_many :foods, through: :inventory_foods

  validates :name, presence: true, length: { maximum: 250 }
end
