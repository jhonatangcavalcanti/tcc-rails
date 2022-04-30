class Place < ApplicationRecord
  belongs_to :room, inverse_of: :places
  belongs_to :department, inverse_of: :places

  has_many :allocation_places, inverse_of: :place
  has_many :allocations, through: :allocation_places
  accepts_nested_attributes_for :allocation_places, allow_destroy: true

  def title
    self.room && self.department ? "#{self.room.title} | #{self.department.name}" : ""
  end

  def room_title
    self.room.title
  end

  def department_title
    self.department.title
  end
end
