class AllocationRamal < ApplicationRecord
  belongs_to :allocation, inverse_of: :allocation_ramals
  belongs_to :ramal, inverse_of: :allocation_ramals

  def title
    self.allocation && self.ramal ? "#{self.allocation.title} - #{self.ramal.title}" : ""
  end
end
