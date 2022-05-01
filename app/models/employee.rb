class Employee < ApplicationRecord
  belongs_to :job_position, inverse_of: :employees

  has_many :allocations, inverse_of: :employee
  accepts_nested_attributes_for :allocations, allow_destroy: true

  validates :name, :email, presence: true

  rails_admin do
    configure :job_position do
      inline_add false
      inline_edit false
    end
  end
end
