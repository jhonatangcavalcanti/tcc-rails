class Allocation < ApplicationRecord
  belongs_to :employee, inverse_of: :allocations
  belongs_to :room, inverse_of: :allocations
  belongs_to :allocation_role, inverse_of: :allocations

  def title
    self.employee && self.allocation_role && self.room ? "#{self.employee.name} - #{self.allocation_role.name} - #{self.room.name}" : ""
  end
end
