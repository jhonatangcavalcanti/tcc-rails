class Employee < ApplicationRecord
  has_many :allocations, inverse_of: :employee
  accepts_nested_attributes_for :allocations, allow_destroy: true

  has_many :positions, inverse_of: :employee
  has_many :job_positions, through: :positions
  accepts_nested_attributes_for :positions, allow_destroy: true

  rails_admin do
    configure :positions do
      visible(false)
    end

    configure :job_positions do
      orderable(true) # only for multiselect widget currently. Will add the possibility to order blocks
      # configuration here
    end
  end
end
