class JobPosition < ApplicationRecord
  has_many :positions, inverse_of: :job_position
  has_many :employees, through: :positions
  accepts_nested_attributes_for :positions, allow_destroy: true
end
