class AllocationRole < ApplicationRecord
  has_many :allocations, inverse_of: :allocation_role
  accepts_nested_attributes_for :allocations, allow_destroy: true

  rails_admin do
    show do
      include_all_fields
    end
    configure :allocations do
      visible false
    end
  end
end
