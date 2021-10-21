class AllocationRole < ApplicationRecord
  has_many :allocations, inverse_of: :allocation_role
  accepts_nested_attributes_for :allocations, allow_destroy: true
end
