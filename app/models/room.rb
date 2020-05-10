class Room < ApplicationRecord
  belongs_to :building
  belongs_to :room_type

  has_and_belongs_to_many :employee
end
