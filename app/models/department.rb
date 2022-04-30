class Department < ApplicationRecord
  belongs_to :department_type, inverse_of: :departments

  has_many :places, inverse_of: :department
  has_many :rooms, through: :places
  accepts_nested_attributes_for :places, allow_destroy: true

  def title
    "#{self.department_type.name} | #{self.name}"
  end
end
