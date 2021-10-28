class Room < ApplicationRecord
  belongs_to :building

  has_many :places, inverse_of: :room
  has_many :departments, through: :places
  accepts_nested_attributes_for :places, allow_destroy: true

  def title
    self.number
  end
end
