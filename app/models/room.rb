class Room < ApplicationRecord
  belongs_to :building

  has_many :places, inverse_of: :room
  has_many :departments, through: :places
  accepts_nested_attributes_for :places, allow_destroy: true

  validates :number, presence: true

  def title
    "#{self.number} - #{self.building_title}"
  end

  def building_title
    "#{self.building&.name}"
  end

  rails_admin do
    show do
      include_all_fields
    end
    configure :departments do
      visible false
    end
  end
end
