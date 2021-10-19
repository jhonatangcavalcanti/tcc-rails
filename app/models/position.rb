class Position < ApplicationRecord
  belongs_to :employee
  belongs_to :job_position
end
