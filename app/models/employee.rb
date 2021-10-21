class Employee < ApplicationRecord
  has_many :allocations, inverse_of: :employee
  has_many :rooms, through: :allocations
  accepts_nested_attributes_for :allocations, allow_destroy: true

  has_many :positions, inverse_of: :employee
  has_many :job_positions, through: :positions
  accepts_nested_attributes_for :positions, allow_destroy: true
end
