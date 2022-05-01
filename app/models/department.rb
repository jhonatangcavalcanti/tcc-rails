class Department < ApplicationRecord
  belongs_to :department_type, inverse_of: :departments

  has_many :places, inverse_of: :department
  has_many :rooms, through: :places
  accepts_nested_attributes_for :places, allow_destroy: true

  validates :name, presence: true

  def title
    "#{self.name}"
  end

  def department_type_title
    "#{self.department_type.name}"
  end

  rails_admin do
    configure :department_type do
      inline_add false
      inline_edit false
    end
    configure :places do
      visible false
    end
  end
end
