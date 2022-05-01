class Employee < ApplicationRecord
  has_many :allocations, inverse_of: :employee
  accepts_nested_attributes_for :allocations, allow_destroy: true

  # has_many :positions, inverse_of: :employee
  # has_many :job_positions, through: :positions
  # accepts_nested_attributes_for :positions, allow_destroy: true

  belongs_to :job_position, inverse_of: :employees


end
