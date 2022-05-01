class Employee < ApplicationRecord
  belongs_to :job_position, inverse_of: :employees

  has_many :allocations, inverse_of: :employee
  accepts_nested_attributes_for :allocations, allow_destroy: true
end
