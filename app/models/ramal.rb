class Ramal < ApplicationRecord
  has_many :allocation_ramals, inverse_of: :ramal, dependent: :destroy
  has_many :allocations, through: :allocation_ramals
  accepts_nested_attributes_for :allocation_ramals, allow_destroy: true

  validates :number, uniqueness: { case_sensitive: false }, presence: true

  def title
    self.number
  end

  rails_admin do
    show do
      include_all_fields
    end
    configure :allocation_ramals do
      visible false
    end
    configure :allocations do
      visible false
    end
  end
end
