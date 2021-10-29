class AllocationPlace < ApplicationRecord
  belongs_to :allocation, inverse_of: :allocation_places
  belongs_to :place, inverse_of: :allocation_places

  def title
    self.allocation && self.place ? "#{self.allocation.title} | #{self.place.title}" : ""
  end
end
