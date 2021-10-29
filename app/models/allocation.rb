class Allocation < ApplicationRecord
  belongs_to :employee, inverse_of: :allocations
  belongs_to :allocation_role, inverse_of: :allocations

  has_many :allocation_ramals, inverse_of: :allocation
  has_many :ramals, through: :allocation_ramals
  accepts_nested_attributes_for :allocation_ramals, allow_destroy: true

  has_many :allocation_places, inverse_of: :allocation
  has_many :places, through: :allocation_places
  accepts_nested_attributes_for :allocation_places, allow_destroy: true

  def title
    self.employee && self.allocation_role ? "#{self.employee.name} | #{self.allocation_role.name}" : ""
  end
end
