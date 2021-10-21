class Position < ApplicationRecord
  belongs_to :employee
  belongs_to :job_position

  def title
    self.employee && self.job_position ? "#{self.employee.name} - #{self.job_position.name}" : ""
  end
end
