class Position < ApplicationRecord
  belongs_to :employee, inverse_of: :positions
  belongs_to :job_position, inverse_of: :positions

  def title
    self.employee && self.job_position ? "#{self.employee.name} - #{self.job_position.name}" : ""
  end
end
