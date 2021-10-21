class Room < ApplicationRecord
  belongs_to :building
  belongs_to :room_type
  belongs_to :department

  has_many :allocations, inverse_of: :room
  has_many :employees, through: :allocations
  accepts_nested_attributes_for :allocations, allow_destroy: true
end
