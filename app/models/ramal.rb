class Ramal < ApplicationRecord
  has_many :allocation_ramals, inverse_of: :ramal
  has_many :allocations, through: :allocation_ramals
  accepts_nested_attributes_for :allocation_ramals, allow_destroy: true

  def title
    self.number
  end
end
