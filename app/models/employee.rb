class Employee < ApplicationRecord
  has_and_belongs_to_many :job_position
  has_many :allocations, dependent: :destroy
  has_many :rooms, through: :allocations
end
