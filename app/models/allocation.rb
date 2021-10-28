class Allocation < ApplicationRecord
  belongs_to :employee, inverse_of: :allocations
  belongs_to :place, inverse_of: :allocations
  belongs_to :allocation_role, inverse_of: :allocations

  def title
    self.employee && self.allocation_role && self.place ? "#{self.employee.name} - #{self.allocation_role.name} - #{self.place.title}" : ""
  end
end
