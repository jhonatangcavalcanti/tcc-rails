class Ramal < ApplicationRecord
  has_many :allocations, inverse_of: :ramal
  accepts_nested_attributes_for :allocations, allow_destroy: true

  def title
    self.number
  end
end
