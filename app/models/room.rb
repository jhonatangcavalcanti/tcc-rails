class Room < ApplicationRecord
  belongs_to :building
  belongs_to :room_type

  has_many :allocations, dependent: :destroy
  has_many :employees, through: :allocations
end
