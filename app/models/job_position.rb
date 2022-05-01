class JobPosition < ApplicationRecord
  has_many :employees, inverse_of: :job_position
  accepts_nested_attributes_for :employees, allow_destroy: true
end
