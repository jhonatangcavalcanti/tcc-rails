class Employee < ApplicationRecord
  has_many :allocations, inverse_of: :employee
  has_many :rooms, through: :allocations

  has_many :positions
  has_many :job_positions, through: :positions
end
