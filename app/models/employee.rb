class Employee < ApplicationRecord
  has_and_belongs_to_many :job_position
  has_and_belongs_to_many :room
end
