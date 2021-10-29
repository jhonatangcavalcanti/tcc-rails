class Place < ApplicationRecord
  belongs_to :room, inverse_of: :places
  belongs_to :department, inverse_of: :places

  has_many :allocations, inverse_of: :place
  has_many :employees, through: :allocations
  accepts_nested_attributes_for :allocations, allow_destroy: true

  def title
    self.room && self.department ? "#{self.room.title} | #{self.department.name}" : ""
  end
end
